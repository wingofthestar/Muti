package site.yourdiary.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import site.yourdiary.domain.ContentWrapper;

import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:TestUserRegister-config.xml"})
public class TestDynamicService {
    @Autowired
    private DynamicService dynamicService;

    @Test
    public void testShowContent(){
        Map<String, ContentWrapper> content=  dynamicService.showContent();
        for (Map.Entry<String, ContentWrapper> c :content.entrySet()){
            System.out.println(
                    c.getKey() + ":" + c.getValue()
            );
        }
    }
}
