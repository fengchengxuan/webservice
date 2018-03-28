package com.fc.base.special.Dao.DaoImpl;

import com.fc.base.special.Dao.SpecialDao;
import com.fc.base.special.entity.SpecialEntity;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/11/17.
 */
@Repository
public class SpecialDaoImpl   implements SpecialDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public String addSprcial(SpecialEntity entity) {
       Session session=sessionFactory.getCurrentSession();
       try{
           int i=(int) session.save(entity);
           if(i>0){
               return "添加成功";
           }
       }catch (Exception e){

       }
        return "失败";

    }

    @Override//根据条件查询专题
    public List<SpecialEntity> sreachSpecialDao(String specialName ,String adminType, String state, String speType) {//操作人类型 状态 类型
       Session session=sessionFactory.getCurrentSession();
       List<String> listStr=new ArrayList<String>();
       List<SpecialEntity> specialList=new ArrayList<SpecialEntity>();
       StringBuffer hql=new StringBuffer("from SpecialEntity where  1=1");
        if(specialName!=null && specialName.length()>0){
            hql.append(" and specialName = ?");
            listStr.add(specialName);
        }
        if(adminType!=null && adminType.length()>0&&!adminType.equals("操作人")){
            hql.append(" and adminType = ?");
            listStr.add(adminType);
        }
        if( state!=null && state.length()>0 && !state.equals("专题状态")){
            hql.append(" and  state = ?");
            listStr.add(state);
        }
        if(speType!=null && speType.length()>0 && !speType.equals("专题类型")){
            hql.append(" and speType = ?");
            listStr.add(speType);
        }
        Query query=session.createQuery(hql.toString());
        if(listStr.size()>0){
            for(int i=0;i<listStr.size();i++){
                query.setString(i,listStr.get(i));
            }
        }
        specialList=query.list();
        return specialList;
    }

    @Override//模糊查询（关键词，标题）
    public List<SpecialEntity> vagueSearchDao(String key, String title) {
        Session session=sessionFactory.getCurrentSession();
        StringBuffer hql=new StringBuffer("from SpecialEntity where 1 = 1 ");
        List<String> strList=new ArrayList<String>();
        if(key!=null &&key.length()>0){
            hql.append("and specialKey like ?");
            strList.add(key);
        }
        if(title!=null &&title.length()>0){
            hql.append("and specialTitle like ?");
            strList.add(title);
        }
        Query query=session.createQuery(hql.toString());
        if(strList.size()>0){
            for(int i=0;i<strList.size();i++){
                query.setParameter(i,"%"+strList.get(i)+"%");
            }
        }
        return query.list();
    }

    @Override//更新
    public String update(SpecialEntity entity) {
        Session session=sessionFactory.getCurrentSession();
        session.update(entity);
        session.flush();
        return "修改成功";
    }

    @Override
    public void deleteSpecial(SpecialEntity entity) {
        Session session=sessionFactory.getCurrentSession();
        session.delete(entity);
        session.flush();
    }

    @Override
    public List<SpecialEntity> findEntity(String specialName) {
        Session session=sessionFactory.getCurrentSession();
        StringBuffer hql=new StringBuffer("from SpecialEntity where 1 = 1 ");
        List<String> arr =new ArrayList<>();
        if(specialName!=null && specialName.length()>0){
            hql.append("and specialName = ?");
            arr.add(specialName);
        }
        Query query=session.createQuery(hql.toString());
        if(arr.size()>0){
            for(int i=0;i<arr.size();i++){
               query.setString(i,arr.get(i));
            }
        }
        return query.list();
    }
}

