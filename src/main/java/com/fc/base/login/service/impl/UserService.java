package com.fc.base.login.service.impl;

import com.fc.base.login.dao.IUserDao;
import com.fc.base.login.model.User;
import com.fc.base.login.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService implements IUserService {

    @Autowired
    IUserDao iUserDao;

    @Override
    public User getUser(String loginName, String password) {
        return iUserDao.getUser(loginName,password);
    }

    @Override
    public List<User> show() {
        return iUserDao.show();
    }

    @Override
    public void addUser(User entity) {
        iUserDao.addUser(entity);
    }

    @Override
    public List<User> showUser(String userName, String state, String level, String ip,String phoneNum) {
        return iUserDao.showUser(userName,state, level,ip,phoneNum);
    }

    @Override
    public List<String> deleteUser(String[] userList) {
        List<String> list=new ArrayList<>();
        for(String loginName:userList)
        iUserDao.delete(loginName);
        list.add("删除成功");
        return list;
    }

    @Override
    public String updateUser(User user) {
        iUserDao.updateUser(user);
        return "更新成功";
    }

    @Override
    public User getName(String loginName) {
        return iUserDao.getName(loginName);
    }

    @Override
    public User getEmail(String emails) {
        return iUserDao.getEmail(emails);
    }

    @Override
    public User getPhone(String phone) {
        return iUserDao.getPhone(phone);
    }
}
