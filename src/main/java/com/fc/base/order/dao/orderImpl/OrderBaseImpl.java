package com.fc.base.order.dao.orderImpl;

import com.fc.base.order.dao.OrderBase;
import com.fc.base.product.entity.OrderEntity;
import com.fc.util.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class OrderBaseImpl extends BaseDao implements OrderBase {
    @Override
    public  List<OrderEntity> showOrder() {
        String hql="from OrderEntity  where 1=1";
        return super.findList(hql);
    }

    @Override
    public void deleteOrder(String id) {  //用StringBuff
        StringBuffer hql=new StringBuffer("from OrderEntity where id = ?") ;
        Object[]args = {id};
        List< OrderEntity> list= super.findList(hql.toString(),args);
        if(list!=null && list.size()>0){
            super.delete(list.get(0));
        }

    }

    @Override
    public void addOrder(OrderEntity entity) {
        super.save(entity);
    }

    @Override
    public void updateOrder(OrderEntity entity) {
        super.update(entity);
    }
}
