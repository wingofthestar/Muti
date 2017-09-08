package site.yourdiary.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import site.yourdiary.domain.ArticleComment;
import site.yourdiary.domain.UserArticle;
import site.yourdiary.domain.UserInfoWrapper;
import site.yourdiary.dto.PublishArticleDto;

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

    //前期单元测试的问题，没有加上事务，导致单元测试的数据都写入数据库了，污染了数据库，需要进行改正
    @Test
    @Transactional
    @Rollback
    public void testupdateFavorNum(){
        dynamicDao.updateFavor(3, 1);
    }


    @Test
    @Transactional
    @Rollback
    public void testinsertArticle(){
        PublishArticleDto publishArticleDto = new PublishArticleDto(35, "只有我不在的街道", "&nbsp;&nbsp故事讲述了藤沼悟是一个三流漫画家，但是他\n" +
                "版权绘\n" +
                "版权绘(4张)\n" +
                "却拥有着名为“再上映”（可以穿越到事件发生之前的时间点，阻止事件发生，但失败了会一直重复）的能力。" +
                "某天，当回到家里的时候他发现了自己母亲遇害的一幕，并且自己被嫁祸为杀人凶手。就在这时候，由于再上映的关系，" +
                "他突然回到了18年前·小学五年级的时候，而这一刻他不但要拯救母亲，也要为了同学的安全而战。",
                "http://img.yourdiary.site/FsunwsLI2puwzmkoVfgXKkZ6gMRu");
        dynamicDao.insertArticle(publishArticleDto);
    }

    @Test
    @Transactional
    @Rollback
    public void testinsertArticleNoPic(){
        PublishArticleDto publishArticleDto = new PublishArticleDto(35, "只有我不在的街道", "&nbsp;&nbsp故事讲述了藤沼悟是一个三流漫画家，但是他\n" +
                "版权绘\n" +
                "版权绘(4张)\n" +
                "却拥有着名为“再上映”（可以穿越到事件发生之前的时间点，阻止事件发生，但失败了会一直重复）的能力。" +
                "某天，当回到家里的时候他发现了自己母亲遇害的一幕，并且自己被嫁祸为杀人凶手。就在这时候，由于再上映的关系，" +
                "他突然回到了18年前·小学五年级的时候，而这一刻他不但要拯救母亲，也要为了同学的安全而战。",
                "");
        dynamicDao.insertArticleNoPic(publishArticleDto);
    }
}
