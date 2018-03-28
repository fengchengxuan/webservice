package com.fc.base.order.service.serviceImpl;


import com.fc.base.order.dao.OrderBase;
import com.fc.base.order.service.OrderBaseSevice;
import com.fc.base.product.entity.OrderEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
@Service
public class OrderBaseSeviceImpl implements OrderBaseSevice {
    @Autowired
    private OrderBase dao;
    @Override
    public List<OrderEntity> showOrder() {
        return dao.showOrder();
    }

    @Override
    public void deleteOrder(String orderId) {
      dao.deleteOrder(orderId);
    }

    @Override
    public OrderEntity findMaxOrder() {
        List<OrderEntity> list=dao.showOrder();
        OrderEntity entity=new OrderEntity();
        if(list!=null&&list.size()>0){
            Format forma=new SimpleDateFormat("yyyyMMdd"); //时间转换
            StringBuffer orderCode=new StringBuffer("FC");
            String dat= forma.format(new Date());
            orderCode.append(dat);
            orderCode.append(String.format("%05d",list.size()));
            entity.setCode(orderCode.toString());
            Date date=new Date();
            Format format=new SimpleDateFormat("yyyy-MM-dd  hh:mm");
            entity.setTime(format.format(date));
        }
        return entity;
    }

    @Override
    public String addOrder(OrderEntity entity) {
        dao.addOrder(entity);
        return "添加成功";
    }

    @Override
    public void update(OrderEntity entity) {
        dao.updateOrder(entity);
    }
}
