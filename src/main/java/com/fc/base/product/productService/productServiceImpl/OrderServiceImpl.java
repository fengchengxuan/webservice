package com.fc.base.product.productService.productServiceImpl;

import com.fc.base.product.entity.OrderEntity;
import com.fc.base.product.entity.ProductEntity;
import com.fc.base.product.productDao.OrderDao;
import com.fc.base.product.productService.OrderService;
import com.fc.base.product.productService.ProductService;
import com.fc.base.product.util.SreachPro;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by lenovo on 2017/10/19.
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDao orderDao;
    @Autowired
    private ProductService productService;
    private OrderEntity orderEntiry;
    private List<OrderEntity> orderList;
    private List<OrderEntity> order;
    private SreachPro orderSreach;  //订单分页工具
    @Override//保存订单
    public List<String> saveOrderService(String userName,int pro_number,String title,double pro_total,String pro_time,Double disCount,String scheme) {
        List strArr=new ArrayList();
        String str="";
        List<OrderEntity> likeList=orderDao.sreachOrderDao(userName,title,"未付款");//查询是否有未完成的的订单
        orderList= orderDao.showOrderDao(userName,pro_number,title,pro_total,pro_time,disCount,"");
        if(orderList.size()==1){//查询之前相同的订单，
            orderDao.deleteOrder(orderList.get(0));//如果是相同的订单就删除之前的订单，生成新的订单
            if(likeList.size()>1){
                str="01";
            }
        }else if(likeList.size()>0){
            str="01";
        }
        DecimalFormat df=new DecimalFormat("#0.00");
      /*  orderEntiry=new ProOrderEntity();
        orderEntiry.setUserName(userName);        //账号
        orderEntiry.setTitle(title);             //产品标题
        orderEntiry.setProNum(pro_number);       //产品数量
        orderEntiry.setTotal(df.format(pro_total));  //订单总价
        orderEntiry.setDisCount(df.format(disCount));//折扣
        orderEntiry.setTime(pro_time);               //购买时长
        orderEntiry.setState("未付款");              //订单状态
        orderEntiry.setTransaction("交易未完成");   //交易状态
        orderEntiry.setScheme(scheme);          */     //方案*/
        List<ProductEntity> list= new ArrayList<ProductEntity>();
       list= productService.searchTitle(title);      //根据标题查找相应的产品
       if(list.size()>0){
           double price=(pro_total+disCount)/pro_number;
          orderEntiry.setPrice(df.format(price));
       }
        Date date=new Date();
        Format format=new SimpleDateFormat("yyyy-MM-dd  hh:mm");
        orderEntiry.setTime(format.format(date));
        String info=orderDao.saveOrder(orderEntiry);   //保存订单
        orderList=orderDao.showOrderDao(userName,pro_number,title,pro_total,pro_time,disCount,"");//查询订单保存编码
        strArr.add(info+str);
        strArr.add(setOrderCode(orderList));//保存编码
        return strArr;
    }

    @Override//显示订单(未付款)
    public List<OrderEntity> showOrderService(String userName, String pro_title, int pro_number, String pro_time, double pro_total, Double disCount) {
        orderList=orderDao.showOrderDao(userName,pro_number,pro_title,pro_total,pro_time,disCount,"");
        return orderList;
    }
    //保存订单编码
    private String setOrderCode(List<OrderEntity> list){
        Format format=new SimpleDateFormat("yyyyMMdd"); //时间转换
        StringBuffer orderCode=new StringBuffer("FC");
        String dat= format.format(new Date());
        orderCode.append(dat);
        orderCode.append(String.format("%05d",orderList.get(0).getId()));
        orderList.get(0).setCode(orderCode.toString());
        orderDao.upDateOrder(orderList.get(0));
        return orderCode.toString();
    }

    @Override//显示旧订单
    public List<OrderEntity> oldOrderService(String userName, String pro_title, int pro_number, String pro_time, double pro_total, Double disCount) {
        List<OrderEntity> likeList=orderDao.sreachOrderDao(userName,pro_title,"未付款");//查询是否有未完成的的订单
        orderList = orderDao.showOrderDao(userName,pro_number,pro_title,pro_total,pro_time,disCount,"");//正在创建的订单
        if(orderList!=null&& orderList .size()>0){
           for(int i=0;i<likeList.size();i++){
               if(likeList.get(i).getCode()==orderList.get(0).getCode()){
                   likeList.remove(i);
               }
           }
        }
        return likeList;
    }

    @Override//显示用户全部订单
    public SreachPro showAllOrderService(String userName) {
        if(userName!=null&&userName!=""){//不为空
            order= orderDao.showAllDao(userName);
        }else {
            order=new ArrayList<>();
        }
        orderSreach=new SreachPro();//工具类 分页
        orderSreach.setOrder(order);
        return orderSreach;
    }

    @Override//显示状态订单
    public SreachPro stateOrderSerice(String userName, String state, String transaction) {
        if("正常".equals(state)){
            state=null;
        }
        if("未交易".equals(transaction)){
            transaction=null;
        }
        orderList=orderDao.stateAllDao(userName,state,transaction);
        orderSreach=new SreachPro();
        orderSreach.setOrder(orderList);
        return orderSreach;
    }

    @Override//查询免费体验名额
    public List<OrderEntity> srechFreeExperienceService(String title) {
        orderList =orderDao.srechFreeExperienceDao(title,"免费体验");
        return orderList;
    }

    @Override//取表单
    public OrderEntity getProOrderEntity(String code) {
        OrderEntity entity=null;
        if(orderDao.getProOrderDao(code).size()>0) {
            entity = orderDao.getProOrderDao(code).get(0);
            return entity;
        }
        return entity;
    }

    @Override
    public void saveOrder(OrderEntity entity) {
        orderDao.saveOrder(entity);
    }
    @Override
    public List<OrderEntity> findOrder(){
        return orderDao.findOrder();
    }
}
