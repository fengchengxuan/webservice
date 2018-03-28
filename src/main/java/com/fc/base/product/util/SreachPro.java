package com.fc.base.product.util;

import com.fc.base.product.entity.OrderEntity;
import com.fc.base.product.entity.ProductEntity;
import com.fc.base.product.entity.ProductInofEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/9/23.
 */
public class SreachPro {
    private List<ProductEntity> list;//产品
   // private List<ProOrderEntity> orderList;//订单
    private List<OrderEntity> order;//订单
    private List<ProductInofEntity> proInfoList;//产品需求
    private int totalNum;
    private int currentPage=20;
     //产品分页工具
    public List<ProductEntity> getList() {
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

    public void setList(List<ProductEntity> list){
        totalNum=list.size()/currentPage;
        if(list.size()%currentPage>0){

            totalNum++;
        }
        this.list=list;

    }

    public List<ProductInofEntity> getProInfoList() {
        return proInfoList;
    }

    public void setProInfoList(List<ProductInofEntity> proInfoList) {
        totalNum=proInfoList.size()/currentPage;
        if(proInfoList.size()%currentPage>0){
            totalNum++;
        }
        this.proInfoList =proInfoList;
    }

    public List<OrderEntity> getOrder() {
        return order;
    }

    public void setOrder(List<OrderEntity> order) {
        totalNum=order.size()/currentPage;
        if(order.size()%currentPage>0){
           totalNum++;
        }
        this.order = order;
    }
}
