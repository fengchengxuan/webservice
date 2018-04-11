package com.fc.base.user.service.impl;

import com.fc.base.user.dao.UserDao;
import com.fc.base.user.entity.FcUser;
import com.fc.base.user.entity.FcUser;
import com.fc.base.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao  userDao;

    @Override
    public FcUser loginUser(String type, String user, String password) {//类型 账号 密码
        List<FcUser> list=userDao.findUser(type,user,password);
        if(list.size()>0){
            return list.get(0);
        }else{
            return null;
        }
    }

    @Override
    public void saveUser(String userName, String password, String repassword, String type) {
        FcUser fcUser =new FcUser();
        fcUser.setUserName(userName);
        fcUser.setRePassword(password);
        fcUser.setPassword(password);
        fcUser.setUserTypeId(type);
        if("0".equals(type)){//手机类型
            fcUser.setTel(userName);
        }else if("1".equals(type)){//邮箱类型
            fcUser.setEmail(userName);
        }

        userDao.saveEntity(fcUser);
    }

    @Override
    public List<FcUser> findList(String userName, String password, String type) {
        return userDao.findUser(type,userName,password);
    }

    @Override
    public void saveUser(FcUser fcUser) {
        userDao.saveEntity(fcUser);
    }
}
