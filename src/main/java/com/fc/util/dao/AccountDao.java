package com.fc.util.dao;

import java.util.List;

import com.fc.base.user.entity.FcUser;
import com.fc.util.entity.*;

public interface AccountDao {

	//Ʊ�ݹ���
	void appBill(String appType, String billType, String billTitle,String userid);
	void receiveBill(String receiver, String city, String address, String mail_code, String phone, String tel, String userid);
	BillManage billManage(String userid);
	BillLogistics getBillLogistics(String userid);
	//�ܱ�����
	void addSafeQuestion(String qusertion, String answer,  String confirmAnswer,String fcuserId);
	//������֤
	void addPersonCertify(String name, String idNum, String reIdNum, String tel, String idPic, String holdIdPic, FcUser fcuserId);
	//��ҵ��֤
	void addEnterCertify(String enterpriceName, String corporateName, String appName, String phone, String tel, String website,String idPic, String holdIdPic, FcUser fcuserId);

	List<SafeQusetion> findSafeQusetion(String fcUserId);
	void saveSafeQuestion(SafeQusetion entity);
	PersonCertify findPersonCertify(String id);
	void savePersonCertify(PersonCertify personCertify);
	EnterCertify findEnterCertify(String id);
	void saveEnterCertify(EnterCertify enterCertify);
	List<BillApp> findBillApp(String id);
	void appBill(BillApp billApp);
	List<BillSendAddr> findBillSendAddr(String id);
	void appBillSendAddr(BillSendAddr billSendAddr);
}
