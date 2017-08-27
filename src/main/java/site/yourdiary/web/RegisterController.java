package site.yourdiary.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import site.yourdiary.exception.RegisterUserExitException;
import site.yourdiary.service.UserRegisterService;
import site.yourdiary.vo.RegisterInfo;

import javax.validation.Valid;

@Controller
public class RegisterController {

    @Autowired
    private UserRegisterService userRegisterService;

    @RequestMapping("/regist")
    public String register(@Valid RegisterInfo registerInfo, Errors errors, Model model){
        System.out.println(registerInfo);
//        System.out.println(registerInfo.getUserName().length());
        if (errors.hasErrors()){
            FieldError fieldError = errors.getFieldError();
            System.out.println("Code:" + fieldError.getCode() + ",Object:"
            + fieldError.getObjectName()+", field" + fieldError.getField());
            return "forward:/userlogin";
        }
        try {
            userRegisterService.registerUser(registerInfo);
        } catch (RegisterUserExitException e) {
            model.addAttribute("REGIST_ERROR", e.getMessage());
            return "login";
        }
        return "register_success";
    }
}
