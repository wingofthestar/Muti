package site.yourdiary.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * BaseController负责没有什么业务逻辑的页面跳转
 */
@Controller
public class BaseController {

    /*本来是用作通用跳转的，但是这样URL显的意义不够鲜明*/
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

    @RequestMapping(value = "showpage2")
    public String showpage2(){
        return "showpage2";
    }

    @RequestMapping(value = "showpage3")
    public String showpage3(){
        return "showpage3";
    }

//    @RequestMapping(value = "dynamic")
//    public String dynamic(){
//        return "dynamic";
//    }

}
