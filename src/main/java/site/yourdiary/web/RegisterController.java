package site.yourdiary.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import site.yourdiary.exception.RegisterUserExitException;
import site.yourdiary.service.UserRegisterService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class RegisterController {

    @Autowired
    private UserRegisterService userRegisterService;

    @RequestMapping("/regist")
    public String register(HttpServletRequest request, HttpServletResponse response, RegisterInfo registerInfo) throws RegisterUserExitException {
        System.out.println(registerInfo);
        userRegisterService.registerUser(registerInfo);
        return "register_success";
    }
}
