package site.yourdiary.dao;

import org.springframework.stereotype.Component;
import site.yourdiary.domain.ArticleComment;
import site.yourdiary.domain.UserArticle;
import site.yourdiary.domain.UserInfoWrapper;

import java.util.List;

@Component
public interface DynamicMapper {
    List<UserArticle> getAllArticle();

    List<ArticleComment> getAllComment(int articleId);

    UserInfoWrapper getWriter(int userId);

    UserInfoWrapper getCommenter(int commentUserId);

    UserArticle getArticleByArticleId(int article_id);

}
