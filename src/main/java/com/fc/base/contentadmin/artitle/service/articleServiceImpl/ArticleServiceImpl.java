package com.fc.base.contentadmin.artitle.service.articleServiceImpl;

import com.fc.base.contentadmin.artitle.dao.ArticleDao;
import com.fc.base.contentadmin.artitle.entity.ArticleEntity;
import com.fc.base.contentadmin.artitle.service.ArticleService;
import com.fc.base.contentadmin.artitle.uitl.ArtUitl;
import com.fc.base.contentadmin.artitle.uitl.SreachArt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by lenovo on 2017/9/21.
 */
@Service
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleDao articleDao;
    private SreachArt art;
    private List<ArticleEntity>  list;
    private ArticleEntity entity;


    @Override
    public SreachArt searchStateArt(String artState, String artType,String systemId) {
        art=new SreachArt();
        list=articleDao.sreachState(artState,artType,systemId);
        art.setList(list);
        return art;
    }

    @Override
    public List<String> upDataService(String userName,String newArtTitle, String htmlText, String artTitle, String artKey, String artAbstract, String artType) {
        List<String> listS=new ArrayList<String>();
        list=articleDao.sreachTitleArticleDao(artTitle);
        if(list.size()>0){
            entity=list.get(0);
        }
        if(newArtTitle.length()>30 && artKey.length()>15 && artAbstract.length()>100){
            listS.add("不符合规定");
            return listS;
        }
        if(newArtTitle!=null && newArtTitle!="" && !artTitle.equals(newArtTitle)) {
            if (articleDao.sreachTitleArticleDao(newArtTitle).size() > 0) {
                listS.add("已有相应标题");
                return listS;
            }
        };
        Date newDate=new Date();  //获取系统当前时间
        Format format=new SimpleDateFormat("yyyy-MM-dd  HH:mm"); //时间格式
        entity.setCrateDate(format.format(newDate));
        if(artTitle!=null && artTitle!=""){
            entity.setArtTitle(artTitle.trim());
        }
        if(artAbstract!=null && artAbstract!=""){
            entity.setArtTitle(artAbstract.trim());
        }
        if(artKey!=null && artKey!=""){
            entity.setArtTitle(artKey.trim());
        }
        entity.setHtmlText(htmlText);
        entity.setUserName(userName);
        entity.setArtType(artType);
        listS= articleDao.upDateArt(entity,newArtTitle);
        return listS;
    }

    private Date createDate;
    @Override
    public SreachArt searchTitleArticle(String artTitle, String artKey) {
        art=new SreachArt();
        list= articleDao.sreachTitle(new ArtUitl().alterTitle(artTitle),new ArtUitl().alterTitle(artKey));
        art.setList(list);
        return art;
    }
    @Override
    public String addArticle(ArticleEntity entity) {
        List<ArticleEntity> list =new ArrayList<ArticleEntity>();
        if(entity.getArtTitle().length()>30){
            return "标题不能超过30个";
        }else if (entity.getArtKey().length()>15){
            return "关键字必须小于15个";
        }else if(entity.getArtAbstract().length()>100){
            return "摘要文字不能超过100";
        }
        createDate=new Date();
        Format format=new SimpleDateFormat("yyyy-MM-dd  hh:mm");
        entity.setCrateDate(format.format(createDate));
        entity.setArtBrowser(0);
        list= articleDao.sreachTitleArticleDao(entity.getArtTitle());
        if(list.size()>0){
            return "已经有相应的标题";
        }
        return articleDao.addArticleDao(entity);
    }

    @Override
    public List<ArticleEntity> searchTitle(String artTitle) {

        list = articleDao.sreachTitleArticleDao(artTitle);

        return list;
    }


    @Override
    public List<String> deleteArt(String artTitle) {
        entity= articleDao.sreachTitleArticleDao(artTitle).get(0);
        entity.setArtState("删除");
        return articleDao.deleteArt(entity);
    }

    @Override
    public List<ArticleEntity> SreachId(String id) {
        return articleDao.sreachIdDao(id);
    }

    @Override//文章浏览量
    public List<ArticleEntity> artBrowserService(String artTitle) {//添加浏览量
        list= articleDao.sreachTitleArticleDao(artTitle);
        if(list.size()>0){
            list.get(0).setArtBrowser(list.get(0).getArtBrowser()+1);
            list=articleDao.artBrowserDao(list.get(0));
        }
        return list;
    }

    @Override//查询全部文章
    public List<ArticleEntity> findArticle() {
        return articleDao.findArticle();
    }

    @Override
    public ArtUitl showArtserivce(String artType) {
        List<String> strList= new ArrayList<>();
        ArtUitl uitl=new ArtUitl();
        DateFormat format= new SimpleDateFormat("yyyy-MM-dd  hh:mm");
        DateFormat format2 = new SimpleDateFormat("MM月dd日");
        List<ArticleEntity>   list=  articleDao.showArtDao(artType.trim());
        List<ArticleEntity> list1= new ArrayList<>();
        for(int i=list.size()-1;i>=0;i--){
            list1.add(list.get(i));
        }
        uitl.setList(list1);
        uitl.setDateList(strList);
        Date data ;
        if(list!=null && !list.isEmpty()) {
            for (int i = 0; i < list.size(); i++) {
                try {
                    strList.add(list.get(i).getCrateDate());
                    data = format.parse(list.get(i).getCrateDate());
                    list.get(i).setCrateDate(format2.format(data));
                } catch (Exception e) {
                    e.printStackTrace();
                    return null;
                }
            }
        }
        return uitl;
    }

    @Override//
    public List<ArticleEntity> showDateOrFC(String type, String id) {
       list= articleDao.showDateOrFCDao(type,id);
       if(list.size()>0){
           artBrowserService(list.get(0).getArtTitle());
    }
        return list;
    }
}
