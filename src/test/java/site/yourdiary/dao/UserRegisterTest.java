package site.yourdiary.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import site.yourdiary.domain.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:UserRegister-Spring-MyBatis.xml"})
public class UserRegisterTest {

    @Autowired
    private UserRegisterMapper userRegisterDao;

    @Test
    @Transactional
    @Rollback
    public void testQueryIfExitUserName(){
//        int result = userRegisterDao.queryIfExistUserName("崔希伟");
        int result = userRegisterDao.queryIfExistUserName("崔希");
        System.out.println(result);
    }

    @Test
    @Transactional
    @Rollback
    public void testQueryIfExitUserEmail(){
//        int result =userRegisterDao.queryIfExistUserEmail("admin@yourdiary.site");
        int result =userRegisterDao.queryIfExistUserEmail("admin@yourdiary");
        System.out.println(result);
    }

    @Test
    @Transactional
    @Rollback
    //添加@Transactional给单元测试添加事务管理
    public void testInsertUser(){
        User user = new User();
        user.setUserName("mig");
        user.setUserEmail("mig@gmail.com");
        user.setPassword("mima12");
        try {
            int result = userRegisterDao.insertUser(user);
        }catch (DuplicateKeyException e){
            e.printStackTrace();
        }
        System.out.println(user.getUserId());
        System.out.println(user.getUserName());
    }

    @Test
    @Transactional
    @Rollback
    public void testCreateUserInfo(){
        userRegisterDao.createUserInfo(2);
    }

}
