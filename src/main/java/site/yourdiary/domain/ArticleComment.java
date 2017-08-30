package site.yourdiary.domain;

public class ArticleComment extends BaseDomain {
    private int articleCommentId;
    private int articleId;
    private String articleCommentContent;
    private int commentUserId;

    public int getCommentUserId() {
        return commentUserId;
    }

    public void setCommentUserId(int commentUserId) {
        this.commentUserId = commentUserId;
    }

    public int getArticleCommentId() {
        return articleCommentId;
    }

    public void setArticleCommentId(int articleCommentId) {
        this.articleCommentId = articleCommentId;
    }

    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    public String getArticleCommentContent() {
        return articleCommentContent;
    }

    public void setArticleCommentContent(String articleCommentContent) {
        this.articleCommentContent = articleCommentContent;
    }
}
