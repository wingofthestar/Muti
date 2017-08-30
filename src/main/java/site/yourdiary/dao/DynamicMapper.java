package site.yourdiary.dao;

import org.springframework.stereotype.Component;
import site.yourdiary.domain.ArtcleComment;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserArtcle;
import site.yourdiary.domain.UserInfoWrapper;

import java.util.List;

@Component
public interface DynamicMapper {
    List<UserArtcle> getAllArticle();

    List<ArtcleComment> getAllComment(int artcleId);

    UserInfoWrapper getWriter(int userId);
}
