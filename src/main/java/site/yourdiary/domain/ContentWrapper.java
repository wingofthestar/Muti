package site.yourdiary.domain;

import java.util.List;

public class ContentWrapper extends BaseDomain{
    private UserArticle userArticle;
    private UserInfoWrapper userInfoWrapper;
    private List<ArticleCommentWrapper> articleCommentWrapperList;

    public ContentWrapper() {
    }

    public ContentWrapper(UserArticle userArticle, UserInfoWrapper userInfoWrapper, List<ArticleCommentWrapper>
            articleCommentWrapperList) {
        this.userArticle = userArticle;
        this.userInfoWrapper = userInfoWrapper;
        this.articleCommentWrapperList = articleCommentWrapperList;
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

    public List<ArticleCommentWrapper> getArticleCommentWrapperList() {
        return articleCommentWrapperList;
    }

    public void setArticleCommentWrapperList(List<ArticleCommentWrapper> articleCommentWrapperList) {
        this.articleCommentWrapperList = articleCommentWrapperList;
    }
}
