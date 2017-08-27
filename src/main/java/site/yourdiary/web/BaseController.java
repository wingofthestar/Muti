package site.yourdiary.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {

//    @RequestMapping(value = "redirect/{str}", method = RequestMethod.GET)
//    public String redirect(@PathVariable("str") String str){
//        return str;
//    }

    @RequestMapping(value = "index")
    public String homepage(){
        return "forward:/user/homepage";
    }

    @RequestMapping(value = "userlogin")
    public String login(){
        return "login";
    }

    @RequestMapping(value = "showpage")
    public String showpage(){
        return "showpage";
    }

}
