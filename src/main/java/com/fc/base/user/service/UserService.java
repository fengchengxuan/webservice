package com.fc.base.user.service;

import com.fc.base.user.entity.FcUser;

import java.util.List;

public interface UserService {
    FcUser loginUser(String type, String user, String password);
    void saveUser(String uesrName,String password,String repassword,String type);
    List<FcUser> findList(String userName,String password,String type);
    void saveUser(FcUser fcUser);
}
