package site.yourdiary.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import site.yourdiary.domain.ContentWrapper;

import java.util.List;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:TestUserRegister-config.xml"})
public class TestDynamicService {
    @Autowired
    private DynamicService dynamicService;

    @Test
    public void testShowContent(){
        List<ContentWrapper> contentList=  dynamicService.showContent();
        for (ContentWrapper contentWrapper: contentList) {
            System.out.println(contentWrapper);
        }
    }
}
