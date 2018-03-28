package com.fc.base.contentadmin.news.dao.NewsDaoImpl;

import com.fc.base.contentadmin.news.dao.NewsDao;
import com.fc.base.contentadmin.news.entity.NewsEntity;
import com.fc.util.BaseDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class NewsDaoImpl extends BaseDao<NewsEntity> implements NewsDao {

    private List<NewsEntity> list;
    private  List<String> listPara;
    @Autowired
    private SessionFactory sessionFactory;

    @Override//类型查询
    public List<NewsEntity> sreachState(String newsState, String newsType,String systemId) {
        listPara=new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from NewsEntity where  1=1");
        if(newsState!=null && newsState.length()>0){
            hql.append(" and newsState = ?");
            listPara.add(newsState);
        }
        if(newsType!=null && newsType.length()>0){
            hql.append("and newsType = ?");
            listPara.add(newsType);
        }
        if(systemId!=null && systemId.length()>0){
            if(!"0".equals(systemId)) {
                hql.append("and adminType = ?");
                listPara.add(systemId);
            }
        }
        return super.findList(hql.toString(),listPara);
    }

    @Override//更新
    public List<String> upDateNews(NewsEntity entity, String newNewsTitle) {

        listPara=new ArrayList<>();
        if(newNewsTitle!="" && newNewsTitle!=null){
            entity.setNewsTitle(newNewsTitle.trim());
        }
        createSession().update(entity);
        createSession().flush();
        listPara.add("更新成功");
        return listPara;
    }

    @Override//(假删除)
    public List<String> deleteNews(NewsEntity entity) {
        Session session =createSession();
        listPara=new ArrayList<>();
        session.update(entity);
        session.flush();
        listPara.add("删除成功");
        return listPara;
    }

    @Override//条件查询(模糊查询 标题，关键词)
    public List<NewsEntity> sreachTitle(String newsTitle , String newsKey) {
        listPara=new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from NewsEntity where 1= 1");
        if(newsTitle!=null && newsTitle!=""){
            hql.append(" and newsTitle like ?");
            listPara.add(newsTitle);
        }
        if(newsKey!=null && newsKey!=""){
            hql.append("and newsKey like ?");
            listPara.add(newsKey);
        }
        return super.findList(hql.toString(),listPara);
    }

    @Override//标题查询
    public List<NewsEntity> sreachTitleNewsDao(String newsTitle) {
        listPara=new ArrayList<String>();
        StringBuffer hql =new StringBuffer("from NewsEntity where 1=1 ");
        if(newsTitle!=null && newsTitle!=""){
            hql.append("and newsTitle = ?");
            listPara.add(newsTitle);
        }
        return super.findList(hql.toString(),listPara);

    }

    @Override//添加
    public String addNewsDao(NewsEntity entity)  {
        entity.setNewsState("正常");
        int  i = (int) createSession().save(entity);
        if(i>0){
            return "添加成功";
        }
        return "添加失败";
    }

    @Override//id查询
    public List<NewsEntity> sreachIdDao(String id) {
        listPara= new ArrayList<String>();
        StringBuffer hql =new StringBuffer("from NewsEntity where 1=1 ");
        if(id!=null && id!=""){
            hql.append("and id = ?");
            listPara.add(id);
        }
        return super.findList(hql.toString(),listPara);
    }

    @Override//显示新闻( 正常状态)
    public List<NewsEntity> findNews() {
        listPara= new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from NewsEntity where 1=1 ");
        hql.append(" and newsState = ?");
        listPara.add("正常");
        return super.findList(hql.toString(),listPara);
    }
    @Override//更新浏览量
    public List<NewsEntity> newsBrowserDao(NewsEntity entity) {
        list=new ArrayList<NewsEntity>();
        createSession().update(entity);
        createSession().flush();
        list.add(entity);
        return  list;
    }

    @Override
    public List<NewsEntity> newTypeAllDao(String type) {
        listPara= new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from NewsEntity where 1=1 ");
        if(type!=null && type.length()>0){
            hql.append("and newsType = ?");
            listPara.add(type);
        }
        return super.findList(hql.toString(),listPara);
    }
    @Override//首页新闻显示
    public List<NewsEntity> showNewsDao() {
     String hql="from NewsEntity where 1 = 1 and newsState = ?";
       List<String> list =new ArrayList<>();
       list.add("正常");
       return  super.findList(hql,list);
    }

}
