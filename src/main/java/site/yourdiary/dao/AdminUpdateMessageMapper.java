package site.yourdiary.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

@Component
public interface AdminUpdateMessageMapper {

    int updateMessage(@Param("textId") int textId, @Param("homeText") String homeText);
}
