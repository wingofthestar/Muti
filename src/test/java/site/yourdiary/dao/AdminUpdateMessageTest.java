package site.yourdiary.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:AdminUpdateMessage-Spring-MyBatis.xml"})
public class AdminUpdateMessageTest {

    @Autowired
    private AdminUpdateMessageMapper adminUpdateMessageDao;

    @Test
    @Transactional
    @Rollback
    public void testupdateMessage(){
        adminUpdateMessageDao.updateMessage(1, "爱我中华");
    }
}
