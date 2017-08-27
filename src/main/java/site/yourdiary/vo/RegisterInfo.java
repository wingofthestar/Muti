package site.yourdiary.vo;

import org.apache.commons.lang.builder.ToStringBuilder;

import javax.validation.constraints.Size;
import java.io.Serializable;

public class RegisterInfo implements Serializable{

    @Size(min=3, max=16)
    private String userName;
    private String userEmail;
    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
