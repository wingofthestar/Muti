package site.yourdiary.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import site.yourdiary.exception.RegisterUserExitException;
import site.yourdiary.web.RegisterInfo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:TestUserRegister-config.xml"})
public class TestUserRegisterService {
    @Autowired
    private UserRegisterService userRegisterService;

    @Test
    public void testRegisterUser(){
        RegisterInfo registerInfo = new RegisterInfo();
        registerInfo.setUserName("star");
        registerInfo.setUserEmail("star@yourdiary.site");
        registerInfo.setPassword("star123");
        try {
            userRegisterService.registerUser(registerInfo);
        } catch (RegisterUserExitException e) {
            e.printStackTrace();
        }
    }
}
