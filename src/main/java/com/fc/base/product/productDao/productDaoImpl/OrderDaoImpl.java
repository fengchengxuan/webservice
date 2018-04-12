package com.fc.base.product.productDao.productDaoImpl;

import com.fc.base.product.entity.OrderEntity;
import com.fc.base.product.productDao.OrderDao;
import com.fc.util.BaseDao;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/10/19.
 */
@Repository
public class OrderDaoImpl extends BaseDao implements OrderDao{
    @Override//保存订单
    public String saveOrder(OrderEntity entity) {
        super.save(entity);
        return "1001";
    }
    @Override//查询是否有相同未付款的订单
    public List<OrderEntity> showOrderDao(String userName, int pro_number, String title, double pro_total, String pro_time, Double disCount,String scheme) {
        List<OrderEntity> list =new ArrayList<OrderEntity>();
        List<String>  proInfo=new ArrayList<String>();
        DecimalFormat df=new DecimalFormat("#0.00");
        String pro_State="未付款";
        StringBuffer hql=new StringBuffer("from ProOrderEntity  where 1=1");
        if( pro_number>0){
            hql.append(" and proNum = "+pro_number);
        }
        if( userName!=null &&  userName!=""){
            hql.append(" and userName = ?");
            proInfo.add(userName);
        }
        if( title!=null &&  title!=""){
            hql.append(" and title = ?");
            proInfo.add(title);
        }
        if( pro_State!=null &&  pro_State!=""){
            hql.append(" and state = ?");
            proInfo.add(pro_State);
        }
        if( scheme!=null &&  scheme!=""){
            hql.append(" and scheme = ?");
            proInfo.add(scheme);
        }
        if( pro_time!=null &&  pro_time!=""){
            hql.append(" and  time =?");
            proInfo.add(pro_time);
        }
       if( df.format(pro_total)!=null &&  df.format(pro_total) !=""){
            hql.append(" and  total = ?");
            proInfo.add(df.format(pro_total));
        }
       if( df.format(disCount)!=null &&  df.format(disCount) !=""){
            hql.append(" and  disCount =?");
            proInfo.add(df.format(disCount));
        }
        Query query =createSession().createQuery(hql.toString());
        if(proInfo.size()>0){
            for(int i=0 ;i<proInfo.size();i++)
                query.setString(i,proInfo.get(i));
        }
        list=query.list();
        return list;
    }
    @Override//保存编码
    public void upDateOrder(OrderEntity entity) {

        createSession().update(entity);
        createSession().flush();
    }
    @Override//查询有没有未完成的订单
    public List<OrderEntity> sreachOrderDao(String userName, String title, String state) {

        List<OrderEntity> list =new ArrayList<OrderEntity>();
        List<String>  proInfo=new ArrayList<String>();
        DecimalFormat df=new DecimalFormat("#0.00");
        String pro_State="未付款";
        StringBuffer hql=new StringBuffer("from ProOrderEntity  where 1=1");
        if( userName!=null &&  userName.length()>0){
            hql.append(" and userName = ?");
            proInfo.add(userName);
        }
        if( title!=null &&  title.length()>0){
            hql.append(" and title = ?");
            proInfo.add(title);
        }
        if( pro_State!=null &&  pro_State.length()>0){
            hql.append(" and state = ?");
            proInfo.add(pro_State);
        }

       return super.findList(hql.toString(),proInfo);
    }
    @Override//删除订单
    public void deleteOrder(OrderEntity entity) {
        createSession().delete(entity);
        createSession().flush();
    }

    @Override//显示用户所有的订单
    public List<OrderEntity> showAllDao(String userId) {

        List<String>  proInfo=new ArrayList<>();
        StringBuffer hql=new StringBuffer("from OrderEntity  where 1=1");
       if( userId!=null &&  userId!=""){
            hql.append(" and fcUserId = ?");
            proInfo.add(userId);
        }
      return super.findList(hql.toString(),proInfo);
    }

    @Override//根据状态显示
    public List<OrderEntity> stateAllDao(String userName, String state, String transaction) {
        List<String>  proInfo=new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from ProOrderEntity  where 1=1");
        if( userName!=null &&  userName.length()!=0){
            hql.append(" and userName = ?");
            proInfo.add(userName);
        }
        if( state!=null && state.length()!=0){
            hql.append(" and state = ?");
            proInfo.add(state);
        }
        if( transaction!=null &&  transaction.length()!=0){
            hql.append(" and transaction = ?");
            proInfo.add(transaction);
        }
        return super.findList(hql.toString(),proInfo);
    }

    @Override//查询免费体验订单
    public List<OrderEntity> srechFreeExperienceDao(String title, String scheme) {


        List<String>  proInfo=new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from ProOrderEntity  where 1=1");
        if( title!=null &&  title!=""){
            hql.append(" and title = ?");
            proInfo.add(title);
        }
        if( scheme!=null  &&  scheme !=""){
            hql.append(" and scheme = ?");
            proInfo.add(scheme);
        }
        return super.findList(hql.toString(),proInfo);
    }
    @Override//根据编码取表单
    public List<OrderEntity> getProOrderDao(String code) {

        List<String>  proInfo=new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from ProOrderEntity  where 1=1");
        if( code!=null &&  "".equals("")){
            hql.append(" and code = ?");
            proInfo.add(code);
        }
      return super.findList(hql.toString(),proInfo);
    }


    @Override
    public List<OrderEntity> findOrder() {//查询总订单量
        StringBuffer hql=new StringBuffer("from  OrderEntity  where 1=1");
        return super.findList(hql.toString());
    }
}
