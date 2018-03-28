package com.fc.base.special.action;

import com.fc.base.special.entity.SpecialEntity;
import com.fc.base.special.service.SpecialService;
import com.fc.base.special.uitl.SpecialUitl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lenovo on 2017/11/17.
 */
@Controller
@RequestMapping("/Special")
public class SpecialAction {
    @Autowired
    private SpecialService specialService;
    private SpecialUitl uitl;
    @RequestMapping("/addSpecial")//添加专题
    public@ResponseBody List<String> addSpecial(HttpSession session, String specialName, String specialTitle , String specialKey,
                                                String description , String specialLink, String  structure , String state, String adminType,
                                                String userName, String makingDate , String deliveryDate, String demoAddress , String pageStructure ,
                                                String pageAesthetics , String appaction , String operate, String marketing, String copy ,
                                                String data, String  population, String workReport,String speType){
        List<String> listArr=new ArrayList<>();
        String adminName = (String) session.getAttribute("loginName");
        if (adminName == null || adminName.equals("")){
            listArr.add("您还未登录!");
            return listArr;
        }else {
            String result = specialService.addSprcial(adminName, specialName, specialTitle, specialKey, description, specialLink, structure,
                    state, adminType, userName, makingDate, deliveryDate, demoAddress, pageStructure, pageAesthetics, appaction, operate,
                    marketing, copy, data, population, workReport, speType);
            listArr.add(result);
        }
            return listArr;
    }
    @RequestMapping("/allSpecial")//查询全
    public @ResponseBody List<SpecialUitl> allSpecial(String adminType, String state, String speType){
         List<SpecialUitl> list=new ArrayList<SpecialUitl>();
         list.add(specialService.allSpecial(adminType,state,speType));
        return list;
    }
    @RequestMapping("vagueSearch")//模糊查询
    public @ResponseBody SpecialUitl  vagueSearch(String specialKey,String specialTitle){
       SpecialUitl uitl= specialService.vagueSearchService(specialKey,specialTitle);
        return uitl;
    }
    @RequestMapping("update")
    public @ResponseBody List<String> update(HttpSession session, String specialName, String specialTitle , String specialKey,
                                       String description , String specialLink, String  structure , String state, String adminType,
                                       String userName, String makingDate , String deliveryDate, String demoAddress , String pageStructure ,
                                       String pageAesthetics , String appaction , String operate, String marketing, String copy ,
                                       String data, String  population, String workReport,String speType){
        List<String>  listArr =new ArrayList<>();
        String adminName = (String) session.getAttribute("loginName");
        if (adminName == null || adminName.equals("")){
            listArr.add("您还未登录!");
        }else {
            String arr = specialService.update(adminName, specialName, specialTitle, specialKey, description, specialLink
                    , structure, state, adminType, userName, makingDate, deliveryDate, demoAddress, pageStructure, pageAesthetics, appaction, operate, marketing, copy, data,
                    population, workReport, speType);
            listArr.add(arr);
        }
        return listArr;
    }
    @RequestMapping("delete")
    public @ResponseBody Map<String, Object> delete(String specialName,HttpSession session){
        Map<String ,Object> map=new HashMap<String,Object>();
        String userName = (String) session.getAttribute("loginName");
        if (userName == null || userName.equals("")){
            map.put("msg",false);
        }else {
            boolean ok = specialService.deleteSpecial(specialName);
            map.put("ok", ok);
        }
        return map;
    }
    @RequestMapping("findEntity")
    public @ResponseBody Map<String, SpecialEntity> findSpecialEntity(String specialName){
        Map<String ,SpecialEntity> map=new HashMap<String ,SpecialEntity>();
        if (specialService.findEntity( specialName).size()>0){
            SpecialEntity entity =specialService.findEntity( specialName).get(0);
            map.put("data",entity);
        }
        return map;
    }
}
