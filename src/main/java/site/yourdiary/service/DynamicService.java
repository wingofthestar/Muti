package site.yourdiary.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.yourdiary.dao.DynamicMapper;
import site.yourdiary.domain.*;

import java.util.ArrayList;
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
    public List<ContentWrapper> showContent(){
        List<ContentWrapper> contentList = new ArrayList<>();
        List<ArticleCommentWrapper> articleCommentWrapperList = new ArrayList<>();
//        Contents.put("Article", dynamicDao.getAllArticle());
//        Contents.put("Comment", dynamicDao.getAllComment());
        for (UserArticle userArticle : dynamicDao.getAllArticle()) {
            int userId = userArticle.getUserId();
            int articleId = userArticle.getArticleId();
            UserInfoWrapper writer = dynamicDao.getWriter(userId);
            List<ArticleComment> articleCommentList = dynamicDao.getAllComment(articleId);
            for(ArticleComment articleComment: articleCommentList){
                int commentUserId = articleComment.getCommentUserId();
                UserInfoWrapper commenter = dynamicDao.getCommenter(commentUserId);
                ArticleCommentWrapper articleCommentWrapper = new ArticleCommentWrapper(articleComment, commenter);
                articleCommentWrapperList.add(articleCommentWrapper);
            }

            ContentWrapper contentWrapper = new ContentWrapper(userArticle, writer, articleCommentWrapperList);
            contentList.add(contentWrapper);
        }
        return contentList;
    }


}
