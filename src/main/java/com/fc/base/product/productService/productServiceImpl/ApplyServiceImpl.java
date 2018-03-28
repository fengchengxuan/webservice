package com.fc.base.product.productService.productServiceImpl;

import com.fc.base.product.entity.ProApplyEntity;
import com.fc.base.product.productDao.ApplyDao;
import com.fc.base.product.productService.ApplyService;
import com.fc.base.product.util.SreachApply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by lenovo on 2017/10/26.
 */
@Service
public class ApplyServiceImpl  implements ApplyService{
    private ProApplyEntity applyEntity;
    @Autowired
    public ApplyDao applyDao;
    private SreachApply sreachApply;
    @Override//申请免费体验
    public String saveApplyService(String userName, String industry, String companyType, String application, String company, String address, String fHpone, String mHpone, String email,
                                   String website, String userQQ, String appContent) {



         List<ProApplyEntity> list=applyDao.showApplyDao(userName,"","");
       if(list.size()>0) {
            return "不能重复添加";
        }
       /* list=applyDao.showHponeDao(fHpone,mHpone);
        if(list.size()>0) {
            return "不能重复添加";
        }*/
       applyEntity =new ProApplyEntity();
       applyEntity.setUserName(userName);  //用户名
       applyEntity.setIndustry(industry);  //行业类型
       applyEntity.setCompanyType(companyType);//公司类型
       applyEntity.setApplication(application);//申请人
       if(company!=null && company.length()>0){  //公司名
           applyEntity.setCompany(company);
       }else{
           return "请输入公司名称";
       }
        if(address!=null && address.length()>0){  //公司名
            applyEntity.setAddress(address);
        }else{
            return "请输入经营地址";
        }
        if(fHpone!=null && fHpone.length()>0){  //固定电话
            applyEntity.setfHpone(fHpone);
        }else{
            return "请输入电话";
        }

        applyEntity.setmHpone(mHpone);
        applyEntity.setEmail(email);
        applyEntity.setWebsite(website);
        applyEntity.setUserQQ(userQQ);
        applyEntity.setAppContent(appContent);
        applyEntity.setStatus("申请中");
        Date date =new Date();
        Format format=new SimpleDateFormat("yyyy.MM.dd");
        applyEntity.setCreateTime(format.format(date));
       return applyDao.saveProApply(applyEntity);

    }

    @Override//显示全部申请体验
    public SreachApply showApplyService(String userName, String company, String status) {
        List<ProApplyEntity> list= applyDao.showApplyDao(userName,company,status);
        sreachApply=new SreachApply();
        sreachApply.setApplyList(list);
        return sreachApply;
    }

    @Override//显示申请详细信息
    public ProApplyEntity showApplyInfo(int id) {
       List<ProApplyEntity> list=applyDao.applyInfoDao(id);

        return list.get(0);
    }

    @Override//审核申请体验
    public String upStatusService(int id,String status) {
       ProApplyEntity entity= showApplyInfo(id);
       entity.setStatus(status);
        return applyDao.upStatusDao(entity);
    }

    @Override
    public ProApplyEntity userApplySerivce(String userName) {
        return applyDao.userApplyDao(userName);
    }
}
