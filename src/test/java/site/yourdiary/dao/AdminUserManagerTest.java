package site.yourdiary.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import site.yourdiary.domain.User;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:AdminUserManager-Spring-MyBatis.xml"})
public class AdminUserManagerTest {
    @Autowired
    private AdminUserManageMapper adminUserManageDao;

    @Test
    @Transactional
    @Rollback
    public void testGetAllUserAccount(){
        List<User> userList = new ArrayList();
        userList = adminUserManageDao.getAllUserAccount();
        for (User u: userList) {
            System.out.println(u);
            System.out.println(u.isFlag());
        }
    }

    @Test
    @Transactional
    @Rollback
    public void testSethonor(){
        int result = adminUserManageDao.sethonor("崔希伟");
    }


    @Test
    @Transactional
    @Rollback
    public void testDisSethonor(){
        int result = adminUserManageDao.disSethonor("崔希伟");
    }
}
