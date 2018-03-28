package com.fc.base.order.dao;

import com.fc.base.product.entity.OrderEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/10/19.
 */

public interface OrderBase
{
    public List<OrderEntity> showOrder();
    public void deleteOrder(String orderId);
    public void addOrder(OrderEntity entity);
    public void updateOrder(OrderEntity entity);
}
