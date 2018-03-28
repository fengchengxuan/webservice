package com.fc.base.contentadmin.artitle.uitl;

import com.fc.base.contentadmin.artitle.entity.ArticleEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/9/22.
 */
public class ArtUitl{
    public List<ArticleEntity> list;
    public List<String> dateList;
    public String alterTitle(String artTitle){
        String value="例如：";
        return artTitle.replace(value,"");
    }

    public List<ArticleEntity> getList() {
        return list;
    }

    public void setList(List<ArticleEntity> list) {
        this.list = list;
    }

    public List<String> getDateList() {
        return dateList;
    }

    public void setDateList(List<String> dateList) {
        this.dateList = dateList;
    }
}
