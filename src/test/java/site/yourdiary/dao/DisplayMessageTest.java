package site.yourdiary.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import site.yourdiary.domain.HomeInfo;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:DisplayMessage-Spring-MyBatis.xml"})
public class DisplayMessageTest {

    @Autowired
    private DisplayMessageMapper displayMessageDao;

    @Test
    public void testGetHomeMessage(){
        List<HomeInfo> homeinfolists = new ArrayList<>();
        homeinfolists = displayMessageDao.getHomeMessage();
        for (HomeInfo homeinfo:
             homeinfolists) {
            System.out.println(homeinfo);
        }
    }
}
