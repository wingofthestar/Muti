package site.yourdiary.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import site.yourdiary.domain.UserInfo;

@Component
public interface UserSpaceMapper {

    UserInfo getUserInfoByUserId(int userId);

    int updateUserInfoByUserId(@Param("userId") int userId, @Param("userPhoto") String userPhoto, @Param("userIntroduce") String userIntroduce);
}
