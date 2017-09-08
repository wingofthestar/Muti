package site.yourdiary.dto;

public class PublishArticleDto {
    private int userId;
    private String title;
    private String content;
    private String filePath;

    public PublishArticleDto() {
    }

    public PublishArticleDto(int userId, String title, String content, String filePath) {
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.filePath = filePath;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }
}
