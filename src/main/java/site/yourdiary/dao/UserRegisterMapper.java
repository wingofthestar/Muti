package site.yourdiary.dao;

import org.springframework.stereotype.Component;
import site.yourdiary.domain.User;

@Component
public interface UserRegisterMapper {

    int insertUser(User user);
}
