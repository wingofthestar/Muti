package site.yourdiary.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserInfo;
import site.yourdiary.service.DisplayMessageService;
import site.yourdiary.service.UserSpaceService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
            mav.setViewName("redirect:/redirect/login");
            return mav;
        }
        UserInfo userInfo = userSpaceService.getUserInfobyUserId(user.getUserId());
        mav.setViewName("individualspace");
        mav.addObject(USER_CONTEXT, user);
        mav.addObject(USER_INFO, userInfo);

        return mav;
    }


}
