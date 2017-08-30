package site.yourdiary.web;

import site.yourdiary.domain.User;

import javax.servlet.http.HttpServletRequest;

import static site.yourdiary.cons.CommonConstant.USER_CONTEXT;

/**
 * 用户的相关信息的Session域操作，用作部分Controller的基类
 */
public class BaseWeb {

    public static final String ERROR_MEG_KEY = "ERROR_MSG";
//    public static final String USER_CONTEXT = "USER_CONTEXT";

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

    /**
     * 将用户对象从Session中移除
     */
    public void removeSessionUser(HttpServletRequest request){
        request.getSession().removeAttribute(USER_CONTEXT);
    }

}
