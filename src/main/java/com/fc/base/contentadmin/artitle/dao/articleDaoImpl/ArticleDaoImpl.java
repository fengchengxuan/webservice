package com.fc.base.contentadmin.artitle.dao.articleDaoImpl;

import com.fc.base.contentadmin.artitle.dao.ArticleDao;
import com.fc.base.contentadmin.artitle.entity.ArticleEntity;
import com.fc.util.BaseDao;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;


/**
 * Created by lenovo on 2017/9/21.
 */
@Repository
public class ArticleDaoImpl extends BaseDao implements ArticleDao {

    private List<ArticleEntity> list;
    private  List<String> listPara;
    @Override//类型查询
    public List<ArticleEntity> sreachState(String artState, String artType,String systemId) {
        listPara=new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from ArticleEntity where  1=1");
        if(artState!=null && artState!=""){
            hql.append(" and artState = ?");
            listPara.add(artState);
        }
       if(artType!=null && artType.length()>0){
            hql.append("and artType = ?");
            listPara.add(artType);
        }
        if(systemId!=null && systemId.length()>0){
                hql.append("and adminType = ?");
                listPara.add(systemId);
        }
        return super.findList(hql.toString(),listPara);
    }

    @Override//更新
    public List<String> upDateArt(ArticleEntity entity, String newArtTitle) {

        listPara=new ArrayList<String>();
        if(newArtTitle!="" && newArtTitle!=null){
            entity.setArtTitle(newArtTitle.trim());
        }
       super.update(entity);
        listPara.add("更新成功");
        return listPara;
    }

    @Override//条件查询
    public List<ArticleEntity> sreachTitle(String artTitle , String artKey) {
        Session session =createSession();
        listPara=new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from ArticleEntity where 1= 1");
        if(artTitle!=null && artTitle!=""){
            hql.append(" and artTitle like ?");
            listPara.add(artTitle);
        }
        if(artKey!=null && artKey!=""){
            hql.append("and artKey like ?");
            listPara.add(artKey);
        }
        return super.findList(hql.toString(),listPara);
    }

    @Override//查询
    public List<ArticleEntity> sreachTitleArticleDao(String artTitle) {
        listPara=new ArrayList<String>();

        StringBuffer hql =new StringBuffer("from ArticleEntity where 1=1 ");
        if(artTitle!=null && artTitle!=""){
            hql.append("and artTitle = ?");
            listPara.add(artTitle);
        }
      return   super.findList(hql.toString(),listPara);
    }


    @Override//添加
    public String addArticleDao(ArticleEntity entity)  {
        int i=0;
        Session session=createSession();

        entity.setArtState("正常");
        i = (int) session.save(entity);

        if(i>0){
            return "添加成功";
        }
        return "添加失败";
    }

    @Override//id查询
    public List<ArticleEntity> sreachIdDao(String id) {
        listPara= new ArrayList<String>();
        StringBuffer hql =new StringBuffer("from ArticleEntity where 1=1 ");
        if(id!=null && id.length()>0){
            hql.append("and id = ?");
            listPara.add(id);
        }
     return super.findList(hql.toString(),listPara);
    }

    @Override//(假删除)
    public List<String> deleteArt(ArticleEntity entity) {
        Session session =createSession();
        listPara=new ArrayList<String>();
        session.update(entity);
        session.flush();
        listPara.add("删除成功");
        return listPara;
    }

    @Override//显示文章( 正常状态)
    public List<ArticleEntity> findArticle() {
        listPara= new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from ArticleEntity where 1=1 ");
        hql.append(" and artState = ?");
        listPara.add("正常");
      return super.findList(hql.toString(),listPara);
    }
    @Override//更新浏览量
    public List<ArticleEntity> artBrowserDao(ArticleEntity entity) {
        createSession().update(entity);
        createSession().flush();
        list=new ArrayList<>();
        list.add(entity);
        return  list;
    }

    @Override
    public List<ArticleEntity> showArtDao(String artType) {

       List<String>list=new ArrayList();

    StringBuffer hql=new StringBuffer("from ArticleEntity where artState = ?") ;
    list.add("正常");
    if(artType!=null){
        hql.append("and artType = ?");
        list.add(artType);
    }
     return  super.findList(hql.toString(),list);

    }

    @Override
    public List<ArticleEntity> showDateOrFCDao(String type, String id) {
        listPara= new ArrayList<>();
        StringBuffer hql=new StringBuffer("from ArticleEntity where 1=1 ");
        hql.append(" and artState = ?");
        listPara.add("正常");
        if(type!=null && type.length()>0){
            hql.append(" and artType = ?");
            listPara.add(type);
        }
        if(id!=null && id.length()>0){
            hql.append(" and id = ?");
            listPara.add(id+"");
        }
        return super.findList(hql.toString(),listPara);
    }
}
