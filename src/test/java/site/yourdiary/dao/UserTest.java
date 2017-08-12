package site.yourdiary.dao;


import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.annotation.Rollback;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserLoginLog;

import java.util.Date;


public class UserTest {
    private ApplicationContext applicationContext;
    UserMapper userDao;

    @Before
    public void setUp(){
        applicationContext = new ClassPathXmlApplicationContext("classpath:Spring-MyBatis.xml");
        userDao = (UserMapper) applicationContext.getBean("userMapper");
    }

    @Test
    public void testGetUserByUserName(){
        User user = userDao.getUserByUserName("崔希伟");
        System.out.println(user);
    }

    @Test
    public void testGetUserByEamil(){
        User user = userDao.getUserByEmail("admin@yourdiary.site");
        System.out.println(user);
    }

    @Test
    public void updateLastLogin(){
        int updateResult = userDao.updateLastLogin("崔希伟",new Date(), "127.0.0.1");
        System.out.println(updateResult);
    }

    @Test
    @Rollback(true)
    public void insertLoginLog(){
        UserLoginLog loginLog = new UserLoginLog();
        loginLog.setUserId(3);
        loginLog.setIp("127.0.0.2");
        loginLog.setLoginDatetime(new Date());
        int insertResult = userDao.insertLoginLog(loginLog);
        System.out.println(insertResult);
    }

}
