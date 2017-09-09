package site.yourdiary.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserArticle;
import site.yourdiary.domain.UserInfo;
import site.yourdiary.dto.UserInfoDto;
import site.yourdiary.exception.UpdateDuplicationException;
import site.yourdiary.exception.UpdateEmptyException;
import site.yourdiary.service.DisplayMessageService;
import site.yourdiary.service.UserLoginService;
import site.yourdiary.service.UserSpaceService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.List;
import java.util.Map;

import static site.yourdiary.cons.CommonConstant.*;

@Controller
@RequestMapping(value = "/user")
public class UserController extends BaseWeb {
    @Autowired
    private UserSpaceService userSpaceService;
    @Autowired
    private DisplayMessageService displayMessageService;

    @RequestMapping(value = "/homepage")
    public ModelAndView homepage(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("homepage");
        Map<String, String> homeInfoMap = displayMessageService.getHomeInfo();
        mav.addObject(HOME_INFO_MAP, homeInfoMap);

        return mav;
    }

    @RequestMapping(value = "/userSpace")
    public ModelAndView userSpace(HttpServletRequest request, HttpSession session, ModelAndView mav){
        User user = getSessionUser(request);
        if(user == null){
            session.setAttribute(REQUEST_PATH, "/user/userSpace");
            mav.setViewName("/login");
            return mav;
        }
        int userId = user.getUserId();
        UserInfo userInfo = userSpaceService.getUserInfobyUserId(userId);
        List<UserArticle> userArticleList = userSpaceService.getUserArticleById(userId);
        mav.setViewName("individualspace");
        mav.addObject(USER_ARTICLE_LIST, userArticleList);
        mav.addObject(USER_CONTEXT, user);
        mav.addObject(USER_INFO, userInfo);

        return mav;
    }

    @RequestMapping("/introduceChange")
    public ModelAndView updateUserInfo(ModelAndView mav){
        mav.setViewName("introduce_change");
        return mav;
    }

    @RequestMapping("/updateUser")
    public ModelAndView updateUser(HttpServletRequest request, ModelAndView mav){
        User user = getSessionUser(request);
        int userId = user.getUserId();
        /**
         * 字符空格会带来很大的问题，用.trim处理掉首尾的空格问题
         */
        String userName = request.getParameter("userName").trim();
        String userIntroduce = request.getParameter("userIntroduce").trim();
        String userEmail = request.getParameter("userEmail").trim();
        String password = request.getParameter("password").trim();
        UserInfoDto userInfoDto = new UserInfoDto(userName, userIntroduce, userEmail, password);

        try {
            userSpaceService.UpdateUser(userId, userInfoDto);
        } catch (UpdateEmptyException e) {
            System.out.println(e.getMessage());
            mav.addObject("ERROR", e.getMessage());
            mav.setViewName("/introduce_change");
            return mav;
        } catch (UpdateDuplicationException e) {
            System.out.println(e.getMessage());
            mav.addObject("ERROR", e.getMessage());
            mav.setViewName("/introduce_change");
            return mav;
        }
        mav.setViewName("update_success");
        //更新用户成功后要去除session域中过期的相关用户信息
        removeSessionUser(request);
        setSessionUser(request, userSpaceService.getUserByUserId(userId));
        return mav;
    }

}
