package com.fc.base.login.dao.impl;

import com.fc.base.login.dao.IUserDao;
import com.fc.base.login.model.User;
import com.fc.util.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class UserDao extends BaseDao<User> implements IUserDao {

    @Override
    public User getEmail(String emails) {
        String hql = "from User where email=?";
        Object[]args = {emails};
        return super.findEntity(hql,args);
    }

    @Override
    public User getPhone(String phone) {
        String hql = "from User where phonenumber=?";
        Object[]args = {phone};
        return super.findEntity(hql,args);
    }

    @Override
    public User getUser(String loginName, String password) {
        String hql = "from User where loginName=? and password=?";
        Object[]args = {loginName,password};
        return super.findEntity(hql,args);
    }
    @Override
    public List<User> show() {
        String hql = "from User";
        return super.findList(hql,new Object[]{});
    }
    @Override
    public List<User> showUser(String userName, String state, String level, String ip,String phoneNum){
        StringBuffer hql =new  StringBuffer("from User where 1= 1");
        List<String> list =new ArrayList<String>();
        if(userName!=null && userName.length()>0){
            hql.append("and loginName = ?");
            list.add(userName);
        }
        if(state!=null && state.length()>0){
            hql.append("and state = ?");
            list.add(state);
        }
        if(level!=null && level.length()>0){
            hql.append("and level = ?");
            list.add(level);
        }
        if(ip!=null && ip.length()>0){
            hql.append("and  ip = ?");
            list.add(ip);
        }
        if(phoneNum!=null && phoneNum.length()>0){
            hql.append("and  phonenumber = ?");
            list.add(phoneNum);
        }
        return super.findList(hql.toString(),list);
    }
    @Override
    public void addUser(User entity) {
         super.saveOrUpdate(entity);
    }
    @Override
    public void delete(String loginName) {
        List<User> list =showUser(loginName,"","","","");
        if(list!=null && list.size()>0){
            createSession().delete(list.get(0));
            createSession().delete(list.get(0).getPermissions());
            createSession().flush();
        }

    }
    @Override
    public void updateUser(User user) {
        createSession().update(user.getPermissions());
        createSession().update(user);
        createSession().flush();
    }

    @Override
    public User getName(String loginName) {
        String hql = "from User where loginName=?";
        Object[]args = {loginName};
        return super.findEntity(hql,args);
    }
}
