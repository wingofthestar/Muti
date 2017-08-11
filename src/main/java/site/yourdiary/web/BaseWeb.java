package site.yourdiary.web;

import site.yourdiary.domain.User;

import javax.servlet.http.HttpServletRequest;

/**
 * Controller的基类
 */
public class BaseWeb {

    public static final String ERROR_MEG_KEY = "ERROR_MSG";
    public static final String USER_CONTEXT = "USER_CONTEXT";

    /**
     * 获取保存在Session中的用户对象
     * @param request
     * @return
     */
    public User getSessionUser(HttpServletRequest request){
        return (User) request.getSession().getAttribute(USER_CONTEXT);
    }

    /**
     * 保存用户对象到Session中
     * @param request
     * @param user
     */
    public void setSessionUser(HttpServletRequest request, User user){
        request.getSession().setAttribute(USER_CONTEXT, user);
    }


}
