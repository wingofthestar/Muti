package site.yourdiary.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserLoginLog;

import java.util.Date;

@Component
public interface UserMapper {

    User getUserByUserName(String userName);

    User getUserByEmail(String eamil);

    int updateLastLogin(@Param("userName") String userName, @Param("lastVisit") Date lastVisit,@Param("lastIp") String lastIp);

    int insertLoginLog(UserLoginLog userLoginLog);

}
