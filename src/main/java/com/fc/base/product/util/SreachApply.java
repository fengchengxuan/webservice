package com.fc.base.product.util;

import com.fc.base.product.entity.ProApplyEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/10/27.
 */
public class SreachApply {
    private int totalNum;
    private int currentPage=20;
    private List<ProApplyEntity> applyList;

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

    public List<ProApplyEntity> getApplyList() {
        return applyList;
    }

    public void setApplyList(List<ProApplyEntity> applyList) {
        totalNum=applyList.size()/currentPage;
        if(applyList.size()%currentPage>0){

            totalNum++;
        }
        if(totalNum==0){
            totalNum=1;
        }
        this.applyList = applyList;
    }
}
