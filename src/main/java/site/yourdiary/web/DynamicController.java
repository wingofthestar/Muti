package site.yourdiary.web;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;
import com.sun.org.apache.regexp.internal.RE;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserInfo;
import site.yourdiary.dto.PublishArticleDto;
import site.yourdiary.exception.PublishEmptyException;
import site.yourdiary.service.DynamicService;
import site.yourdiary.service.UserSpaceService;
import site.yourdiary.tools.EmptyUtil;
import site.yourdiary.vo.PublishInfo;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import static site.yourdiary.cons.CommonConstant.REQUEST_PATH;
import static site.yourdiary.cons.CommonConstant.USER_CONTEXT;
import static site.yourdiary.cons.CommonConstant.USER_INFO;


/**
 * 公共动态的Controlelr
 */
@Controller
public class DynamicController extends BaseWeb{

    @Autowired
    private DynamicService dynamicService;

    @Autowired
    private UserSpaceService userSpaceService;

    @RequestMapping(value = "dynamic")
    public ModelAndView showDynamic(HttpServletRequest request, HttpSession session){
        ModelAndView mav = new ModelAndView();
        User user = getSessionUser(request);
        if(user == null){
            session.setAttribute(REQUEST_PATH, "/dynamic");
            mav.setViewName("/login");
            return mav;
        }
        mav.setViewName("dynamic");
        mav.addObject("CONTENT_LIST",dynamicService.showContent());
        UserInfo userInfo = userSpaceService.getUserInfobyUserId(user.getUserId());
        mav.addObject(USER_CONTEXT, user);
        mav.addObject(USER_INFO, userInfo);
        return mav;
    }

    @RequestMapping(value = "article/{id}", method = RequestMethod.GET)
    public ModelAndView showArticle(HttpServletRequest httpServletRequest, @PathVariable("id") int articleId){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("article");
        mav.addObject("ARTICLE", dynamicService.showArticle(articleId));
        mav.addObject("WRITTER", dynamicService.getWriter(articleId));
        return mav;
    }

    @RequestMapping(value = "favor", method = RequestMethod.POST)
    public String  favor( @Param("articleId") int articleId, @Param("articleFavorNumber") int articleFavorNumber){
        articleFavorNumber = articleFavorNumber + 1;
        dynamicService.articleFavor(articleId, articleFavorNumber);
        return "forward:/dynamic";
    }

    //valid校验还没有对接
    @RequestMapping("/publish/article")
    public ModelAndView publshArticle(HttpServletRequest request, PublishInfo publishInfo, ModelAndView mav){
        User user = getSessionUser(request);
        MultipartFile pic = publishInfo.getPic();
        String filePath = "";
        if(pic.getSize() != 0){
             String fileName = pic.getOriginalFilename();
             /**
              * 图片上传托管在七牛上
              */
             /*-----------------------------*/
             //构造一个带指定Zone对象的配置类
             Configuration cfg = new Configuration(Zone.zone0());
             //...其他参数参考类注释
             UploadManager uploadManager = new UploadManager(cfg);
            //...生成上传凭证，然后准备上传
            String accessKey = "WJGPzYRdPE-JXHu_iIsADu54Ws1SoCE1EHdxYl7m";
            String secretKey = "Nad_ek5QSXSLhBKO-nEXIOWekInIPgmxjBTDKqvt";
            String bucket = "picture";
            //默认不指定key的情况下，以文件内容的hash值作为文件名
            String key = null;
            try {
//            byte[] uploadBytes = "hello qiniu cloud".getBytes("utf-8");
//            ByteArrayInputStream byteInputStream=new ByteArrayInputStream(uploadBytes);
            InputStream inputStream = pic.getInputStream();
            Auth auth = Auth.create(accessKey, secretKey);
            String upToken = auth.uploadToken(bucket);
            try {
                Response response = uploadManager.put(inputStream,key,upToken,null, null);
                //解析上传成功的结果
                DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);

                //获取上传到七牛云的路径名称
                filePath = "http://img.yourdiary.site/" + putRet.key;

                System.out.println(putRet.key);
                System.out.println(putRet.hash);
            } catch (QiniuException ex) {
                Response r = ex.response;
                System.err.println(r.toString());
                try {
                    System.err.println(r.bodyString());
                } catch (QiniuException ex2) {
                    //ignore
                }
            }
            } catch (UnsupportedEncodingException ex) {
                //ignore
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        /*-----------------------------*/
        PublishArticleDto publishArticleDto = new PublishArticleDto();
        publishArticleDto.setUserId(user.getUserId());
        publishArticleDto.setTitle(publishInfo.getTitle());
        publishArticleDto.setContent(publishInfo.getContent());
        publishArticleDto.setFilePath(filePath);
        try {
            dynamicService.publishArticle(publishArticleDto);
        } catch (PublishEmptyException e) {
            mav.addObject("ERROR", e.getMessage());
            mav.setViewName("dynamic");
            return mav;
        }
        mav.setViewName("redirect:/dynamic");
        return mav;
    }

    @RequestMapping("/publish/reply")
    public ModelAndView reply(HttpServletRequest request, ModelAndView mav){
        mav.setViewName("redirect:/dynamic");
        User user = getSessionUser(request);
        int userId = user.getUserId();
        int articleId = Integer.valueOf(request.getParameter("articleId"));
        String comment = request.getParameter("replyText");
        dynamicService.publishComment(articleId, userId, comment);
        return mav;
    }

}
