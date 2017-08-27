package site.yourdiary.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import site.yourdiary.domain.User;
import site.yourdiary.exception.LoginNoUserException;
import site.yourdiary.service.UserLoginService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static site.yourdiary.cons.CommonConstant.REQUEST_PATH;

@Controller
public class LoginAndLogoutController extends BaseWeb {

    @Autowired
    private UserLoginService userLoginService;

    @RequestMapping(value = "login", method = {RequestMethod.POST, RequestMethod.GET})
    public String login(HttpServletRequest request, @RequestParam(required = false) String email,
                        @RequestParam(required = false) String password, HttpSession session, Model model) {
        User user;
        //当Session域中没有用户信息时
        if(getSessionUser(request) == null) {

            //表单信息不为空的话
            if(email != null && password != null && email != "" && password != "") {

                //正则表达式判断输入的用户验证信息时通过用户名还是通过邮箱验证的
                String check = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
                Pattern regex = Pattern.compile(check);
                Matcher matcher = regex.matcher(email);
                boolean isMatched = matcher.matches();
                if (isMatched) {
                    try {
                        user = userLoginService.getUserByEamil(email);
                    } catch (LoginNoUserException e) {
                        System.out.println(e.getMessage());
                        model.addAttribute("LOGIN_ERROR", e.getMessage());
                        return "login";
                    }
                } else {
                    try {
                        user = userLoginService.getUserByUserName(email);
                    } catch (LoginNoUserException e) {
                        System.out.println(e.getMessage());
                        model.addAttribute("LOGIN_ERROR", e.getMessage());
                        return "login";
                    }
                }

                if (password.equals(user.getPassword())) {
                    //更新用户登录日志
                    userLoginService.loginSuccessful(user, request.getRemoteAddr());
                    setSessionUser(request, user);

                    //判断用户账号是否被封
                    if(!user.isFlag()){

                        //判断是否是管理员用户
                        if(user.isUserType()){
                            return "redirect:/admin/manage";
                        }else{
                            //将相关用户信息放到Session中然后转发
                            if(session.getAttribute(REQUEST_PATH) != null) {
                                return "redirect:" + session.getAttribute(REQUEST_PATH);
                            }
                            return "redirect:/user/homepage";

                        }

                    }
                    //用户被封号
                    //用户登录验证失败重定向到登录页面
                    //表单信息为空的话，返回错误信息，待重构
                    model.addAttribute("LOGIN_ERROR", "用户账号被封禁");
                    removeSessionUser(request);
                    return "login";

                }else {
                    //用户登录验证失败重定向到登录页面
                    model.addAttribute("LOGIN_ERROR", "用户名密码错误");
                    removeSessionUser(request);
                    return "login";
                }

            }else{
                //表单信息为空的话，返回错误信息，待重构
                model.addAttribute("LOGIN_ERROR", "表单信息不完整");
                return "login";
            }

        }else{
            return "forward:/user/homepage";
        }

    }


    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        removeSessionUser(request);
        return "logout_success";
    }

}
