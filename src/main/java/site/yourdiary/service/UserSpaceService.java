package site.yourdiary.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.yourdiary.dao.UserLoginMapper;
import site.yourdiary.dao.UserRegisterMapper;
import site.yourdiary.dao.UserSpaceMapper;
import site.yourdiary.domain.User;
import site.yourdiary.domain.UserArticle;
import site.yourdiary.domain.UserInfo;
import site.yourdiary.dto.UserInfoDto;
import site.yourdiary.exception.RegisterUserExitException;
import site.yourdiary.exception.UpdateDuplicationException;
import site.yourdiary.exception.UpdateEmptyException;
import site.yourdiary.tools.EmptyUtil;

import java.util.List;

@Service
public class UserSpaceService {

    @Autowired
    private UserSpaceMapper userSpaceDao;
    @Autowired
    private UserRegisterMapper userRegisterDao;

    @Transactional
    public UserInfo getUserInfobyUserId(int userId){
       return userSpaceDao.getUserInfoByUserId(userId);
    }

    @Transactional
    public int UpdateUser(int userId, UserInfoDto userInfoDto) throws UpdateEmptyException, UpdateDuplicationException {

        int updateUserByUserIdresult = 0;
        int updateUserInfoByUserIdresult = 0;

        //Service层基本校验
        if(EmptyUtil.IsEmptyOrNull(userInfoDto.getUserName()) && EmptyUtil.IsEmptyOrNull(userInfoDto.getPassword())
                && EmptyUtil.IsEmptyOrNull(userInfoDto.getUserEmail())
                && EmptyUtil.IsEmptyOrNull(userInfoDto.getUserIntroduce())){
            throw new UpdateEmptyException("内容不能全为空");
        }

        //检查用户名和用户Email是否已经被注册
        int checkUserName = userRegisterDao.queryIfExistUserName(userInfoDto.getUserName());
        int checkUserEmail = userRegisterDao.queryIfExistUserEmail(userInfoDto.getUserEmail());

        if(checkUserEmail > 0 && checkUserName == 0){
            throw new UpdateDuplicationException("Email已经被注册");
        }
        if(checkUserEmail == 0 && checkUserName > 0 ){
            throw new UpdateDuplicationException("用户名已经被注册");
        }

        if (checkUserEmail > 0 && checkUserName > 0 ){
            throw new UpdateDuplicationException("Emial和用户名已经被注册");
        }

        if(!EmptyUtil.IsEmptyOrNull(userInfoDto.getUserName()) || !EmptyUtil.IsEmptyOrNull(userInfoDto.getPassword())
                    || !EmptyUtil.IsEmptyOrNull(userInfoDto.getUserEmail())){
                updateUserByUserIdresult = userSpaceDao.updateUserByUserId(userId, userInfoDto.getUserName(), userInfoDto.getUserEmail(), userInfoDto.getPassword());
        }

        if(!EmptyUtil.IsEmptyOrNull(userInfoDto.getUserIntroduce())) {
                updateUserInfoByUserIdresult = userSpaceDao.updateUserInfoByUserId(userId, null, userInfoDto.getUserIntroduce());
        }

        if(updateUserByUserIdresult != 0 || updateUserInfoByUserIdresult != 0){
            return 1;
        }else{
            return 0;
        }
    }

    @Transactional
    public User getUserByUserId(int userId){
        return userSpaceDao.getUserByUserId(userId);
    }

    public List<UserArticle> getUserArticleById(int userId){
        return userSpaceDao.getArticleByUserId(userId);
    }

}
