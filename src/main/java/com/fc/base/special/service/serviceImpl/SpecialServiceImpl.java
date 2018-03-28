package com.fc.base.special.service.serviceImpl;

import com.fc.base.special.Dao.SpecialDao;
import com.fc.base.special.entity.SpecialEntity;
import com.fc.base.special.entity.SpecialEvalEntity;
import com.fc.base.special.service.SpecialService;
import com.fc.base.special.uitl.SpecialUitl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/11/17.
 */
@Service
public class SpecialServiceImpl implements SpecialService {
    @Autowired
    private SpecialDao specialDao;
    @Override//添加专题
    public String addSprcial(String adminName,String specialName, String specialTitle, String specialKey, String description,
     String specialLink, String structure, String state, String adminType, String userName, String makingDate,
     String deliveryDate, String demoAddress, String pageStructure, String pageAesthetics, String appaction,
     String operate, String marketing, String copy, String data, String population, String workReport,String speType) {
        SpecialEntity entity=new SpecialEntity();
        SpecialEvalEntity evalEntity=new SpecialEvalEntity();
        if(specialName==null ||specialName.length()<1){
            return "请输入名称";
        }else{
           if(specialDao.sreachSpecialDao(specialName.trim(),"","","").size()>0){
               return "已经拥有相应名称";
           };
        }

        if(specialTitle==null ||specialTitle.length()<1){
            return "请输入专题标题";
        }
        if(specialKey==null ||specialKey.length()<1){
            return "请输入关键词";
        }
        if(description==null ||description.length()<1){
            return "请输入图片描述";
        }
        if(specialLink==null ||specialLink.length()<1){
            return "请输入图片描述";
        }
        if(structure==null ||structure.length()<1){
            return "请输入专题结构";
        }
        if(state==null ||state.length()<1){
            return "请输入专题状态";
        }
        if(userName==null ||userName.length()<1){
            return "请输入客户名称";
        }
        if(makingDate==null ||makingDate.length()<1){
            return "请输入制作日期";
        }
        if(deliveryDate==null ||deliveryDate.length()<1){
            return "请输入交付日期";
        }
        if(demoAddress==null ||demoAddress.length()<1){
            return "请输入演示地址";
        }
        entity.setAdminName(adminName);
        entity.setAdminType(adminType);
        entity.setSpecialName(specialName.trim());
        entity.setSpecialTitle(specialTitle);
        entity.setSpecialKey(specialKey);
        entity.setDemoAddress(demoAddress);
       entity.setDeliveryDate(deliveryDate);
       entity.setDescription(description);
       entity.setMakingDate(makingDate);
       entity.setSpecialLink(specialLink);
       entity.setState(state);
       entity.setUserName(userName);
       entity.setStructure(structure);
       entity.setSpeBrowser(0);
       entity.setSpeType(speType);
       //专题评价表
        evalEntity.setPageStructure(Integer.parseInt(copy));
        evalEntity.setData(Integer.parseInt(data));
        evalEntity.setOperate(Integer.parseInt(operate));
        evalEntity.setPageAesthetics(Integer.parseInt(pageAesthetics));
        evalEntity.setPopulation(Integer.parseInt(population));
        evalEntity.setWorkReport(Integer.parseInt(workReport));
        evalEntity.setPageStructure(Integer.parseInt(pageStructure));
        evalEntity.setPageAppaction(Integer.parseInt(appaction));
        evalEntity.setMarketing(Integer.parseInt(marketing));
        entity.setEvalEntity(evalEntity);

       return specialDao.addSprcial(entity);
    }

    @Override//显示
    public SpecialUitl allSpecial(String adminType, String state, String speType) {
        SpecialUitl uitl =new SpecialUitl();
        List<SpecialEntity> list=specialDao.sreachSpecialDao("",adminType,state,speType);
        if (list.size()>0){
            uitl.setSpecialList(list);
        }else {
            uitl.setSpecialList(new ArrayList<SpecialEntity>());
        }
        return uitl;
    }

    @Override//模糊查询
    public SpecialUitl vagueSearchService(String key, String title) {
        SpecialUitl uitl=new SpecialUitl();
        uitl.setSpecialList(specialDao.vagueSearchDao(key,title));
        return uitl;
    }

    @Override
    public String update(String adminName, String specialName, String specialTitle, String specialKey,
                         String description, String specialLink, String structure, String state, String adminType,
                         String userName, String makingDate, String deliveryDate, String demoAddress, String pageStructure,
                         String pageAesthetics, String appaction, String operate, String marketing, String copy, String data,
                         String population, String workReport, String speType) {
       List<SpecialEntity> speList= specialDao.sreachSpecialDao(specialName.trim(),"","","");
        if(speList.size()>0){
            for(int i=0;i<speList.size();i++){
                if(speList.get(i).getSpecialName().equals(specialName)){
                    SpecialEntity entity=speList.get(i);
                    entity.setAdminName(adminName);
                    entity.setAdminType(adminType);
                    entity.setSpecialName(specialName.trim());
                    entity.setSpecialTitle(specialTitle);
                    entity.setSpecialKey(specialKey);
                    entity.setDemoAddress(demoAddress);
                    entity.setDeliveryDate(deliveryDate);
                    entity.setDescription(description);
                    entity.setMakingDate(makingDate);
                    entity.setSpecialLink(specialLink);
                    entity.setState(state);
                    entity.setUserName(userName);
                    entity.setStructure(structure);
                    entity.setSpeType(speType);
                    if(copy!=null&&copy.length()>0)
                    {entity.getEvalEntity().setPageCopy(Integer.parseInt(copy));}
                    if(data!=null&&data.length()>0)
                    { entity.getEvalEntity().setData(Integer.parseInt(data));}
                    if(operate!=null&&operate.length()>0)
                    {entity.getEvalEntity().setOperate(Integer.parseInt(operate));}
                    if(pageAesthetics!=null&&pageAesthetics.length()>0)
                    {entity.getEvalEntity().setPageAesthetics(Integer.parseInt(pageAesthetics));}
                    if(population!=null&&population.length()>0)
                    {entity.getEvalEntity().setPopulation(Integer.parseInt(population));}
                    if(workReport!=null&&workReport.length()>0)
                    {entity.getEvalEntity().setWorkReport(Integer.parseInt(workReport));}
                    if(pageStructure!=null&&pageStructure.length()>0)
                    {entity.getEvalEntity().setPageStructure(Integer.parseInt(pageStructure));}
                    if(appaction!=null&&appaction.length()>0)
                    { entity.getEvalEntity().setPageAppaction(Integer.parseInt(appaction));}
                    if(marketing!=null&&marketing.length()>0)
                    { entity.getEvalEntity().setMarketing(Integer.parseInt(marketing));}
                    return specialDao.update(entity);
                }
            }
        }
        return "找不到相应的专题名称";
    }

    @Override//删除
    public boolean deleteSpecial(String specialName) {
        List<SpecialEntity> list=specialDao.sreachSpecialDao(specialName,"","","");
        if(!list.isEmpty()&&list.size()>0){
           specialDao.deleteSpecial(list.get(0));
           return true;
        }
        return false;
    }

    @Override
    public List<SpecialEntity> findEntity(String specialName) {
        return specialDao.findEntity(specialName);
    }
}
