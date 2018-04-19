package com.fc.base.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fc.base.user.dao.UserDao;
import com.fc.base.user.entity.FcUser;
import com.fc.base.user.service.UserService;
import com.fc.login.model.AnonymousEntity;
import com.fc.util.BaseDao;

@Service
public class UserServiceImpl extends BaseDao implements UserService {
    @Autowired
    UserDao  userDao;

    @Override
    public FcUser loginUser(String type, String user, String password) {//类型 账号 密码
        List<FcUser> list=userDao.findUser(type,user,password);
        if(list.size()>0){
        	list.get(0).setUserStatusId(1);
        	userDao.saveUser(list.get(0));
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
        fcUser.setPassword(repassword);
        fcUser.setUserTypeId(type);
        if("0".equals(type)){//手机类型
            fcUser.setTel(userName);
        }else if("1".equals(type)){//邮箱类型
            fcUser.setEmail(userName);
        }

        userDao.saveEntity(fcUser);
    }
    

    @Override
    public void saveUser(FcUser user) {
        userDao.saveEntity(user);
    }    

    @Override
    public List<FcUser> findList(String userName, String password, String type) {
        return userDao.findUser(type,userName,password);
    }

    @Override
    public FcUser getUser(String phonenum, String email, String password) {
        String hql = "from FcUser where (email=? and password=?) or (phone=? and password=?) ";
        Object[]args = {phonenum, email,password};
        return (FcUser)super.findEntity(hql,args);
    }
    
    @Override
    public FcUser getUser(String param) {
        String hql = "from FcUser where email=?  or phone=?  ";
        Object[]args = {param};     
        return (FcUser)super.findEntity(hql,args);
    }
    
    @Override//匿名登录
    public FcUser anonymousLogin() { 
        List<FcUser> list = userDao.getUserList();
        StringBuffer userName = new StringBuffer("FC_U");
        String str;
        if(list.size()<1){
            str=String.format("%07d",0);
        }else{
            str=String.format("%07d",list.size())                                                                                                                                                                                                                                                                                                                                                        ;
        }
        userName.append(str);
        FcUser user = new FcUser();
        user.setUserName(userName.toString());
        user.setPassword("123456");
        return userDao.saveUser(user);
    }

    @Override
    public FcUser getUser(String id, String userName) {
        return userDao.getUser(id,userName);
    }
}
