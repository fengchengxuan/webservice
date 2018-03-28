package com.fc.login.Service;

import com.fc.login.model.Log;

public interface ILogService {

    void saveUsers(String email,String code,String password,String repassword);
    Log seekUser(String email);
    Log getUser(String email,String password);
    void findpwd(Log entity);
    boolean updateUser(Log entity,String vipname, String img,String phonenumber,String stablephone,String
            email,String social,String companyname,String htype,String ctype, String stype,String web,String address);
}
