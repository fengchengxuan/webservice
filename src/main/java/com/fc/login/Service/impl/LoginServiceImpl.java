package com.fc.login.Service.impl;

import com.fc.login.Dao.AnonyUserDao;
import com.fc.login.Dao.ILoginDao;
import com.fc.login.Service.ILoginService;
import com.fc.login.model.AnonymousEntity;
import com.fc.login.model.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImpl implements ILoginService {

    @Autowired
    ILoginDao loginDao;
    @Autowired
    AnonyUserDao anonyDao;

    @Override
    public Login findUser(String phonenumber) {
        return loginDao.findUser(phonenumber);
    }

    @Override
    public void saveUser(String phonenumber, String code, String password, String repassword) {
        loginDao.saveUser(phonenumber,code,password,repassword);
    }

    @Override
    public Login getUsers(String phonenumber, String password) {
        return loginDao.getUsers(phonenumber,password);
    }

    @Override
    public void findpwd(Login entity) {
        loginDao.findpwd(entity);
    }

    @Override
    public boolean updateUser(Login entity, String vipname,String img, String phonenumber, String stablephone, String email,
                              String social, String companyname, String htype, String ctype, String stype, String web, String address) {

        entity.setVipname(vipname);
        entity.setImg(img);
        entity.setEmail(email);
        entity.setAddress(address);
        entity.setPhonenumber(phonenumber);
        entity.setStablephone(stablephone);
        entity.setSocial(social);
        entity.setCompanyname(companyname);
        entity.setHtype(htype);
        entity.setCtype(ctype);
        entity.setStype(stype);
        entity.setWeb(web);
        boolean flat=loginDao.updateUsers(entity);
        return flat;
    }
    @Override//匿名登录
    public AnonymousEntity anonymousLogin() {
        List<AnonymousEntity> list = anonyDao.getAnonymousUser("","","");
        StringBuffer userName = new StringBuffer("FC_U");
        String str;
        if(list.size()<1){
            str=String.format("%07d",0);
        }else{
            str=String.format("%07d",list.size())                                                                                                                                                                                                                                                                                                                                                        ;
        }
        userName.append(str);
        anonyDao.saveAnonyUser(userName.toString(),"123456");
        return anonyDao.getAnonymousUser("",userName.toString(),"").get(0);
    }

}
