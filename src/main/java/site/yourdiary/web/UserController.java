package site.yourdiary.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import site.yourdiary.domain.User;
import site.yourdiary.exception.NoUserException;
import site.yourdiary.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/tologin")
    public String toLogin(){
        return "login";
    }



    @RequestMapping(value = "/login")
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("home");
        try {
            User user = userService.getUserByUserName(request.getParameter("userName"));
            mav.addObject("userName", user.getUserName());
        } catch (NoUserException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return mav;
    }

}
