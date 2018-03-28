package com.fc.base.order.util;

import com.fc.base.product.entity.OrderEntity;

import java.util.List;

public class OrderUtil {
    private List<OrderEntity> orderList;
    private int totalNum;
    private int currentPage=20;

    public List<OrderEntity> getOrderList() {
        return orderList;
    }

    public void setOrderList(List<OrderEntity> orderList) {
        totalNum= orderList.size()/currentPage;
        if(orderList.size()%currentPage!=0){
            totalNum++;
        }
        this.orderList = orderList;
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
