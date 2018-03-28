package com.fc.base.login.service;

import com.fc.base.login.model.User;

import java.util.List;

public interface IUserService {

    User getUser(String loginName,String password);//登录方法
    List<User>show();
    List<User> showUser(String userName,String state,String level,String ip,String phoneNum);
    void addUser(User entity);
    List<String> deleteUser(String[] loginName);
    String updateUser(User user);
    User getName(String loginName);
    User getPhone(String phone);
    User getEmail(String emails);
}
