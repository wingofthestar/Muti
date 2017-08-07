package site.yourdiary.dao;

import org.springframework.stereotype.Component;
import site.yourdiary.domain.User;

@Component
public interface UserMapper {

    User getUserByUserName(String userName);

}
