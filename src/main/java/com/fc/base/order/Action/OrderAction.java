package com.fc.base.order.Action;

import com.fc.base.order.service.OrderBaseSevice;
import com.fc.base.order.util.OrderUtil;
import com.fc.base.product.entity.OrderEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/order")
public class OrderAction {
    @Autowired
    private OrderBaseSevice service;

    @RequestMapping("/showAll")
    public @ResponseBody OrderUtil showAll(){
        OrderUtil util=new OrderUtil();
         util.setOrderList(service.showOrder());
        return util;
    }
    @RequestMapping("/deleteAll")
    public @ResponseBody List<String> deleteAll(HttpSession session ,String[] orderList ){
        List<String> list =new ArrayList<>();
        String username = (String) session.getAttribute("loginName");
        if (username==null|| username.length()<1){
            list.add("您还未登录!");
            return list;
        }

        for(String orderId :orderList){

            service.deleteOrder(orderId);
        }

        list.add("删除成功");
        return list;
    }
    @RequestMapping("/findOrderId")
    public @ResponseBody List<OrderEntity> findOrderId(){
        List<OrderEntity> list=new ArrayList<>();
        list.add(service.findMaxOrder());
        return list;
    }
    @RequestMapping("/addOrder")
    public @ResponseBody List<String> addOrder(HttpSession session,String code,String date,String title,String note,String price,
                            String total,String disCount,String time,String scheme){
        String userName=(String) session.getAttribute("loginName");

      List<String> list=new ArrayList<>();
        OrderEntity entity =new OrderEntity();
        if(userName!=null &&userName.length()>0) {
            List<OrderEntity> orderList= service.showOrder();
            for(int i=0;i<orderList.size();i++){
              if(orderList.get(i).getCode().equals(code)) {
                  list.add("此订单已经添加");
                  return list;
              }
            }
     /*       entity.setCode(code);
            entity.setCreateDate(date);
            entity.setPrice(price);
            entity.setDisCount(disCount);
            entity.setTotal(total);
            entity.setTitle(title);
            entity.setNote(note);
            entity.setTime(time);
            entity.setState("已付款");
            entity.setUserName(userName);
            entity.setScheme(scheme);*/
            list.add(service.addOrder(entity));
        }else{
            list.add("您还没登录");
        }
        return list;
    }
    @RequestMapping("findOrder")
    public @ResponseBody List<OrderEntity> findOrder(HttpSession session, String id){
        String loginName=(String) session.getAttribute("loginName");
        String permissions=(String) session.getAttribute("");
        if(loginName!=null&& loginName.length()>0){
            List<OrderEntity> list=service.showOrder();
            for(int i=0;i<list.size();i++){
                if((list.get(i).getId()+"").equals(id)){
                    List<OrderEntity> orderList=new ArrayList<>();
                    orderList.add(list.get(i));
                    return orderList;
                }
            }
        }
        return null;
    }
    @RequestMapping("update")
    public @ResponseBody Map<String,Object> update(HttpSession session,String code,String date,String title,String
            note,String price,String total,String disCount ,String time,String scheme){
        Map map= new HashMap();
        map.put("flag",false);

        String loginName=(String) session.getAttribute("loginName");
        String permissions=(String) session.getAttribute("");
        if(loginName!=null&& loginName.length()>0){
            List<OrderEntity> list=service.showOrder();
            for(int i=0;i<list.size();i++){
                if((list.get(i).getCode()).equals(code)){
                    OrderEntity entity=list.get(i);
                    map.put("flag",true);
                    service.update(entity);
                    map.put("data",entity);
                    return map;
                }
            }
        }
        return map;
    }
}
