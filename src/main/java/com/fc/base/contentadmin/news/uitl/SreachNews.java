package com.fc.base.contentadmin.news.uitl;

import com.fc.base.contentadmin.news.entity.NewsEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/9/23.
 */
public class SreachNews {
    private List<NewsEntity> list;
    private int totalNum;
    private int currentPage=20;

    public List<NewsEntity> getList() {
        return list;
    }

    public int getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(int totalNum) {
        this.totalNum = totalNum;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public void setList(List<NewsEntity> list){
        totalNum=list.size()/currentPage;
        if(list.size()%currentPage>0){

            totalNum++;
        }

        this.list=list;

    }
}
