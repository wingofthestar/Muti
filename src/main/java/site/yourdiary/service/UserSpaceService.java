package site.yourdiary.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import site.yourdiary.dao.UserSpaceMapper;

@Service
public class UserSpaceService {

    @Autowired
    private UserSpaceMapper userSpaceDao;
}
