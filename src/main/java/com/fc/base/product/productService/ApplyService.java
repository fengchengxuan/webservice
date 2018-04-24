package com.fc.base.product.productService;

import com.fc.base.product.entity.ProApplyEntity;
import com.fc.base.product.util.SreachApply;
import com.fc.base.user.entity.FcUser;
import com.fc.util.entity.FreeApply;

import java.util.List;

/**
 * Created by lenovo on 2017/10/26.
 */
public interface ApplyService {
    //保存体验申请
    public String saveApplyService(String userName, String industry, String companyType, String application, String company, String address, String fHpone, String mHpone, String email, String website, String userQQ, String appContent);
    //显示全部申请
    public SreachApply showApplyService(String userName, String company, String status);
    //显示申请的详细信息
    public ProApplyEntity showApplyInfo(int id);
    //审批申请体验
    public String upStatusService(int id, String status);
    //根据电话申请查询
   // public String showHpoenSerice(String fHpone,String mHpone);
    public ProApplyEntity userApplySerivce(String userName);

    FreeApply findFreeApply(String fcUserId);
    void saveFreeApply(FreeApply freeApply);
    List<FcUser> findFreeApply();
}
