package com.fc.base.contentadmin.artitle.service;

import com.fc.base.contentadmin.artitle.entity.ArticleEntity;
import com.fc.base.contentadmin.artitle.uitl.ArtUitl;
import com.fc.base.contentadmin.artitle.uitl.SreachArt;

import java.util.List;

/**
 * Created by lenovo on 2017/9/21.
 */
public interface ArticleService {
    String addArticle(ArticleEntity entity);
    SreachArt searchTitleArticle(String artTitle, String artKey);
    SreachArt searchStateArt(String artState, String artType,String systemId);
    List<ArticleEntity> searchTitle(String artTitle);
    List<String> upDataService(String newArtTitle, String htmlText, String artTitle, String artKey, String artAbstract, String artType, String userName);
    List<String> deleteArt(String artTitle);
    List<ArticleEntity> SreachId(String id);
    List<ArticleEntity> findArticle();
    List<ArticleEntity> artBrowserService(String artTitle);
    ArtUitl showArtserivce(String artType);
    List<ArticleEntity> showDateOrFC(String type,String id);
}
