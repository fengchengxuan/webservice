package com.fc.base.vip.action;


import com.fc.base.vip.service.VIPService;
import com.fc.base.vip.util.VipEntity;
import com.fc.base.vip.util.VipUtil;
import com.fc.login.model.AnonymousEntity;
import com.fc.login.model.Log;
import com.fc.login.model.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping("/vip")
public class Action {

    @Autowired
    private VIPService vipService;

    @Autowired
    private Map<String,Object>map;
    @ModelAttribute
    public void init(){
        map=new HashMap<String,Object>();
        map.put("vip_management", false);
    }
    @RequestMapping("/showAll")
    public @ResponseBody
    VipUtil showAll(){
       List<Log> log=  vipService.findLog();
       List<Login> login=vipService.findLogin();
       List<AnonymousEntity> anonymousEntities=vipService.findAnonymous();
       VipUtil util=new VipUtil();
       util.totalList(login,log,anonymousEntities);
        return util;
    }
    @RequestMapping("/showSome")
    public @ResponseBody VipUtil showSome(String type,String dimension,String state){
        VipUtil util=showAll();
        if(!type.equals("用户类型") || !dimension.equals("用户在本站维度") ||! state.equals("用户状态")){
            List<VipEntity> list =util.getList();
            List<VipEntity> newList=new ArrayList<>();
            for(int i=0;i<list.size();i++){
                if(!type.equals("用户类型") && dimension.equals("用户在本站维度") && state.equals("用户状态")) {
                    if (list.get(i).getUserType().equals(type)) {
                        newList.add(list.get(i));
                    }
                }
                if( !dimension.equals("用户在本站维度") && type.equals("用户类型") && state.equals("用户状态")) {
                    if (dimension.equals(list.get(i).getDimension())) {
                        newList.add(list.get(i));
                    }
                }
                if(  !state.equals("用户状态")&&dimension.equals("用户在本站维度") && type.equals("用户类型") ) {
                    if (list.get(i).getState().equals(state)) {
                        newList.add(list.get(i));
                    }
                }
                if(  !state.equals("用户状态")&&!dimension.equals("用户在本站维度") && type.equals("用户类型") ) {
                    if (state.equals(list.get(i).getState())&& dimension.equals(list.get(i).getDimension())) {
                        newList.add(list.get(i));
                    }
                }
                if(  !state.equals("用户状态")&&dimension.equals("用户在本站维度") && !type.equals("用户类型") ) {
                    if (state.equals(list.get(i).getState()) && type.equals(list.get(i).getUserType())) {
                        newList.add(list.get(i));
                    }
                }
                if(  state.equals("用户状态")&&!dimension.equals("用户在本站维度") && !type.equals("用户类型") ) {
                    if (list.get(i).getUserType().equals(type)&& list.get(i).getDimension().equals(dimension)) {
                        newList.add(list.get(i));
                    }
                }
                if(  !state.equals("用户状态")&&!dimension.equals("用户在本站维度") && !type.equals("用户类型") ) {
                    if (list.get(i).getUserType().equals(type)&& list.get(i).getDimension().equals(dimension)&&list.get(i).getState().equals(state)) {
                        newList.add(list.get(i));
                    }
                }
            }
            util.setList(newList);
        }
        return util;
    }
    @RequestMapping("deleteAll")
    public @ResponseBody  Map<String ,Object>deleteAll(HttpSession session, String[] list){
       String vip_management =(String) session.getAttribute("vip_management");
       if("true".equals(vip_management)){
           map.put("vip_management",true);
           for(String arr:list){
               vipService.deleteVipUser(arr.substring(0,arr.length()-5),arr.substring(arr.length()-4,arr.length()));
           }
       }
        return map;
    };
}

