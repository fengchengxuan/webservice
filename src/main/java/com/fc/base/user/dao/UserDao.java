package com.fc.base.user.dao;

import com.fc.base.user.entity.FcUser;

import java.util.List;

public interface UserDao {
    void saveEntity(FcUser fcUser);
    FcUser saveUser(FcUser fcUser) ;
    List<FcUser> findUser(String type , String userName, String password);
    List<FcUser> getUserList() ;
    FcUser getUser(String username);
}
