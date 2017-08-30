package site.yourdiary.domain;

import java.util.Date;

public class UserArticle extends BaseDomain{
    private int articleId;
    private int userId;
    private String articleTitle;
    private String articleContent;
    private String picture;
    private Date dateTime;
    private String articleCommentNumber;
    private String articleFavorNumber;

    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    public String getArticleContent() {
        return articleContent;
    }

    public void setArticleContent(String articleContent) {
        this.articleContent = articleContent;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Date getDateTime() {
        return dateTime;
    }

    public void setDateTime(Date dateTime) {
        this.dateTime = dateTime;
    }

    public String getArticleCommentNumber() {
        return articleCommentNumber;
    }

    public void setArticleCommentNumber(String articleCommentNumber) {
        this.articleCommentNumber = articleCommentNumber;
    }

    public String getArticleFavorNumber() {
        return articleFavorNumber;
    }

    public void setArticleFavorNumber(String articleFavorNumber) {
        this.articleFavorNumber = articleFavorNumber;
    }
}
