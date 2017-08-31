package site.yourdiary.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import site.yourdiary.domain.ArticleComment;
import site.yourdiary.domain.UserArticle;
import site.yourdiary.domain.UserInfoWrapper;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:Dynamic-Spring-Mybatis.xml"})
public class DynamicTest {

    @Autowired
    private DynamicMapper dynamicDao;

    @Test
    public void testGetAllArticles(){
       List<UserArticle> articleList=  dynamicDao.getAllArticle();
        for (UserArticle article:
             articleList) {
            System.out.println(article);
        }
    }

    @Test
    public void testGetAllComment(){
        List<ArticleComment> articleCommentList = dynamicDao.getAllComment(1);
        for (ArticleComment articleComment :
                articleCommentList) {
            System.out.println(articleComment);
        }
    }

    @Test
    public void testgetUserInforWrapper(){
        UserInfoWrapper userInfoWrapper = dynamicDao.getWriter(33);
        System.out.println(userInfoWrapper);
    }

    @Test
    public void testgetCommenter(){
        UserInfoWrapper userInfoWrapper = dynamicDao.getCommenter(35);
        System.out.println(userInfoWrapper);
    }

    @Test
    public void testgetArticleById(){
        UserArticle userArticle = dynamicDao.getArticleByArticleId(1);
        System.out.println(userArticle);

    }
}
