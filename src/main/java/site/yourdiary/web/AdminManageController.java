package site.yourdiary.web;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import site.yourdiary.domain.User;
import site.yourdiary.service.AdminManageService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

import static site.yourdiary.cons.CommonConstant.SEARCH_RESULT;
import static site.yourdiary.cons.CommonConstant.USER_LIST;

@Controller
@RequestMapping("/admin")
public class AdminManageController {

    @Autowired
    private AdminManageService adminManageService;

    @RequestMapping(value = "/manage", method = RequestMethod.GET)
    public ModelAndView forwardAdmin(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("admin_user");
        List<User> userList = adminManageService.listAllUser();
//        session.setAttribute(USER_LIST, userList);
        mav.addObject(USER_LIST, userList);
        return mav;
    }

    @RequestMapping(value = "/manage", method = RequestMethod.POST)
    public String userCountManage(@Param("userName") String userName, @Param("flag") boolean flag){
        if(flag){
            adminManageService.sethonor(userName);
        }else{
            adminManageService.disSethonor(userName);
        }

        return "redirect:/admin/manage";
    }

    @RequestMapping(value = "/search")
    public ModelAndView searchByUserName(HttpServletRequest request,
                                 @Param("userName") String userName){
        ModelAndView mav = new ModelAndView();
       User u = adminManageService.SearchByUserName(userName);
       mav.addObject(SEARCH_RESULT, u);
       mav.setViewName("admin_user");
       List<User> userList = adminManageService.listAllUser();
       mav.addObject(USER_LIST, userList);
       return mav;
    }

    @RequestMapping("/updatemessage")
    public String UpdateMessage(@Param("textId") int textId, @Param("homeText") String homeText){
        if(homeText != "" && homeText != null){
            adminManageService.updateMessage(textId, homeText);
        }
        return "admin_message";

    }

    @RequestMapping("message")
    public String Message(){
        return "admin_message";
    }
}
