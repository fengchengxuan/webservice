package com.fc.login.Dao;

import com.fc.login.model.Log;

public interface ILogDao {
    void saveUsers(String email,String code,String password,String repassword);
    Log seekUser(String email);
    Log getUser(String email,String password);
    void findpwd(Log entity);
    boolean updateUser(Log entity);
}
