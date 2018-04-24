package com.fc.base.product.productAction;

import com.fc.base.product.entity.OrderEntity;
import com.fc.base.product.entity.ProApplyEntity;
import com.fc.base.product.productService.ApplyService;
import com.fc.base.product.productService.OrderService;
import com.fc.base.product.util.SreachApply;
import com.fc.base.user.Util.FcUserUtil;
import com.fc.base.user.entity.FcUser;
import com.fc.base.user.service.UserService;

import com.fc.util.entity.FreeApply;
import org.hibernate.Session;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    private Map<String,Object> map;
    @ModelAttribute
    public void init(){
        map=new HashMap<>();
        map.put("ok", false);
    }

    @RequestMapping("/proApply")//免费体验申请
    public @ResponseBody Map<String,Object> proApply(HttpSession session,String prodKindId, String comptypeId , String appTypeId ,
                                                     String companyname, String address, String hpone, String phonenumber, String email, String web, String social, String appContent){
        FcUser fcUser=(FcUser) session.getAttribute("fcUser");
        System.out.println("jinreu");
        if(fcUser!= null){
            fcUser.getProdKindId().setProKind(prodKindId);
            fcUser.getComptypeId().setCompType(comptypeId);
            fcUser.getAppTypeId().setAppType(appTypeId);
            fcUser.setCompany(companyname);
            fcUser.setOperAddr(address);
            fcUser.setPhone(hpone);
            fcUser.setTel(phonenumber);
            fcUser.setEmail(email);
            fcUser.setWebsite(web);
            fcUser.setWechart(social);
            fcUser.setIsFreeApp(1);
            userService.saveUser(fcUser);
           FreeApply freeApply= applyService.findFreeApply(fcUser.getId());
           if(freeApply!= null){   //
               freeApply.setDemand(appContent);
               applyService.saveFreeApply(freeApply);
           }else {
               freeApply= new FreeApply();
               freeApply.setFcUserId(fcUser.getId());
               freeApply.setDemand(appContent);
               applyService.saveFreeApply(freeApply);
           }
            map.put("ok",true);
        }
        return  map;
    }
    @RequestMapping("/showApply")//显示全部的体验申请
    public @ResponseBody
    FcUserUtil showApply(){
        FcUserUtil fcUserUtil=new FcUserUtil();
       List<FcUser>  list=applyService.findFreeApply();
       List<FreeApply> freeApplyList=new ArrayList<>();
       for(int i =0;i<list.size();i++){
           freeApplyList.add(applyService.findFreeApply(list.get(i).getId()));
       }
       fcUserUtil.setList( applyService.findFreeApply());
       fcUserUtil.setApplyList(freeApplyList);
        return fcUserUtil;
    }
    @RequestMapping("/showApplyInfo")//体验申请的详细信息
    public @ResponseBody  FcUserUtil showApplyInfo(String id){
        FcUserUtil fcUserUtil=new FcUserUtil();
        List<FcUser> list=new ArrayList<>();
        List<FreeApply> list1=new ArrayList<>();
      FcUser fcUser=  userService. getUser( id,"");
      list.add(fcUser);
      list1.add(applyService.findFreeApply(fcUser.getId()));
      fcUserUtil.setList(list);
      fcUserUtil.setApplyList(list1);
        return  fcUserUtil;
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
