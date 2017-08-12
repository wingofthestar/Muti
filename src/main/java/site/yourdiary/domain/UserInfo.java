package site.yourdiary.domain;

public class UserInfo extends BaseDomain{
    private int userInfoId;
    private int userId;
    private String userPhoto;
    private String userIntroduce;
    private String userArtcleNum;
    private String userFavorNum;

    public int getUserInfoId() {
        return userInfoId;
    }

    public void setUserInfoId(int userInfoId) {
        this.userInfoId = userInfoId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserPhoto() {
        return userPhoto;
    }

    public void setUserPhoto(String userPhoto) {
        this.userPhoto = userPhoto;
    }

    public String getUserIntroduce() {
        return userIntroduce;
    }

    public void setUserIntroduce(String userIntroduce) {
        this.userIntroduce = userIntroduce;
    }

    public String getUserArtcleNum() {
        return userArtcleNum;
    }

    public void setUserArtcleNum(String userArtcleNum) {
        this.userArtcleNum = userArtcleNum;
    }

    public String getUserFavorNum() {
        return userFavorNum;
    }

    public void setUserFavorNum(String userFavorNum) {
        this.userFavorNum = userFavorNum;
    }
}
