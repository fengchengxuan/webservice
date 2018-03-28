package com.fc.base.product.productDao.productDaoImpl;

import com.fc.base.product.entity.GivenFreeEntity;
import com.fc.base.product.entity.ProductEntity;
import com.fc.base.product.entity.ProductInofEntity;
import com.fc.base.product.productDao.ProductDao;
import com.fc.util.BaseDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;


/**
 * Created by lenovo on 2017/9/21.
 */
@Repository
public class ProductDaoImpl extends BaseDao implements ProductDao {
    private List<ProductEntity> list;
    private  List<String> listPara;
    @Override//类型查询
    public List<ProductEntity> sreachState(String proState,String proType ,String systemId) {
       listPara=new ArrayList<String>();
       list=new ArrayList<ProductEntity>();
       StringBuffer hql=new StringBuffer("from ProductEntity where  1=1");
       if(proState!=null && proState.length()>0){
           hql.append(" and proState = ?");
           listPara.add(proState);
       }
       if(proType!=null && proType.length()>0){
           hql.append("and proType = ?");
           listPara.add(proType);
       }
        if(systemId!=null && systemId.length()>0){
           if(!"0".equals(systemId)) {
               hql.append("and adminType = ?");
               listPara.add(systemId);
           }
        }

       return  super.findList(hql.toString(),listPara);
    }

    @Override//更新
    public @ResponseBody List<String> upDatePro(ProductEntity entity, String newProTitle) {

        listPara=new ArrayList<String>();
        if(newProTitle!="" && newProTitle!=null){
             entity.setProTitle(newProTitle.trim());
        }
        super.update(entity);
        listPara.add("更新成功");
        return listPara;
    }

    @Override//(假删除)
    public List<String> deletePro(ProductEntity entity) {
       List<String> list=new ArrayList<String>();
        createSession().update(entity);
        createSession().flush();
        list.add("删除成功");
        return list;
    }

    @Override//条件查询(模糊查询 标题，关键词)
    public List<ProductEntity> sreachTitle(String proTitle ,String proKey) {
        list=new ArrayList<ProductEntity>();
        listPara=new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from ProductEntity where 1= 1");
        if(proTitle!=null && proTitle.length()>0){
            hql.append(" and proTitle like ?");
            listPara.add(proTitle);
        }

        if(proKey!=null && proKey.length()>0){
            hql.append("and proKey like ?");
            listPara.add(proKey);
        }

        return super.findList(hql.toString(),listPara);
    }

    @Override//标题查询
    public List<ProductEntity> sreachTitleProductDao(String proTitle) {
        list=new ArrayList<ProductEntity>();
        listPara=new ArrayList<String>();

        StringBuffer hql =new StringBuffer("from ProductEntity where 1=1 ");
        if(proTitle!=null && proTitle!=""){
            hql.append("and proTitle = ?");
            listPara.add(proTitle);
        }


           return super.findList(hql.toString(),listPara);

    }


    @Override//添加产品
    public String addProductDao(ProductEntity entity)  {

        Session session=createSession();
        try{
            int id = (Integer)session.save(entity);
        }catch (Exception e){
            return "失败";
        }
        return "添加成功";
    }

    @Override//id查询
    public List<ProductEntity> sreachIdDao(String id) {

        list=new ArrayList<ProductEntity>();
        listPara= new ArrayList<String>();
        StringBuffer hql =new StringBuffer("from ProductEntity where 1=1 ");
        if(id!=null && id!=""){
            hql.append("and id = ?");
            listPara.add(id);
        }
        Query query =createSession().createQuery(hql.toString());
        if(listPara.size()>0){
            for(int i=0 ;i<listPara.size();i++)
                query.setString(i,listPara.get(i));
        }
        list=query.list();
        return list;

    }

    @Override//显示产品( 正常状态)
    public List<ProductEntity> proShowDao() {
        listPara= new ArrayList<String>();
        StringBuffer hql=new StringBuffer("from ProductEntity where 1=1 ");
        hql.append(" and proState = ?");
        listPara.add("正常");
        list=new ArrayList<ProductEntity>();
        Query query =createSession().createQuery(hql.toString());
        if(listPara.size()>0){
            for(int i=0 ;i<listPara.size();i++)
                query.setString(i,listPara.get(i));
        }
        list =query.list();

        return list;
    }
    @Override//更新浏览量
    public List<ProductEntity> proBrowserDao(ProductEntity entity) {

        list=new ArrayList<ProductEntity>();
        createSession().update(entity);
        createSession().flush();
        list.add(entity);
        return list;
    }

    @Override//保存产品详细信息
    public String saveProInfoDao(ProductInofEntity entity) {
        int i=0;
        Session session=createSession();
        i=(int) session.save(entity);
        if(i>0){
            return i+"";
        }
        return "失败";
    }

    @Override
    public List<ProductInofEntity> sreachProInfoDao(String demand, String proService) {

        listPara=new ArrayList<String>();
       List<ProductInofEntity> proInfoList=new ArrayList<ProductInofEntity>();
        StringBuffer hql=new StringBuffer("from ProductInofEntity where  1=1");
        if(demand!=null && demand.length()>0){
            hql.append(" and demand = ?");
            listPara.add(demand);
        }
        if(proService!=null && proService.length()>0){
            hql.append("and service = ?");
            listPara.add(proService);
        }
    return super.findList(hql.toString(),listPara);
    }
    @Override//更新产品信息
    public String upDateInfoDao(ProductInofEntity entity) {

        createSession().update(entity);
        createSession().flush();
        return "成功";
    }

    @Override
    public void deleteDemand(String id) {

        String hql= "from ProductInofEntity where  id="+id;
        Query query=createSession().createQuery(hql);
        List<ProductInofEntity> list=query.list();
        ProductInofEntity entity=list.get(0);
        createSession().delete(entity);
        createSession().flush();
    }

    @Override
    public void saveFree(GivenFreeEntity entity) {
        Session session=createSession();
        try{
            String id = (String) session.save(entity);
            session.flush();
        }catch (Exception e){
         e.getStackTrace();
        }
    }

    @Override
    public List<ProductInofEntity> findIdProInof(String  id) {

        String hql= "from ProductInofEntity where  id = "+id;
        Query query=createSession().createQuery(hql);
        return  query.list();
    }
}
