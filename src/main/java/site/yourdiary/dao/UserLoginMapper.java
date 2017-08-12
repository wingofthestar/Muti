package site.yourdiary.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserLoginLog;

import java.util.Date;

@Component
public interface UserLoginMapper {

    User getUserByUserName(String userName);

    User getUserByEmail(String eamil);

    //用户登录成功，更新登录ip，和登录时间
    int updateLastLogin(@Param("userName") String userName, @Param("lastVisit") Date lastVisit,@Param("lastIp") String lastIp);

    //插入用户登录日志
    int insertLoginLog(UserLoginLog userLoginLog);


}
