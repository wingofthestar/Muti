package site.yourdiary.domain;

public class ArtcleComment extends BaseDomain {
    private int artcleCommentId;
    private int artcleId;
    private String artcleCommentContent;

    public int getArtcleCommentId() {
        return artcleCommentId;
    }

    public void setArtcleCommentId(int artcleCommentId) {
        this.artcleCommentId = artcleCommentId;
    }

    public int getArtcleId() {
        return artcleId;
    }

    public void setArtcleId(int artcleId) {
        this.artcleId = artcleId;
    }

    public String getArtcleCommentContent() {
        return artcleCommentContent;
    }

    public void setArtcleCommentContent(String artcleCommentContent) {
        this.artcleCommentContent = artcleCommentContent;
    }
}
