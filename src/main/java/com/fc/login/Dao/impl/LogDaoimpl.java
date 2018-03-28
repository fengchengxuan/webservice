package com.fc.login.Dao.impl;

import com.fc.login.Dao.ILogDao;
import com.fc.login.model.Log;
import com.fc.util.BaseDao;
import org.springframework.stereotype.Repository;

@Repository
public class LogDaoimpl extends BaseDao<Log> implements ILogDao {

    @Override
    public void saveUsers(String email, String code, String password, String repassword) {
        Log log = new Log();
        log.setEmail(email);
        log.setCode(code);
        log.setPassword(password);
        log.setRepassword(repassword);
        super.save(log);
    }

    @Override
    public Log seekUser(String email) {
        String hql = "from Log where email=?";
        Object[]args = {email};
        return super.findEntity(hql,args);
    }

    @Override
    public Log getUser(String email, String password) {
        String hql = "from Log where email=? and password=?";
        Object[]args = {email,password};
        return super.findEntity(hql,args);
    }

    @Override
    public void findpwd(Log entity) {
        super.update(entity);
    }

    @Override//邮箱用户更改信息
    public boolean updateUser(Log entity) {
        if(entity!=null){
            super.update(entity);
            return true;
        }
        return false;
    }
}
