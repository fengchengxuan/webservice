package com.fc.base.product.productDao.productDaoImpl;

import com.fc.base.product.entity.ProApplyEntity;
import com.fc.base.product.productDao.ApplyDao;
import com.fc.base.user.entity.FcUser;
import com.fc.util.BaseDao;
import com.fc.util.entity.FreeApply;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/10/26.
 */
@Repository
public class ApplyDaoImpl extends BaseDao implements ApplyDao{
    @Autowired
    private SessionFactory sessionFactory;
    private List<ProApplyEntity> list;
    @Override//保存申请名单
    public String saveProApply(ProApplyEntity entity) {
        Session session=sessionFactory.getCurrentSession();
        session.saveOrUpdate(entity);
        return "1001";
    }

    @Override//显示所有体验申请
    public List<ProApplyEntity> showApplyDao(String userName, String company, String status) {
        Session session=sessionFactory.getCurrentSession();
        List<String> strList =new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from ProApplyEntity  where 1=1");
        if( userName!=null  &&  userName.length()>0){
            hql.append(" and userName = ?");
            strList.add(userName);
        }
        if( company!=null  && company.length()>0){
            hql.append(" and company = ?");
           strList.add(company);
        }
        if( status!=null  && status.length()>0){
            hql.append(" and status = ?");
            strList.add(status);
        }
        Query query =session.createQuery(hql.toString());
        if(strList.size()>0){
            for(int i=0 ;i<strList.size();i++)
                query.setString(i,strList.get(i));
        }
        list=query.list();
        return list;

    }

    @Override//显示申请详细信息
    public List<ProApplyEntity> applyInfoDao(int id) {
        Session session=sessionFactory.getCurrentSession();

        StringBuffer hql=new StringBuffer("from ProApplyEntity  where 1=1");
        if(id>0){
            hql.append(" and id = "+id);
        }
        Query query =session.createQuery(hql.toString());
        list=query.list();
       return list;
    }

    @Override//审核免费体验
    public String upStatusDao(ProApplyEntity entity) {
        Session session =sessionFactory.getCurrentSession();
        session.update(entity);
        session.flush();
        return "审核完成";
    }

    @Override//号码查询申请体验
    public List<ProApplyEntity> showHponeDao(String fHpone, String mHpone) {
        Session session=sessionFactory.getCurrentSession();
        List<String> strList =new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from ProApplyEntity  where 1=1");
        if( fHpone!=null  &&  fHpone.length()>0){
            hql.append(" and fHpone = ?");
            strList.add(fHpone);
        }

        if( mHpone!=null  && mHpone.length()>0){
            hql.append(" and mHpone = ?");
            strList.add(mHpone);
        }
        Query query =session.createQuery(hql.toString());
        if(strList.size()>0){
            for(int i=0 ;i<strList.size();i++)
                query.setString(i,strList.get(i));
        }
        list=query.list();
        return list;
    }

    @Override//显示用户的申请填写内容
    public ProApplyEntity userApplyDao(String userName) {
        Session session=sessionFactory.getCurrentSession();
        List<String> strList =new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from ProApplyEntity  where 1=1");
        if( userName!=null  &&  userName.length()>0){
            hql.append(" and userName = ?");
            strList.add(userName);
        }
        Query query =session.createQuery(hql.toString());
        if(strList.size()>0){
            for(int i=0 ;i<strList.size();i++)
                query.setString(i,strList.get(i));
        }
        list=query.list();
        if(list.size()<1){
            return null;
        }
        return list.get(0);
    }

    @Override
    public List<FreeApply> findFreeApply(String fcUserId) {
        String hql= "from FreeApply where fcUserId = ?";
        return super.findList(hql,fcUserId);
    }

    @Override
    public void saveFreeApply(FreeApply freeApply) {
        super.save(freeApply);
    }

    @Override
    public List<FcUser> findFreeApply() {
        String hql="from FcUser where isFreeApp = ?";
        return super.findList(hql,"1");
    }
}
