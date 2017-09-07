package site.yourdiary.dto;

import java.io.Serializable;

public class UserInfoDto implements Serializable {
    private String userName;
    private String userIntroduce;
    private String userEmail;
    private String password;

    public UserInfoDto() {
    }

    public UserInfoDto(String userName, String userIntroduce, String userEmail, String password) {
        this.userName = userName;
        this.userIntroduce = userIntroduce;
        this.userEmail = userEmail;
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserIntroduce() {
        return userIntroduce;
    }

    public void setUserIntroduce(String userIntroduce) {
        this.userIntroduce = userIntroduce;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
