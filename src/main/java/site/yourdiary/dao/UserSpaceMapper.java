package site.yourdiary.dao;

import org.springframework.stereotype.Component;
import site.yourdiary.domain.UserInfo;

@Component
public interface UserSpaceMapper {

    UserInfo getUserInfoByUserId(int userId);

    int updateUserInfoByUserId(int userId);
}
