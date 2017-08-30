package site.yourdiary.dao;

import org.springframework.stereotype.Component;
import site.yourdiary.domain.UserArtcle;

import java.util.List;

@Component
public interface DynamicMapper {
    List<UserArtcle> getAllArticle();
}
