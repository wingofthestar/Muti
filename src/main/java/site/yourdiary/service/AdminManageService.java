package site.yourdiary.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.yourdiary.dao.AdminUpdateMessageMapper;
import site.yourdiary.dao.AdminUserManageMapper;
import site.yourdiary.domain.User;

import java.util.List;

@Service
public class AdminManageService {

    @Autowired
    private AdminUserManageMapper adminUserManageDao;
    @Autowired
    private AdminUpdateMessageMapper adminUpdateMessageDao;

    @Transactional
    public List<User> listAllUser(){
        List<User>  userList = adminUserManageDao.getAllUserAccount();
        return userList;
    }

    @Transactional
    public void sethonor(String userName){
        adminUserManageDao.sethonor(userName);
    }

    @Transactional
    public void disSethonor(String userName){
        adminUserManageDao.disSethonor(userName);
    }

    @Transactional
    public int updateMessage(int textId, String homeText){
        int result = adminUpdateMessageDao.updateMessage(textId, homeText);
        return result;
    }
}
