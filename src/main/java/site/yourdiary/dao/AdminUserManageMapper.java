package site.yourdiary.dao;

import org.springframework.stereotype.Component;
import site.yourdiary.domain.User;

import java.util.List;

@Component
public interface AdminUserManageMapper {
    List<User> getAllUserAccount();

    User getUserByUserName(String userName);

//    封锁账号
    int sethonor(String userName);

//    解封账户
    int disSethonor(String userName);
}
