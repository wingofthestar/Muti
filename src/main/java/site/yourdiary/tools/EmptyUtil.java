package site.yourdiary.tools;

import org.apache.commons.lang.StringUtils;

/**
 * 自定以封装函数判断是否为空
 * 原本是自己封装的，但是发现StringUtils的工具真的很实用
 */
public class EmptyUtil {

    public static boolean IsEmptyOrNull(String str){
//        if (str == null || str.length() == 0){
//            return true;
//        }
//        else{
//            return false;
//        }
        if(StringUtils.isEmpty(str) || StringUtils.isBlank(str)){
            return true;
        }else{
            return false;
        }
    }

}
