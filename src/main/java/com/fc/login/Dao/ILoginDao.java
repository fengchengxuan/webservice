package com.fc.login.Dao;

import com.fc.login.model.Login;

public interface ILoginDao {
    Login findUser(String phonenumber);
    void saveUser(String phonenumber,String code,String password,String repassword);
    Login getUsers(String phonenumber,String password);
    void findpwd(Login entity);
    boolean updateUsers(Login entity);
}
