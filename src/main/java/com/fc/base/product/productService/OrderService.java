package com.fc.base.product.productService;

import com.fc.base.product.entity.OrderEntity;
import com.fc.base.product.util.SreachPro;

import java.util.List;

/**
 * Created by lenovo on 2017/10/19.
 */
public interface OrderService {
    //保存订单
    public List<String> saveOrderService(String userName, int pro_number, String title, double pro_total, String pro_time, Double disCount, String scheme);
    //显示订单
    public List<OrderEntity> showOrderService(String userName, String pro_title, int pro_number, String pro_time, double pro_total, Double disCount);
    //显示旧订单
    public List<OrderEntity> oldOrderService(String userName, String pro_title, int pro_number, String pro_time, double pro_total, Double disCount);
    //显示全订单
     public SreachPro  showAllOrderService(String userName);
     //根据状态显示
     public SreachPro stateOrderSerice(String userName, String state, String transaction);
     //查询免费体验名额
     public List<OrderEntity>  srechFreeExperienceService(String title);
     public OrderEntity getProOrderEntity(String code);
     void saveOrder(OrderEntity entity);
     public List<OrderEntity> findOrder();
}
