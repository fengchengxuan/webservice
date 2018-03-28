package com.fc.base.contentadmin.news.service;

import com.fc.base.contentadmin.news.entity.NewsEntity;
import com.fc.base.contentadmin.news.uitl.NewsUitl;
import com.fc.base.contentadmin.news.uitl.SreachNews;

import java.util.List;

public interface NewsService {

    String addNews(NewsEntity entity);
    SreachNews searchTitleNews(String newsTitle, String newsKey);
    SreachNews searchStateNews(String newsState, String newsType,String systemId);
    List<NewsEntity> searchTitle(String newsTitle);
    List<String> upDataService(String newNewsTitle, String htmlText, String newsTitle, String newsKey, String newsAbstract, String newsType, String userName);
    List<String> deleteNews(String newsTitle);
    List<NewsEntity> SreachId(String id);
    List<NewsEntity> findNews();
    List<NewsEntity> newsBrowserService(String newsTitle);
    List<NewsEntity> newTypeAllSerivce(String Type);//查询相应类型的文章
    NewsUitl  showNewsserivce();
}
