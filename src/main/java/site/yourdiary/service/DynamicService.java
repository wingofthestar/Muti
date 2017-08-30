package site.yourdiary.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.yourdiary.dao.DynamicMapper;
import site.yourdiary.domain.ArtcleComment;
import site.yourdiary.domain.ContentWrapper;
import site.yourdiary.domain.UserArtcle;
import site.yourdiary.domain.UserInfoWrapper;

import java.lang.annotation.Target;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DynamicService {
    private DynamicMapper dynamicDao;

    @Autowired
    public void setDynamicDao(DynamicMapper dynamicDao) {
        this.dynamicDao = dynamicDao;
    }

    @Transactional
    public Map showContent(){
        Map Contents = new HashMap();
//        Contents.put("Article", dynamicDao.getAllArticle());
//        Contents.put("Comment", dynamicDao.getAllComment());
        for (UserArtcle userArtcle: dynamicDao.getAllArticle()) {
            int userId = userArtcle.getUserId();
            int artcleId = userArtcle.getArtcleId();
            UserInfoWrapper writer = dynamicDao.getWriter(userId);
            List<ArtcleComment> artcleCommentList = dynamicDao.getAllComment(artcleId);
            ContentWrapper contentWrapper = new ContentWrapper(userArtcle, writer, artcleCommentList);
            Contents.put("Content", contentWrapper);
        }
        return Contents;
    }


}
