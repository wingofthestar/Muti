package site.yourdiary.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;
import site.yourdiary.dao.UserRegisterMapper;
import site.yourdiary.domain.User;
import site.yourdiary.exception.RegisterUserExitException;

@Service
public class UserRegisterService {
    @Autowired
    private UserRegisterMapper userRegisterDao;

    public void insertUser() throws RegisterUserExitException {
        User user = new User();
        user.setUserName("mig");
        user.setUserEmail("mig@gmail.com");
        user.setPassword("mima12");
        try{
            userRegisterDao.insertUser(user);
        }catch (DuplicateKeyException e){
            throw new RegisterUserExitException("用户名或用户邮箱已经被注册");
        }

    }
}
