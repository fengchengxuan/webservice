package com.fc.base.user.service;

import com.fc.base.user.entity.FcUser;

import java.util.List;

public interface UserService {
    FcUser loginUser(String type, String user, String password);
    void saveUser(String uesrName,String password,String repassword,String type);
    void saveUser(FcUser user) ;
    List<FcUser> findList(String userName,String password,String type);
    FcUser getUser(String phonenum, String email, String password) ;
    FcUser getUser(String param) ;
    FcUser anonymousLogin();
    FcUser getUser(String id,String userName);
    void deleteFcUser(FcUser fcUser);
    List<FcUser> findList(String id, String userType, String userIntent, String status);

}
