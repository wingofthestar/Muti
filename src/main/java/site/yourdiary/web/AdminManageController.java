package site.yourdiary.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import site.yourdiary.domain.User;
import site.yourdiary.service.AdminManageService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

import static site.yourdiary.cons.CommonConstant.USER_LIST;

@Controller
@RequestMapping("/admin")
public class AdminManageController {

    @Autowired
    private AdminManageService adminManageService;

    @RequestMapping("/manage")
    public ModelAndView forwardAdmin(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("admin");
        List<User> userList = adminManageService.listAllUser();
        mav.addObject(USER_LIST, userList);
        return mav;
    }
}
