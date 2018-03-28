package com.fc.login.Dao.impl;

import com.fc.login.Dao.ILoginDao;
import com.fc.login.model.Login;
import com.fc.util.BaseDao;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDaoimpl extends BaseDao<Login> implements ILoginDao {

    @Override
    public Login findUser(String phonenumber) {
        String hql = "from Login where phonenumber=?";
        Object[]args ={phonenumber};
        return super.findEntity(hql,args);
    }

    @Override
    public Login getUsers(String phonenumber, String password) {
        String hql = "from Login where phonenumber=? and password=?";
        Object[]args = {phonenumber,password};
        return super.findEntity(hql,args);
    }

    @Override
    public void saveUser(String phonenumber, String code, String password, String repassword) {
        Login login = new Login();
        login.setPhonenumber(phonenumber);
        login.setCode(code);
        login.setPassword(password);
        login.setRepassword(repassword);
        super.save(login);
    }

    @Override
    public void findpwd(Login entity){
        super.update(entity);
    }

    @Override//手机用户更改信息
    public boolean updateUsers(Login entity) {
        if(entity!=null ){
            super.update(entity);
            return true;
        }
        return false;
    }
}
