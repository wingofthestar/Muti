package site.yourdiary.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.yourdiary.dao.DynamicMapper;
import site.yourdiary.domain.ArticleComment;
import site.yourdiary.domain.ContentWrapper;
import site.yourdiary.domain.UserArticle;
import site.yourdiary.domain.UserInfoWrapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DynamicService {
    private DynamicMapper dynamicDao;

    @Autowired
    public void setDynamicDao(DynamicMapper dynamicDao) {
        this.dynamicDao = dynamicDao;
    }

    @Transactional
    public Map showContent(){
        Map Contents = new HashMap();
//        Contents.put("Article", dynamicDao.getAllArticle());
//        Contents.put("Comment", dynamicDao.getAllComment());
        for (UserArticle userArticle : dynamicDao.getAllArticle()) {
            int userId = userArticle.getUserId();
            int articleId = userArticle.getArticleId();
            UserInfoWrapper writer = dynamicDao.getWriter(userId);
            List<ArticleComment> articleCommentList = dynamicDao.getAllComment(articleId);
            ContentWrapper contentWrapper = new ContentWrapper(userArticle, writer, articleCommentList);
            Contents.put("Content", contentWrapper);
        }
        return Contents;
    }


}
