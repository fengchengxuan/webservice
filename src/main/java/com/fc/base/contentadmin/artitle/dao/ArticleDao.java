package com.fc.base.contentadmin.artitle.dao;

import com.fc.base.contentadmin.artitle.entity.ArticleEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/9/21.
 */
public interface ArticleDao {
    //添加
    String addArticleDao(ArticleEntity entity);
    //title查询
    List<ArticleEntity> sreachTitleArticleDao(String artTitle);
    //title模糊查询
    List<ArticleEntity> sreachTitle(String artTitle, String artKey);
    //type查询
    List<ArticleEntity> sreachState(String artState, String artType,String systemId);
    //更新
    List<String> upDateArt(ArticleEntity entity, String newArtTitle);
    //删除(修改表的状态，假删)
    List<String> deleteArt(ArticleEntity entity);
    //根据id查数据
    List<ArticleEntity> sreachIdDao(String id);
    //查询全部
    List<ArticleEntity> findArticle();
    //更新浏览量
    List<ArticleEntity> artBrowserDao(ArticleEntity entity);

    List<ArticleEntity> showArtDao(String artType);
    List<ArticleEntity> showDateOrFCDao(String type,String id);
}
