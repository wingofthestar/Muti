package site.yourdiary.vo;

import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

public class PublishInfo implements Serializable {

    @Size(max = 255)
    @NotNull
    private String title;
    @NotNull
    private String content;
    private MultipartFile pic;

    public PublishInfo(String title, String content, MultipartFile pic) {
        this.title = title;
        this.content = content;
        this.pic = pic;
    }

    public PublishInfo() {
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

    public MultipartFile getPic() {
        return pic;
    }

    public void setPic(MultipartFile pic) {
        this.pic = pic;
    }
}
