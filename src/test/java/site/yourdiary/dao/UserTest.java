package site.yourdiary.dao;


import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import site.yourdiary.domain.User;

public class UserTest {
    private ApplicationContext applicationContext;

    @Before
    public void setUp(){
        applicationContext = new ClassPathXmlApplicationContext("classpath:Spring-MyBatis.xml");
    }

    @Test
    public void testUserMapper(){
        UserMapper userDao = (UserMapper) applicationContext.getBean("userMapper");
        User user = userDao.getUserByUserName("崔希伟");
        System.out.println(user);
    }

}
