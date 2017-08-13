package site.yourdiary.exception;

public class LoginNoUserException extends Exception {
    public LoginNoUserException(String errorMsg){
        super(errorMsg);
    }
}
