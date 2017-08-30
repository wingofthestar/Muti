package site.yourdiary.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import site.yourdiary.domain.UserArtcle;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:Dynamic-Spring-Mybatis.xml"})
public class DynamicTest {

    @Autowired
    private DynamicMapper dynamicDao;

    @Test
    public void testGetAllArtcles(){
       List<UserArtcle> articleList=  dynamicDao.getAllArticle();
        for (UserArtcle artcle:
             articleList) {
            System.out.println(artcle);
        }
    }
}
