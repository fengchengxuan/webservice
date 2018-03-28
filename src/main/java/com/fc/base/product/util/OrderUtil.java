package com.fc.base.product.util;

import com.fc.base.product.entity.*;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderUtil {
    private List<ProductInofEntity> proInfo;   //产品需求表
    private List<ProInfoEntity> inofEntityList;
    private List<GivenFree> givenfreeList; //赠送
    private String price;                   //金额
    private String proTitle;               //产品名
    private String num;                      //数量
    private OrderEntity     order;           //订单
    private OrderInfoEntity orderInfo;      //订单中的主要内容
    public OrderUtil(){
        order=new OrderEntity();
    }

    public String getProTitle() {
        return proTitle;
    }

    public void setProTitle(String proTitle) {
        this.proTitle = proTitle;
    }

    public List<ProductInofEntity> getProInfo() {
        return proInfo;
    }

    public void setProInfo(List<ProductInofEntity> proInfo) {
        this.proInfo = proInfo;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public List<ProInfoEntity> getInofEntityList() {

        return inofEntityList;
    }

    public void setInofEntityList(List<ProductInofEntity> list) {
        proInfo= list;
        inofEntityList=new ArrayList<>();
        givenfreeList=new ArrayList<>();// 免费赠送
        for(int i=0;i<list.size();i++){
            ProInfoEntity entity=new ProInfoEntity();
            entity.setId(list.get(i).getId());
            entity.setDemand(list.get(i).getDemand());
            entity.setPreferential(list.get(i).getPreferential());
            entity.setService(list.get(i).getService());
            entity.setServicePrice(list.get(i).getServicePrice());
            entity.setTimeValue(list.get(i).getTimeValue());
            inofEntityList.add(entity);
            for(int j=0;j<list.get(i).getGivenFreeList().size();j++){
                GivenFree givenFree=new GivenFree();
                givenFree.setId(list.get(i).getGivenFreeList().get(j).getId());
                givenFree.setContent(list.get(i).getGivenFreeList().get(j).getContent());
                givenFree.setType(list.get(i).getGivenFreeList().get(j).getType());
                givenFree.setProInfo(list.get(i).getId());
                givenfreeList.add(givenFree);
            }
        }
        this.inofEntityList = inofEntityList;
    }

    public List<GivenFree> getGivenfreeList() {
        return givenfreeList;
    }

    public void setGivenfreeList(List<GivenFree> givenfreeList) {
        this.givenfreeList = givenfreeList;
    }
    public OrderEntity createOrder(String userName,String code){//生成订单
     order.setUserName(userName);//订单 用户名
     order.setProTitle(proTitle);
     Date date=new Date();         //时间
     Format format=new SimpleDateFormat("yyyy-MM-dd  hh:mm");
     order.setTime(format.format(date));
     order.setState("未付款");
     order.setTransaction("交易未完成");
     order.setCode(code);
     order.setPrice(price);
     List<OrderInfoEntity> list= new ArrayList<>();
     for(int i=0;i<inofEntityList.size();i++){  //订单选中的需求
         orderInfo=new OrderInfoEntity();
         orderInfo.setDemand(inofEntityList.get(i).getDemand());
         orderInfo.setPreferential(inofEntityList.get(i).getPreferential());
         orderInfo.setNum(num);
         orderInfo.setPrice(inofEntityList.get(i).getServicePrice());
         orderInfo.setService(inofEntityList.get(i).getService());
         orderInfo.setTimeValue(inofEntityList.get(i).getTimeValue());
         String givenFree="";
         int num=2;
         for(int j=0;j<proInfo.get(i).getGivenFreeList().size();j++){  //赠送内容
             if(j!=0){
                 givenFree=givenFree+"; "+num+"、"+proInfo.get(i).getGivenFreeList().get(j).getType();
                 num++;
             }else{
                 givenFree="1、"+proInfo.get(i).getGivenFreeList().get(j).getType();
             }
         }
         orderInfo.setEntity(order);
         orderInfo.setGivenFree(givenFree);
         list.add(orderInfo);
     }
        order.setList(list);
    return order;
   }
}
