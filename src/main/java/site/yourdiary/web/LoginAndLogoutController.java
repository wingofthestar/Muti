package site.yourdiary.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import site.yourdiary.domain.User;
import site.yourdiary.exception.NoUserException;
import site.yourdiary.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
public class LoginAndLogoutController extends BaseWeb {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "login", method = {RequestMethod.POST, RequestMethod.GET})
    public String login(HttpServletRequest request, @RequestParam(required = false) String email, @RequestParam(required = false) String password) throws NoUserException {
        User user;

        //当Session域中没有用户信息时
        if(getSessionUser(request) == null) {

            //表单信息不为空的话
            if(email != null && password != null) {

                //正则表达式判断输入的用户验证信息时通过用户名还是通过邮箱验证的
                String check = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
                Pattern regex = Pattern.compile(check);
                Matcher matcher = regex.matcher(email);
                boolean isMatched = matcher.matches();
                if (isMatched) {
                    user = userService.getUserByEamil(email);
                } else {
                    user = userService.getUserByUserName(email);
                }

                if (password.equals(user.getPassword())) {
                    //更新用户登录日志
                    userService.loginSuccessful(user, request.getRemoteAddr());

                    //将相关用户信息放到Session中然后转发
                    setSessionUser(request, user);
                    return "forward:/user/homepage";
                } else {
                    //用户登录验证失败重定向到登录页面
                    return "redirect:/redirect/login";
                }
            }else{
                //表单信息为空的话，返回错误信息，待重构
                return "redirect:/redirect/login";
            }

        }else{
            return "forward:/user/homepage";
        }

    }


    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        removeSessionUser(request);
        return "redirect:/redirect/login";
    }

}
