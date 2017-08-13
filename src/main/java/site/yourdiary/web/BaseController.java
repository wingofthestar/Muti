package site.yourdiary.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {

    @RequestMapping(value = "redirect/{str}", method = RequestMethod.GET)
    private String redirect(@PathVariable("str") String str){
        return str;
    }

    @RequestMapping(value = "index")
    private String homepage(){
        return "redirect:/user/homepage";
    }
}
