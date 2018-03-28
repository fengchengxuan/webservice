package com.fc.base.login.dao;

import com.fc.base.login.model.User;

import java.util.List;

public interface IUserDao {

    User getUser(String loginName,String password);//登录方法
    List<User>show();//显示数据
    List<User> showUser(String userName, String state, String level, String ip,String phoneNum);
    void addUser(User entity);
    void delete(String loginName);
    void updateUser(User user);
    User getName(String loginName);
    User getPhone(String phone);
    User getEmail(String emails);
}
