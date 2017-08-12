package site.yourdiary.dao;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 测试正则表达式是否能够区分邮箱
 */
public class MailTestUseCase {
    public static void main(String[] args) {
        String check = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
        Pattern regex = Pattern.compile(check);
        Matcher matcher = regex.matcher("admin@yourdiary.site");
        boolean isMatched = matcher.matches();
        System.out.println(isMatched);
    }
}
