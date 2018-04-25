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
    public FcUser saveUser(FcUser fcUser) {
        super.saveOrUpdate(fcUser);
        return fcUser;
    }

    @Override
    public List<FcUser> findUser(String type, String user, String password) {
        StringBuffer hql= new StringBuffer("from FcUser where 1 = 1 ");
        list = new ArrayList<>();
//        if(type != null && !"".equals(type)){
//            hql.append("and userTypeId = ?");
//            list.add(type);
//        }
//        if("0".equals(type)){
//            if(user != null && !"".equals(user)){
//                hql.append("and tel = ?");
//                list.add(user);
//            }
//        }
//    else 
//    	if("1".equals(type)){
            if(user != null && !"".equals(user)){
                hql.append("and userName = ? ");
                list.add(user);
            }
        

        if(password != null && !"".equals(password)){
            hql.append("and password = ?");
            list.add(password);
        }
        return super.findList(hql.toString(),list);
    }
    
    @Override
    public FcUser getUser(String username) {
        StringBuffer hql= new StringBuffer("from FcUser where 1 = 1 ");
        list = new ArrayList<>();
        if(username != null && !"".equals(username)){
            hql.append("and userName = ?");
            list.add(username);
        }
        return (FcUser)super.findList(hql.toString(),list).get(0);
    }
    
    
    @Override
    public List<FcUser> getUserList() {
    	String hql="from FcUser";
    	return super.findList(hql.toString());
    }

    @Override
    public FcUser getUser(String id, String userName) {
        StringBuffer hql=new StringBuffer("from FcUser where 1 = 1");
        List<String> list=new ArrayList<>();
        if(id!=null || !"".equals(id)){
            hql.append(" and id = ?");
            list.add(id);
        }
    /*   if(userName !=null || !"".equals(userName) ){
            hql.append(" and userName = ?");
            list.add(userName);
        }*/
        return (FcUser) super.findList(hql.toString(),list).get(0);
    }

    @Override
    public void deleteFcUser(FcUser fcUser) {
        super.delete(fcUser);
    }

    @Override
    public List<FcUser> findList(String id, String userType, String userIntent, String status) {
        StringBuffer hql=new StringBuffer("from FcUser where 1 = 1");
        List<String> list=new ArrayList<>();
        if(id!=null && !"".equals(id)){
            hql.append(" and id = ?");
            list.add(id);
        }
        if(userType!= null &&!"".equals(userType)){
            hql.append("and userTypeId = ?");
            list.add(userType);
        }
        if( userIntent!=null && !"".equals( userIntent)){
            hql.append(" and userIntent = ?");
            list.add(userIntent);
        }
        if( status!=null && !"".equals( status)){
            hql.append(" and status = ?");
            list.add(status);
        }

        return super.findList(hql.toString(),list);
    }
}
