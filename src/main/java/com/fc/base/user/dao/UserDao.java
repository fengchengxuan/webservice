package com.fc.base.user.dao;

import com.fc.base.user.entity.FcUser;

import java.util.List;

public interface UserDao {
    void saveEntity(FcUser fcUser);
    FcUser saveUser(FcUser fcUser) ;
    List<FcUser> findUser(String type , String userName, String password);
    List<FcUser> getUserList() ;
    FcUser getUser(String username);
    FcUser getUser(String id,String userName);
    void deleteFcUser(FcUser fcUser);
    List<FcUser> findList(String id, String userType, String userIntent, String status);
}
