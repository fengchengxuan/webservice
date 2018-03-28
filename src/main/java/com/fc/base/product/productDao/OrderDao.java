package com.fc.base.product.productDao;

import com.fc.base.product.entity.OrderEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/10/19.
 */
public interface OrderDao
{
    public String saveOrder(OrderEntity entity);//保存订单

    //显示订单
    public List<OrderEntity> showOrderDao(String userName, int pro_number, String title, double pro_total, String pro_time, Double disCount, String scheme);//查询是否有相同没有付款的订单
    public void upDateOrder(OrderEntity entity);//保存编码;
    public List<OrderEntity> sreachOrderDao(String userName, String title, String state);//用户未完成的订单
    public void deleteOrder(OrderEntity entity); //删除订单
    public List<OrderEntity> showAllDao(String userName);//显示用户所有的订单
    public List<OrderEntity> stateAllDao(String userName, String state, String transaction);//按状态条件查询
    public List<OrderEntity> srechFreeExperienceDao(String title, String scheme);//查询免费体验名额
    public List<OrderEntity> getProOrderDao(String code);
    List<OrderEntity> findOrder();

}
