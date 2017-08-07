package site.yourdiary.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import site.yourdiary.dao.UserMapper;
import site.yourdiary.domain.User;
import site.yourdiary.exception.NoUserException;

@Service
public class UserService {

    @Autowired
    private UserMapper userDao;

    public User getUserByUserName(String userName) throws NoUserException {
        User user = userDao.getUserByUserName(userName);
        if (user == null){
//            throw new Exception();
            throw new NoUserException("用户不存在");
        }else {
            return user;
        }
    }
}
