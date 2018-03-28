package com.fc.base.contentadmin.artitle.uitl;

import com.fc.base.contentadmin.artitle.entity.ArticleEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/9/23.
 */
public class SreachArt {
    private List<ArticleEntity> list;
    private int totalNum;
    private int currentPage=20;

    public List<ArticleEntity> getList() {
        return list;
    }

    public void setList(List<ArticleEntity> list) {
        totalNum=list.size()/currentPage;
        if(list.size()%currentPage>0){

            totalNum++;
        }

        this.list=list;
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
}
