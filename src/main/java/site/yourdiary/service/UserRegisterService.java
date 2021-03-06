package site.yourdiary.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.yourdiary.dao.UserRegisterMapper;
import site.yourdiary.domain.User;
import site.yourdiary.exception.RegisterUserExitException;
import site.yourdiary.vo.RegisterInfo;

@Service
public class UserRegisterService {
    @Autowired
    private UserRegisterMapper userRegisterDao;


    @Transactional
    public void registerUser(RegisterInfo registerInfo) throws RegisterUserExitException {

        /**
         * 用户输出，需要注意字符空格问题
         */
        //检查用户名和用户Email是否已经被注册
        int checkUserName = userRegisterDao.queryIfExistUserName(registerInfo.getUserName().trim());
        int checkUserEmail = userRegisterDao.queryIfExistUserEmail(registerInfo.getUserEmail().trim());

        if(checkUserEmail > 0 && checkUserName == 0){
            throw new RegisterUserExitException("Email已经被注册");
        }
        if(checkUserEmail == 0 && checkUserName > 0 ){
            throw new RegisterUserExitException("用户名已经被注册");
        }

        if (checkUserEmail > 0 && checkUserName > 0 ){
            throw new RegisterUserExitException("Emial和用户名已经被注册");
        }
//        if(checkUserEmail == 0 && checkUserName == 0 ) {
            //插入用户注册信息
            User user = new User();
            user.setUserName(registerInfo.getUserName().trim());
            user.setUserEmail(registerInfo.getUserEmail().trim());
            user.setPassword(registerInfo.getPassword().trim());
            userRegisterDao.insertUser(user);

            //生成对应的用户信息
            userRegisterDao.createUserInfo(user.getUserId());
//        }
    }

}
