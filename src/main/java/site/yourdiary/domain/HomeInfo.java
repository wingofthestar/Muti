package site.yourdiary.domain;

public class HomeInfo extends BaseDomain{
    private int textId;
    private String homeText;

    public int getTextId() {
        return textId;
    }

    public void setTextId(int textId) {
        this.textId = textId;
    }

    public String getHomeText() {
        return homeText;
    }

    public void setHomeText(String homeText) {
        this.homeText = homeText;
    }
}
