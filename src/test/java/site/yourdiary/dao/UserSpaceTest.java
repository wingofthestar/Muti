package site.yourdiary.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserArticle;
import site.yourdiary.domain.UserInfo;

import java.util.List;

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


    /**
     * 更新userInfo或user存在都为空则出错bug,需要在前端进行控制或service层进行控制
     */
    @Test
    public void testUpdateUserInfobyUserId(){
        String photo = null;
        //对动态SQL可能出现的所有情况进行测试
//        int result = userSpaceDao.updateUserInfoByUserId(1,photo,"你好，世界");
//        int result = userSpaceDao.updateUserInfoByUserId(1,"http://img.yourdiary.site/170429pic1.png","");
        int result = userSpaceDao.updateUserInfoByUserId(33,"http://img.yourdiary.site/170429pic2.png","为了更美好的生活");
//        int result = userSpaceDao.updateUserInfoByUserId(1, "", "");
        System.out.println(result);
    }

    @Test
    public void testUpdateUserByUserId(){
        String userName = "崔希伟";
        String userEmail = "";
        String password = "";
        int result = userSpaceDao.updateUserByUserId(33, userName, userEmail, password);
        System.out.println("==============" + result);
    }

    @Test
    public void testgetUserByUserId(){
        User u = userSpaceDao.getUserByUserId(33);
    }

    @Test
    public void testgetArticleByUserId(){
        List<UserArticle> userArticleList = userSpaceDao.getArticleByUserId(33);
        for (UserArticle article : userArticleList){
            System.out.println(article);
        }
    }
}
