package site.yourdiary.web;

import com.sun.org.apache.regexp.internal.RE;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserInfo;
import site.yourdiary.service.DynamicService;
import site.yourdiary.service.UserSpaceService;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
        dynamicService.updateArticleFavorNumber(articleId, articleFavorNumber);
        return "forward:/dynamic";
    }

}
