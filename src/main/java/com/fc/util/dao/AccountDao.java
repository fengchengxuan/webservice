package com.fc.util.dao;

import com.fc.base.user.entity.FcUser;
import com.fc.util.entity.BillLogistics;
import com.fc.util.entity.BillManage;

public interface AccountDao {

	//票据管理
	void appBill(String appType, String billType, String billTitle, String userid);
	void receiveBill(String receiver, String city, String address, String mail_code, String phone, String tel, String userid);
	BillManage billManage(String userid);
	BillLogistics getBillLogistics(String userid);
	//密保设置
	void addSafeQuestion(String oldQusertion, String oldAnswer, String newQuestion, String newAnswer, String newConfirmAnswer, String fcuserId);
	//个人认证
	void addPersonCertify(String name, String idNum, String reIdNum, String tel, String idPic, String holdIdPic, FcUser fcuserId);
	//企业认证
	void addEnterCertify(String enterpriceName, String corporateName, String appName, String phone, String tel, String website,String idPic, String holdIdPic, FcUser fcuserId);

}
