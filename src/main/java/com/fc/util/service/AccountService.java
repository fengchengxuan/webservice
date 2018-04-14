package com.fc.util.service;

import com.fc.base.user.entity.FcUser;
import com.fc.util.entity.*;

public interface AccountService {

	//Ʊ�ݹ���
	void appBill(String appType, String billType, String billTitle, String userid);
	void appBill(BillApp billApp);
	void receiveBill(String receiver, String city, String address, String mail_code, String phone, String tel, String userid);
	BillManage billManage(String userid);
	BillLogistics getBillLogistics(String userid);
	//�ܱ�����
	void addSafeQuestion(String Qusertion, String answer, String confirmAnswer, String fcuserId);
	void addSafeQuestion(SafeQusetion safeQusetion,String Qusertion, String answer, String confirmAnswer);
	//������֤
	void addPersonCertify(String name, String idNum, String reIdNum, String tel, String idPic, String holdIdPic, FcUser fcuserId);
	//��ҵ��֤
	void addEnterCertify(String enterpriceName, String corporateName, String appName, String phone, String tel, String website,String idPic, String holdIdPic, FcUser fcuserId);
	SafeQusetion getSafeQusetion(String fcUserId);
	PersonCertify findPersonCertify(String id);
	void savePersonCertify(PersonCertify personCertify);
	EnterCertify findEnterCertify(String id);
	void saveEnterCertify(EnterCertify enterCertify);
	BillApp findBillApp(String id);
	BillSendAddr findBillSendAddr(String id);
	void appBillSendAddr(BillSendAddr billSendAddr);
	void appBillSendAddr(String receiver,String city,String address,String mailCode,String phone,String tel,String id);

}
