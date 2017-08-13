package site.yourdiary.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import site.yourdiary.dao.DisplayMessageMapper;
import site.yourdiary.domain.HomeInfo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DisplayMessageService {
    @Autowired
    private DisplayMessageMapper displayMessageDao;

    /*
    之所以把int装换为String，因为EL表达式中的数字是long型的和Integer不匹配无法取出值
     */
    public Map<String, String> getHomeInfo(){
        Map<String, String> homeInfoMap = new HashMap<>();
       List<HomeInfo> homeInfoList = displayMessageDao.getHomeMessage();
       String text;
        for (HomeInfo homeInfo: homeInfoList) {

            /**
             * 对过长的段落进行截断处理，不然首页显示会有问题
             */
            if(homeInfo.getHomeText().length()> 95) {
                text = homeInfo.getHomeText().substring(0, 95) + "...";
            }else{
                text = homeInfo.getHomeText();
            }

            homeInfoMap.put(Integer.toString(homeInfo.getTextId()), text);
        }
        return homeInfoMap;
    }

}
