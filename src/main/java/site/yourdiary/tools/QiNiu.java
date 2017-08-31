package site.yourdiary.tools;

import com.qiniu.api.auth.digest.Mac;
import com.qiniu.api.config.Config;
import com.qiniu.api.io.IoApi;
import com.qiniu.api.io.PutExtra;
import com.qiniu.api.io.PutRet;
import com.qiniu.api.rs.PutPolicy;

/**
 * QiNiuDemo
 * 图片托管在七牛上
 */
public class QiNiu {
    public static void main(String[] args) throws Exception {
        Config.ACCESS_KEY = "WJGPzYRdPE-JXHu_iIsADu54Ws1SoCE1EHdxYl7m";
        Config.SECRET_KEY = "Nad_ek5QSXSLhBKO-nEXIOWekInIPgmxjBTDKqvt";
        Mac mac = new Mac(Config.ACCESS_KEY, Config.SECRET_KEY);
        // 请确保该bucket已经存在
        String bucketName = "picture";
        PutPolicy putPolicy = new PutPolicy(bucketName);
        String uptoken = putPolicy.token(mac);

        PutExtra extra = new PutExtra();
        String key = "showpage_item3.jpg";
        String localFile = "C:\\Users\\star\\Desktop\\农产品融资\\无常稻花香米\\showpage_item3.jpg";
        PutRet ret = IoApi.putFile(uptoken, key, localFile, extra);
        System.out.println("上传完成");
    }
}
