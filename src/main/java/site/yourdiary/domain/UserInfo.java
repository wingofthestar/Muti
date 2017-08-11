package site.yourdiary.domain;

public class UserInfo extends BaseDomain{
    private int user_info_id;
    private int user_id;
    private String user_photo;
    private String user_introduce;
    private String user_artcle_num;
    private String user_favor_num;

    public int getUser_info_id() {
        return user_info_id;
    }

    public void setUser_info_id(int user_info_id) {
        this.user_info_id = user_info_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_photo() {
        return user_photo;
    }

    public void setUser_photo(String user_photo) {
        this.user_photo = user_photo;
    }

    public String getUser_introduce() {
        return user_introduce;
    }

    public void setUser_introduce(String user_introduce) {
        this.user_introduce = user_introduce;
    }

    public String getUser_artcle_num() {
        return user_artcle_num;
    }

    public void setUser_artcle_num(String user_artcle_num) {
        this.user_artcle_num = user_artcle_num;
    }

    public String getUser_favor_num() {
        return user_favor_num;
    }

    public void setUser_favor_num(String user_favor_num) {
        this.user_favor_num = user_favor_num;
    }
}
