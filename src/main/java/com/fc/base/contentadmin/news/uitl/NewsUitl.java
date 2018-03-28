package com.fc.base.contentadmin.news.uitl;

import com.fc.base.contentadmin.news.entity.NewsEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/9/22.
 */
public class NewsUitl {
    public List<NewsEntity>  list;//存新闻表
    public List<String> dateList;

    public String alterTitle(String newsTitle){
        String value="例如：";
        return newsTitle.replace(value,"");
    }

    public List<NewsEntity> getList() {
        return list;
    }

    public void setList(List<NewsEntity> list) {
        this.list = list;
    }

    public List<String> getDateList() {
        return dateList;
    }

    public void setDateList(List<String> dateList) {
        this.dateList = dateList;
    }
}
