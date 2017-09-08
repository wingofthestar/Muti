package site.yourdiary.service;

import com.sun.org.apache.bcel.internal.generic.PUSH;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.yourdiary.dao.DynamicMapper;
import site.yourdiary.domain.*;
import site.yourdiary.dto.PublishArticleDto;
import site.yourdiary.exception.PublishEmptyException;
import site.yourdiary.tools.EmptyUtil;
import site.yourdiary.vo.PublishInfo;

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
//        List<ArticleCommentWrapper> articleCommentWrapperList = new ArrayList<>();
//        Contents.put("Article", dynamicDao.getAllArticle());
//        Contents.put("Comment", dynamicDao.getAllComment());
        //获取所有Article信息
        for (UserArticle userArticle : dynamicDao.getAllArticle()) {
            int userId = userArticle.getUserId();
            int articleId = userArticle.getArticleId();
            //根据每个Article的userId获取对应的Writer信息
            UserInfoWrapper writer = dynamicDao.getWriter(userId);
            //评论信息(articleComment)和评论者信息(commenter)的包装列表
            List<ArticleCommentWrapper> articleCommentWrapperList = new ArrayList<>();
            //根据每个Artcile的articleId获取对应的所有评论信息(List)
            List<ArticleComment> articleCommentList = dynamicDao.getAllComment(articleId);
            //从所有评论信息中，拆分出每一个评论信息，组合评论者的信息进行包装
            for(ArticleComment articleComment: articleCommentList){
                int commentUserId = articleComment.getCommentUserId();
                //根据每个评论信息的commentUserId获取对应的评论者信息
                UserInfoWrapper commenter = dynamicDao.getCommenter(commentUserId);
                ArticleCommentWrapper articleCommentWrapper = new ArticleCommentWrapper(articleComment, commenter);

                articleCommentWrapperList.add(articleCommentWrapper);
            }

            ContentWrapper contentWrapper = new ContentWrapper(userArticle, writer, articleCommentWrapperList);
            contentList.add(contentWrapper);
        }
        return contentList;
    }

    @Transactional
    public UserArticle showArticle(int articleId){
        return dynamicDao.getArticleByArticleId(articleId);
    }

    @Transactional
    public UserInfoWrapper getWriter(int articleId){
        int userId = dynamicDao.getArticleByArticleId(articleId).getUserId();
        return dynamicDao.getWriter(userId);
    }

    @Transactional
    public int updateArticleFavorNumber(int articleId, int articleFavorNumber){
        return dynamicDao.updateFavor(articleId, articleFavorNumber);
    }

    @Transactional
    public void publishArticle(PublishArticleDto publishArticleDto) throws PublishEmptyException {
        if(EmptyUtil.IsEmptyOrNull(publishArticleDto.getTitle().trim())){
            throw new PublishEmptyException("标题不能为空");
        }
        if(EmptyUtil.IsEmptyOrNull(publishArticleDto.getContent().trim())){
            throw new PublishEmptyException("文章内容不能为空");
        }
        /**
         * 发文章时可以带图片，也不易不带图片
         */
        if(EmptyUtil.IsEmptyOrNull(publishArticleDto.getFilePath().trim())){
            dynamicDao.insertArticleNoPic(publishArticleDto);
        }else{
            dynamicDao.insertArticle(publishArticleDto);
        }
    }

}
