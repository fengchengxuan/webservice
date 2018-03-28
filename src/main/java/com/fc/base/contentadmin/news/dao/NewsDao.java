package com.fc.base.contentadmin.news.dao;

import com.fc.base.contentadmin.news.entity.NewsEntity;

import java.util.List;

public interface NewsDao {
    //添加
    String addNewsDao(NewsEntity entity);
    //title查询
    List<NewsEntity> sreachTitleNewsDao(String newsTitle);
    //title模糊查询
    List<NewsEntity> sreachTitle(String newsTitle, String newsKey);
    //type查询
    List<NewsEntity> sreachState(String newsState, String newsType,String systemId);
    //更新
    List<String> upDateNews(NewsEntity entity, String newNewsTitle);
    //删除(修改表的状态，假删)
    List<String> deleteNews(NewsEntity entity);
    //根据id查数据
    List<NewsEntity> sreachIdDao(String id);
    //查询全部
    List<NewsEntity> findNews();
    //更新浏览量
    List<NewsEntity> newsBrowserDao(NewsEntity entity);

    List<NewsEntity> newTypeAllDao(String type);

    List<NewsEntity> showNewsDao();
}
