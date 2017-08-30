package site.yourdiary.domain;

public class ArticleCommentWrapper extends BaseDomain{
    private ArticleComment articleComment;
    private UserInfoWrapper userInfoWrapper;

    public ArticleCommentWrapper() {
    }

    public ArticleCommentWrapper(ArticleComment articleComment, UserInfoWrapper userInfoWrapper) {
        this.articleComment = articleComment;
        this.userInfoWrapper = userInfoWrapper;
    }

    public ArticleComment getArticleComment() {
        return articleComment;
    }

    public void setArticleComment(ArticleComment articleComment) {
        this.articleComment = articleComment;
    }

    public UserInfoWrapper getUserInfoWrapper() {
        return userInfoWrapper;
    }

    public void setUserInfoWrapper(UserInfoWrapper userInfoWrapper) {
        this.userInfoWrapper = userInfoWrapper;
    }
}
