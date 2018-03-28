package com.fc.base.product.productDao.productDaoImpl;

import com.fc.base.product.entity.ProCommentEntity;
import com.fc.base.product.productDao.ProCommentDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/10/18.
 */
@Repository
public class ProCommentDaoImpl implements ProCommentDao {
    @Autowired
    private SessionFactory sessionFactory;
    private Session session;
    private ProCommentEntity commentEntity;
    private List<String> list;

    @Override//查询用户是否重复提交
    public List<ProCommentEntity> sreachCommentDao(String userName, String content, String proTitle) {
        session=sessionFactory.getCurrentSession();
        list =new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from ProCommentEntity where 1= 1 ");
        if(userName!=null && userName!=""){
            hql.append("and userName = ?");
            list.add(userName);
        }
        if(content!=null && content!=""){
            hql.append("and content = ?");
            list.add(content);
        }
        if(proTitle!=null && proTitle!=""){
            hql.append("and proTitle = ?");
            list.add(proTitle);
        }
        Query query =session.createQuery(hql.toString());
        if(list.size()>0){
            for(int i=0 ;i<list.size();i++)
                query.setString(i,list.get(i));
        }
        List<ProCommentEntity> listComment=new ArrayList<ProCommentEntity>();
        listComment=query.list();

        return listComment;
    }

    @Override//添加评论
    public List<String> addCommentDao(ProCommentEntity entity) {
        list=new ArrayList<String>();
        session=sessionFactory.getCurrentSession();
        session.saveOrUpdate(entity);
        list.add("提交成功");
        return list;
    }

}
