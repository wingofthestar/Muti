package site.yourdiary.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/user")
public class UserController extends BaseWeb {

    @RequestMapping(value = "/homepage")
    public String homepage(HttpServletRequest request, HttpServletResponse response){
        return "homepage";
    }

}
