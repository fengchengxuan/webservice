package com.fc.login.Dao.impl;

import com.fc.login.Dao.AnonyUserDao;
import com.fc.login.model.AnonymousEntity;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/10/31.
 */
@Repository
public class AnonyUserDaoImpl implements AnonyUserDao {
    @Autowired
    private SessionFactory sessionFactory;
    public Session createSession(){
        return this.sessionFactory.getCurrentSession();
    }

    @Override
    public void saveAnonyUser(String anonymousUser, String password) {
        AnonymousEntity entity =new AnonymousEntity();
        entity.setVipname(anonymousUser);
        entity.setPassword(password);
        entity.setAnonymousUser(anonymousUser);
        createSession().saveOrUpdate(entity);
        createSession().flush();

    }

    @Override
    public List<AnonymousEntity> getAnonymousUser(String id,String anonymousUser,String password) {
        StringBuffer hql =new StringBuffer("from AnonymousEntity where 1=1 ");
        List<String> strArr=new ArrayList<>();
        if(id!=null && id.length()>0){
            hql.append("and id = ?");
            strArr.add(id);
        }
        if(anonymousUser!=null && anonymousUser.length()>0){
            hql.append("and anonymousUser = ?");
            strArr.add(anonymousUser);
        }
        if(password!=null && password.length()>0){
            hql.append("and password = ?");
            strArr.add(password);
        }
        Query query = createSession().createQuery(hql.toString());
        if(strArr.size()>0){
            for(int i=0 ;i<strArr.size();i++)
                query.setString(i,strArr.get(i));
        }
        List<AnonymousEntity> list=query.list();
        return list;
    }
}
