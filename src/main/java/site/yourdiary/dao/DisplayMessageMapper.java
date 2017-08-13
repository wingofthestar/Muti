package site.yourdiary.dao;

import org.springframework.stereotype.Component;
import site.yourdiary.domain.HomeInfo;

import java.util.List;

@Component
public interface DisplayMessageMapper {
    //获取主页所需文字信息
    List<HomeInfo> getHomeMessage();

}
