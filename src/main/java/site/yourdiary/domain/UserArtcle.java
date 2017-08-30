package site.yourdiary.domain;

import java.util.Date;

public class UserArtcle extends BaseDomain{
    private int artcleId;
    private int userId;
    private String artcleTitle;
    private String artcleContent;
    private String picture;
    private Date dateTime;
    private String artcleCommentNumber;
    private String artceFavorNumber;

    public String getArtcleCommentNumber() {
        return artcleCommentNumber;
    }

    public void setArtcleCommentNumber(String artcleCommentNumber) {
        this.artcleCommentNumber = artcleCommentNumber;
    }

    public String getArtceFavorNumber() {
        return artceFavorNumber;
    }

    public void setArtceFavorNumber(String artceFavorNumber) {
        this.artceFavorNumber = artceFavorNumber;
    }

    public int getArtcleId() {
        return artcleId;
    }

    public void setArtcleId(int artcleId) {
        this.artcleId = artcleId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getArtcleTitle() {
        return artcleTitle;
    }

    public void setArtcleTitle(String artcleTitle) {
        this.artcleTitle = artcleTitle;
    }

    public String getArtcleContent() {
        return artcleContent;
    }

    public void setArtcleContent(String artcleContent) {
        this.artcleContent = artcleContent;
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
}
