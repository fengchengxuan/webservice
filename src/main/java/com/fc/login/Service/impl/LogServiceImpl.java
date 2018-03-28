package com.fc.login.Service.impl;

import com.fc.login.Dao.ILogDao;
import com.fc.login.Service.ILogService;
import com.fc.login.model.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogServiceImpl implements ILogService{

    @Autowired
    private ILogDao logDao;

    @Override
    public void saveUsers(String email, String code, String password, String repassword) {
        logDao.saveUsers(email, code, password, repassword);
    }

    @Override
    public Log seekUser(String email) {
        return logDao.seekUser(email);
    }

    @Override
    public Log getUser(String email, String password) {
        return logDao.getUser(email, password);
    }

    @Override
    public void findpwd(Log entity) {
        logDao.findpwd(entity);
    }

    @Override
    public boolean updateUser(Log entity, String vipname, String img,String phonenumber, String stablephone, String email,
                              String social, String companyname, String htype, String ctype, String stype, String web, String address) {
        entity.setVipname(vipname);
        entity.setEmail(email);
        entity.setImg(img);
        entity.setAddress(address);
        entity.setPhonenumber(phonenumber);
        entity.setStablephone(stablephone);
        entity.setSocial(social);
        entity.setCompanyname(companyname);
        entity.setHtype(htype);
        entity.setCtype(ctype);
        entity.setStype(stype);
        entity.setWeb(web);
        boolean flat=logDao.updateUser(entity);
        return flat;
    }
}
