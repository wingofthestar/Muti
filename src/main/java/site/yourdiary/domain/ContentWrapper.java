package site.yourdiary.domain;

import java.util.List;

public class ContentWrapper extends BaseDomain{
    private UserArticle userArticle;
    private UserInfoWrapper userInfoWrapper;
    private List<ArticleComment> articleCommentList;

    public ContentWrapper() {
    }

    public ContentWrapper(UserArticle userArticle, UserInfoWrapper userInfoWrapper, List<ArticleComment> articleCommentList) {
        this.userArticle = userArticle;
        this.userInfoWrapper = userInfoWrapper;
        this.articleCommentList = articleCommentList;
    }

    public UserArticle getUserArticle() {
        return userArticle;
    }

    public void setUserArticle(UserArticle userArticle) {
        this.userArticle = userArticle;
    }

    public UserInfoWrapper getUserInfoWrapper() {
        return userInfoWrapper;
    }

    public void setUserInfoWrapper(UserInfoWrapper userInfoWrapper) {
        this.userInfoWrapper = userInfoWrapper;
    }

    public List<ArticleComment> getArticleCommentList() {
        return articleCommentList;
    }

    public void setArticleCommentList(List<ArticleComment> articleCommentList) {
        this.articleCommentList = articleCommentList;
    }
}
