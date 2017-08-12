package site.yourdiary.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.yourdiary.dao.UserMapper;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserLoginLog;
import site.yourdiary.exception.NoUserException;

import java.util.Date;

@Service
public class UserService {

    @Autowired
    private UserMapper userDao;

    /**
     * 通过userName和email获取用户信息的方式后期得重构
     * @param userName
     * @return
     * @throws NoUserException
     */

    @Transactional
    public User getUserByUserName(String userName) throws NoUserException {
        User user = userDao.getUserByUserName(userName);
        if (user == null){
            throw new NoUserException("用户不存在");
        }else {
            return user;
        }
    }

    @Transactional
    public User getUserByEamil(String email) throws NoUserException {
        User user = userDao.getUserByEmail(email);
        if (user == null){
            throw new NoUserException("用户不存在");
        }else {
            return user;
        }
    }

    @Transactional
    public void loginSuccessful(User user, String lastIp){
        UserLoginLog userLoginLog = new UserLoginLog();
        Date lastVisit = new Date();
        //更新用户上次登录日期和Ip
        userDao.updateLastLogin(user.getUserName(), lastVisit,lastIp);

        userLoginLog.setIp(lastIp);
        userLoginLog.setLoginDatetime(lastVisit);
        userLoginLog.setUserId(user.getUserId());
        //添加用户登录日志
        userDao.insertLoginLog(userLoginLog);
    }

}
