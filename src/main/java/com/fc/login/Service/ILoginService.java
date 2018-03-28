package com.fc.login.Service;

import com.fc.login.model.AnonymousEntity;
import com.fc.login.model.Login;

public interface ILoginService {
    Login findUser(String phonenumber);
    void saveUser(String phonenumber,String code,String password,String repassword);
    Login getUsers(String phonenumber,String password);
    void findpwd(Login entity);
    boolean updateUser(Login entity,String vipname, String img,String phonenumber,String stablephone,String
            email,String social,String companyname,String htype,String ctype, String stype,String web,String address);
    public AnonymousEntity anonymousLogin();
}
