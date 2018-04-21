package com.fc.base.user.Util;

import com.fc.base.user.entity.FcUser;

import java.util.List;

public class FcUserUtil {
    private List<FcUser> list;
    private int totalNum=0;
    private int currentPage=20;

    public List<FcUser> getList() {
        return list;
    }

    public void setList(List<FcUser> list) {
        totalNum=list.size()/currentPage;
        if(list.size()%currentPage>0){
            totalNum++;
        }
        this.list = list;
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
