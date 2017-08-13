package site.yourdiary.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import site.yourdiary.domain.User;

@Component
public interface UserRegisterMapper {

    //注册数据插入数据库前，先检验用户名是否已经被注册
    int queryIfExistUserName(@Param("userName") String userName);

    //注册数据插入数据库前，先检验用户电子邮箱是否已经被注册
    int queryIfExistUserEmail(@Param("userEmail") String userEmail);

    int insertUser(User user);

    //用户注册成功的同时，为用户生成对应的用户个人信息
    int createUserInfo(int userId);
}
