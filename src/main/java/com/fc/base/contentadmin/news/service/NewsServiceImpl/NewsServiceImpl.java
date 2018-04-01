package com.fc.base.contentadmin.news.service.NewsServiceImpl;

import com.fc.base.contentadmin.news.dao.NewsDao;
import com.fc.base.contentadmin.news.entity.NewsEntity;
import com.fc.base.contentadmin.news.service.NewsService;
import com.fc.base.contentadmin.news.uitl.NewsUitl;
import com.fc.base.contentadmin.news.uitl.SreachNews;
import com.fc.base.product.productDao.ProductDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {


    @Autowired
    private ProductDao dao;
    private SreachNews news;
    private List<NewsEntity> list;
    private NewsEntity entity;
    @Autowired
    private NewsDao newsDao;

    @Override
    public SreachNews searchStateNews(String newsState,String newsType,String systemId) {
        news=new SreachNews();
        list= newsDao.sreachState(newsState,newsType,systemId);
        news.setList(list);
        return news;
    }

    @Override
    public List<String> deleteNews(String newsTitle) {
        entity= newsDao.sreachTitleNewsDao(newsTitle).get(0);
        entity.setNewsState("删除");
        return newsDao.deleteNews(entity);
    }

    @Override
    public List<NewsEntity> SreachId(String id) {

        return newsDao.sreachIdDao(id);
    }

    @Override
    public List<String> upDataService(String userName,String newnewsTitle, String htmlText, String newsTitle, String newsKey, String newsAbstract, String newsType) {
        List<String> listS=new ArrayList<>();
        list=newsDao.sreachTitleNewsDao(newsTitle);
        if(list.size()>0){
            entity=list.get(0);
        }
        if(newnewsTitle.length()>30 && newsKey.length()>15 && newsAbstract.length()>100){
            listS.add("不符合规定");
            return listS;
        }
        if(newnewsTitle!=null && newnewsTitle!="" && !newsTitle.equals(newnewsTitle)) {
            if (newsDao.sreachTitleNewsDao(newnewsTitle).size() > 0) {
                listS.add("已有相应标题");
                return listS;
            }
        };

        Date newDate=new Date();
        Format format=new SimpleDateFormat("yyyy-MM-dd  hh:mm");
        entity.setCrateDate(format.format(newDate));
        if(newsTitle!=null && newsTitle!=""){
            entity.setNewsTitle(newsTitle.trim());
        }
        if(newsAbstract!=null && newsAbstract!=""){
            entity.setNewsTitle(newsAbstract.trim());
        }
        if(newsKey!=null && newsKey!=""){
            entity.setNewsTitle(newsKey.trim());
        }
        entity.setHtmlText(htmlText);
        entity.setUserName(userName);
        entity.setNewsType(newsType);
        listS= newsDao.upDateNews(entity,newnewsTitle);
        return listS;
    }

    private Date createDate;
    @Override
    public SreachNews searchTitleNews(String newsTitle,String newsKey) {
        news=new SreachNews();
        list= newsDao.sreachTitle(new NewsUitl().alterTitle(newsTitle),new NewsUitl().alterTitle(newsKey));
        news.setList(list);
        return news;

    }
    @Override
    public String addNews(NewsEntity entity) {
        List<NewsEntity> list =new ArrayList<NewsEntity>();
        if(entity.getNewsTitle().length()>30){
            return "标题不能超过30个";
        }else if (entity.getNewsKey().length()>15){
            return "关键字必须小于15个";
        }else if(entity.getNewsAbstract().length()>100){
            return "摘要文字不能超过100";
        }
        createDate=new Date();
        Format format=new SimpleDateFormat("yyyy-MM-dd  hh:mm");
        entity.setCrateDate(format.format(createDate));
        entity.setNewsBrowser(0);
        list= newsDao.sreachTitleNewsDao(entity.getNewsTitle());
        if(list.size()>0){
            return "已经有相应的标题";
        }

        return newsDao.addNewsDao(entity);
    }

    @Override
    public List<NewsEntity> searchTitle(String newsTitle) {

        list = newsDao.sreachTitleNewsDao(newsTitle);

        return list;
    }

    @Override//新闻浏览量
    public List<NewsEntity> newsBrowserService(String newsTitle) {
        list= newsDao.sreachTitleNewsDao(newsTitle);
        if(list.size()>0){
            list.get(0).setNewsBrowser(list.get(0).getNewsBrowser()+1);
            list=newsDao.newsBrowserDao(list.get(0));
        }
        return list;
    }

    @Override//查询全部新闻
    public List<NewsEntity> findNews() {
        return newsDao.findNews();
    }

    @Override//查询相对类型的文章
    public List<NewsEntity> newTypeAllSerivce(String Type) {
        return newsDao.newTypeAllDao(Type);
    }

    @Override//首页新闻显示
    public NewsUitl showNewsserivce() {
        NewsUitl util=new NewsUitl();
       DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd  hh:mm");//时间转换
        DateFormat format2 = new SimpleDateFormat("MM月dd日");
       List<NewsEntity> list=  newsDao.showNewsDao();//取新闻
       List<String> dateList= new ArrayList<>();//用于存时间
        List<NewsEntity> list1= new ArrayList<>();
        for(int i=list.size()-1;i>=0;i--){
            list1.add(list.get(i));
        }
        util.setList(list1);
        util.setDateList(dateList);
        Date data ;
       for(int i=0;i<list1.size();i++){
           try{
               dateList.add(list.get(i).getCrateDate());
               data=format1.parse(list.get(i).getCrateDate());
              list.get(i).setCrateDate(format2.format(data));
           }catch (Exception e){
               return null;
           }
       }
       return util;
    }

}
