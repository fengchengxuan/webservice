package com.fc.util.dao.impl;

import com.fc.base.user.entity.FcUser;
import com.fc.util.BaseDao;
import com.fc.util.dao.AccountDao;
import com.fc.util.entity.BillApp;
import com.fc.util.entity.BillLogistics;
import com.fc.util.entity.BillManage;
import com.fc.util.entity.BillSendAddr;
import com.fc.util.entity.SafeQusetion;

public class AccountDaoImpl extends BaseDao  implements AccountDao {

	// 账号档案-票据管理-申请开发票 
	@Override
	public void appBill(String appType, String billType, String billTitle, String userid) {
		BillApp billapp = new BillApp();
		billapp.setAppType(appType);
		billapp.setBillType(billType);
		billapp.setBillTitle(billTitle);
		billapp.setFcuserId(userid);
		super.save(billapp);
	}

	// 账号档案-票据管理-收发发票
	@Override
	public void receiveBill(String receiver, String city, String address, String mail_code, String phone, String tel, String userid) {
		
	}

	// 账号档案-票据管理-发票管理
	@Override
	public BillManage billManage(String userid) {
        String hql = "from BillApp ba, BillSendAddr bsa where ba.ba_id=bsa.ba_id and ba.fcuser_id=?";
        Object[]args = {userid};
        return (BillManage)super.findEntity(hql,args);
	}

	// 账号档案-票据管理-发票到哪
	@Override
	public BillLogistics getBillLogistics(String userid) {
        String hql = "from BillLogistics where fcuserId = ? ";
        Object[]args = {userid};
        return (BillLogistics)super.findEntity(hql,args);
	}
	
	public void addSafeQuestion(String oldQusertion, String oldAnswer, String newQuestion, String newAnswer, String newConfirmAnswer, FcUser fcuserId) {
		SafeQusetion sq = new SafeQusetion();
		sq.setOldQusertion(oldQusertion);
		sq.setOldAnswer(oldAnswer);
		sq.setNewQuestion(newQuestion);
		sq.setNewAnswer(newAnswer);
		sq.setNewConfirmAnswer(newConfirmAnswer);
		sq.setFcuserId(fcuserId);
		super.save(sq);
	}
	
	public void addPersonCertify(String name, String idNum, String reIdNum, String tel, String idPic, String holdIdPic, FcUser fcuserId) {
		
	}
	
	public void addEnterCertify(String enterpriceName, String corporateName, String appName, String phone, String tel, String website,String idPic, String holdIdPic, FcUser fcuserId) {
		
	}

	@Override
	public void addSafeQuestion(String oldQusertion, String oldAnswer, String newQuestion, String newAnswer,
			String newConfirmAnswer, String fcuserId) {
		
	}
}
