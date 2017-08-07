package site.yourdiary.exception;

public class NoUserException extends Exception {
    public NoUserException(String errorMsg){
        super(errorMsg);
    }
}
