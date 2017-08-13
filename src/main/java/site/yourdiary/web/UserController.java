package site.yourdiary.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserInfo;
import site.yourdiary.service.UserSpaceService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static site.yourdiary.cons.CommonConstant.USER_CONTEXT;
import static site.yourdiary.cons.CommonConstant.USER_INFO;

@Controller
@RequestMapping(value = "/user")
public class UserController extends BaseWeb {
    @Autowired
    private UserSpaceService userSpaceService;

    @RequestMapping(value = "/homepage")
    public String homepage(HttpServletRequest request, HttpServletResponse response){
        return "homepage";
    }

    @RequestMapping(value = "/userSpace")
    public ModelAndView userSpace(HttpServletRequest request, ModelAndView mav){
        User user = getSessionUser(request);
        UserInfo userInfo = userSpaceService.getUserInfobyUserId(user.getUserId());
        mav.setViewName("individualspace");
        mav.addObject(USER_CONTEXT, user);
        mav.addObject(USER_INFO, userInfo);

        return mav;
    }


}
