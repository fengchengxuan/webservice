package com.fc.base.product.productAction;

import com.fc.base.product.entity.OrderEntity;
import com.fc.base.product.entity.ProApplyEntity;
import com.fc.base.product.productService.ApplyService;
import com.fc.base.product.productService.OrderService;
import com.fc.base.product.util.SreachApply;
import com.fc.base.user.entity.FcUser;
import com.fc.base.user.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/10/26.
 */
@Controller
@RequestMapping("/apply")//体验申请
public class ApplyAction {
    @Autowired
    private OrderService orderService;
    @Autowired
    private ApplyService applyService;
    @Autowired
    private UserService userService;
    private List<OrderEntity> orderList;
    private List<String> listArr;
    private SreachApply sreachApply;
    @RequestMapping("/proApply")//免费体验申请
    public @ResponseBody List<String> proApply(String userName,String industry,String companyType ,String application ,
                String company,String address,String fHpone,String mHpone,String email,String website,String userQQ,String appContent){
        listArr=new ArrayList<String>();
       /*orderList= orderService.srechFreeExperienceService(""); //查询是否还有名额
       if(orderList.size()>500){
           listArr.add("已经没有名额了");
           return listArr;
       }
       listArr.add(applyService.saveApplyService(userName,industry,companyType,application,company,address,fHpone,mHpone,email,website,userQQ,appContent));*/
       listArr.add("返回");
        return listArr;
    }
    @RequestMapping("/showApply")//显示全部的体验申请
    public @ResponseBody SreachApply showApply(String userName ,String company,String status){
        sreachApply= applyService.showApplyService(userName,company,status);
        return sreachApply;
    }
    @RequestMapping("/showApplyInfo")//体验申请的详细信息
    public @ResponseBody  ProApplyEntity showApplyInfo(int id){
        ProApplyEntity entity =new ProApplyEntity();
        entity= applyService.showApplyInfo(id);
        return  entity;
    }
    @RequestMapping("/upStatus")//审核
    public @ResponseBody List<String> upStatus(int id,String status){
        listArr=new ArrayList<String>();
        listArr.add(applyService.upStatusService(id,status));
       return   listArr;
    }
    //用户查看申请体验;
    @RequestMapping("/userApply")
    public @ResponseBody FcUser getUserApply(HttpSession session){
//        session.getAttribute("userName") ;
//        return  applyService.userApplySerivce("11");
        return userService.getUser(session.getAttribute("userName").toString());
    }


}
