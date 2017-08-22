package site.yourdiary.dao;


import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.annotation.Rollback;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserLoginLog;

import java.util.Date;

/**
 * UserLoginMapper的单元测试
 */
public class UserLoginTest {
    private ApplicationContext applicationContext;
    UserLoginMapper userLoginDao;

    @Before
    public void setUp(){
        applicationContext = new ClassPathXmlApplicationContext("classpath:Spring-MyBatis.xml");
        userLoginDao = (UserLoginMapper) applicationContext.getBean("userLoginMapper");
    }

    @Test
    public void testGetUserByUserName(){
        User user = userLoginDao.getUserByUserName("admin");
        System.out.println(user);
    }

    @Test
    public void testGetUserByEamil(){
        User user = userLoginDao.getUserByEmail("admin@yourdiary.site");
        System.out.println(user);
    }

    @Test
    @Rollback
    public void updateLastLogin(){
        int updateResult = userLoginDao.updateLastLogin("崔希伟",new Date(), "127.0.0.1");
        System.out.println(updateResult);
    }

    @Test
    public void insertLoginLog(){
        UserLoginLog loginLog = new UserLoginLog();
        loginLog.setUserId(3);
        loginLog.setIp("127.0.0.1");
        loginLog.setLoginDatetime(new Date());
        int insertResult = userLoginDao.insertLoginLog(loginLog);
        System.out.println(insertResult);
    }

}
