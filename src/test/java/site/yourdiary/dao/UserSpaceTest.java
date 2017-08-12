package site.yourdiary.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import site.yourdiary.domain.UserInfo;

/**
 * UserSpaceMapper的单元测试
 */

@RunWith(SpringJUnit4ClassRunner.class)
/**
 * 单独加载测试配置文件
 */
@ContextConfiguration(locations = {"classpath:UserSpace-Spring-MyBatis.xml"})
public class UserSpaceTest {

    @Autowired
    private UserSpaceMapper userSpaceDao;

    @Test
    public void testgetUserInfoByUserId(){
       UserInfo userInfo = userSpaceDao.getUserInfoByUserId(1);
        System.out.println(userInfo);
    }
}
