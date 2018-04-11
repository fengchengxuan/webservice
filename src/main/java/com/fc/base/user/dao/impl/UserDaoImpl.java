package com.fc.base.user.dao.impl;

import com.fc.base.user.dao.UserDao;
import com.fc.base.user.entity.FcUser;
import com.fc.util.BaseDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class UserDaoImpl extends BaseDao implements UserDao {
    List<String> list;
    @Autowired
    void  init(){

    }
    @Override
    public void saveEntity(FcUser fcUser) {
        super.saveOrUpdate(fcUser);
    }

    @Override
    public List<FcUser> findUser(String type, String user, String password) {
        StringBuffer hql= new StringBuffer("from FcUser where 1 = 1 ");
        list = new ArrayList<>();
        if(type != null && !"".equals(type)){
            hql.append("and userTypeId = ?");
            list.add(type);
        }
        if("0".equals(type)){
            if(user != null && !"".equals(user)){
                hql.append("and tel = ?");
                list.add(user);
            }
        }else if("1".equals(type)){
            if(user != null && !"".equals(user)){
                hql.append("and email = ?");
                list.add(user);
            }
        }

        if(password != null && !"".equals(password)){
            hql.append("and password = ?");
            list.add(password);
        }
        return super.findList(hql.toString(),list);
    }
}
