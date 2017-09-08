package site.yourdiary.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserArticle;
import site.yourdiary.domain.UserInfo;

import java.util.List;

@Component
public interface UserSpaceMapper {

    UserInfo getUserInfoByUserId(int userId);

    int updateUserInfoByUserId(@Param("userId") int userId, @Param("userPhoto") String userPhoto,
                               @Param("userIntroduce") String userIntroduce);

    int updateUserByUserId(@Param("userId") int userId, @Param("userName") String userName,
                           @Param("userEmail") String userEmail, @Param("password") String password);

    User getUserByUserId(@Param("userId") int userId);

    List<UserArticle> getArticleByUserId(@Param("userId") int userId);
}
