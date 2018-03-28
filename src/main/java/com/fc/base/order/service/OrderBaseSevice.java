package com.fc.base.order.service;

import com.fc.base.product.entity.OrderEntity;

import java.util.List;

public interface OrderBaseSevice {
    public List<OrderEntity> showOrder();
    public void deleteOrder(String orderId);
    public OrderEntity findMaxOrder();
    public String addOrder(OrderEntity entity);
    public void update(OrderEntity entity);
}
