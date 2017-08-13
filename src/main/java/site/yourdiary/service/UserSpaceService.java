package site.yourdiary.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import site.yourdiary.dao.UserSpaceMapper;
import site.yourdiary.domain.UserInfo;

@Service
public class UserSpaceService {

    @Autowired
    private UserSpaceMapper userSpaceDao;

    public UserInfo getUserInfobyUserId(int userId){
       return userSpaceDao.getUserInfoByUserId(userId);
    }
}
