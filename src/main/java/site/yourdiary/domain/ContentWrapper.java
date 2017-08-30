package site.yourdiary.domain;

import java.util.List;

public class ContentWrapper extends BaseDomain{
    private UserArtcle userArtcle;
    private UserInfoWrapper userInfoWrapper;
    private List<ArtcleComment> artcleCommentList;

    public UserInfoWrapper getUserInfoWrapper() {
        return userInfoWrapper;
    }

    public void setUserInfoWrapper(UserInfoWrapper userInfoWrapper) {
        this.userInfoWrapper = userInfoWrapper;
    }

    public UserArtcle getUserArtcle() {
        return userArtcle;
    }

    public void setUserArtcle(UserArtcle userArtcle) {
        this.userArtcle = userArtcle;
    }


    public List<ArtcleComment> getArtcleCommentList() {
        return artcleCommentList;
    }

    public void setArtcleCommentList(List<ArtcleComment> artcleCommentList) {
        this.artcleCommentList = artcleCommentList;
    }

    public ContentWrapper(UserArtcle userArtcle, UserInfoWrapper userInfoWrapper, List<ArtcleComment> artcleCommentList) {
        this.userArtcle = userArtcle;
        this.userInfoWrapper = userInfoWrapper;
        this.artcleCommentList = artcleCommentList;
    }
}
