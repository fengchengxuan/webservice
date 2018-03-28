package com.fc.base.special.uitl;

import com.fc.base.special.entity.SpecialEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/11/22.
 */
public class SpecialUitl {
    private List<SpecialEntity> specialList;
    private int totalNum;
    private int currentPage=20;

    public List<SpecialEntity> getSpecialList() {
        return specialList;
    }

    public void setSpecialList(List<SpecialEntity> specialList) {
        if(specialList.size()>0){
            totalNum=specialList.size()/currentPage;
            if( specialList.size()%currentPage>0){
                totalNum++;
            }
        }else{
            totalNum=1;
        }

        this.specialList = specialList;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(int totalNum) {
        this.totalNum = totalNum;
    }
}
