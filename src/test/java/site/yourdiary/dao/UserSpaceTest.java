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
    public void testGetUserInfoByUserId(){
       UserInfo userInfo = userSpaceDao.getUserInfoByUserId(33);
        System.out.println(userInfo);
    }

    @Test
    public void testUpdateUserInfobyUserId(){
        String photo = null;
        //对动态SQL可能出现的所有情况进行测试
//        int result = userSpaceDao.updateUserInfoByUserId(1,photo,"你好，世界");
//        int result = userSpaceDao.updateUserInfoByUserId(1,"http://img.yourdiary.site/170429pic1.png","");
        int result = userSpaceDao.updateUserInfoByUserId(1,"http://img.yourdiary.site/170429pic2.png","为了更美好的生活");
        System.out.println(result);
    }
}
