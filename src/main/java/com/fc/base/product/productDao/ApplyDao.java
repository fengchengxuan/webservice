package com.fc.base.product.productDao;

import com.fc.base.product.entity.ProApplyEntity;
import com.fc.base.user.entity.FcUser;
import com.fc.util.entity.FreeApply;

import java.util.List;

/**
 * Created by lenovo on 2017/10/26.
 */
public interface ApplyDao {
    public String saveProApply(ProApplyEntity entity);//保存申请体验
    public List<ProApplyEntity> showApplyDao(String userName, String company, String status);//显示体验申请
    public List<ProApplyEntity> applyInfoDao(int id);//体验申请详细信息
    public String upStatusDao(ProApplyEntity entity);//更改申请体验
    public List<ProApplyEntity> showHponeDao(String fHpone, String mHpone);//根据电话查询申请体验
    public ProApplyEntity userApplyDao(String userName);//显示用户的申请填写内容
    List<FreeApply> findFreeApply(String fcUserId);
    void saveFreeApply(FreeApply freeApply);
    List<FcUser> findFreeApply();

}
