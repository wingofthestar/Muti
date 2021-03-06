package site.yourdiary.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import site.yourdiary.exception.RegisterUserExitException;
import site.yourdiary.vo.RegisterInfo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:TestUserRegister-config.xml"})
public class TestUserRegisterService {
    @Autowired
    private UserRegisterService userRegisterService;

    @Test
    @Transactional
    @Rollback
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
