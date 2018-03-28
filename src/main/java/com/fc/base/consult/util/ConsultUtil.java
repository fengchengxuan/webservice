package com.fc.base.consult.util;

import com.fc.base.consult.entity.ConsultEntity;

import java.util.List;

public class ConsultUtil {
    private int totalNum;

    private int currentPage=20;
    private List<ConsultEntity> list;

    public int getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(int totalNum) {
        this.totalNum = totalNum;
    }

    public List<ConsultEntity> getList() {
        return list;
    }

    public void setList(List<ConsultEntity> list) {
        totalNum=list.size()/currentPage;
        if(list.size()%20!=0){
            totalNum++;
        }
        this.list = list;
    }


}
