package com.fc.util.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.fc.base.user.entity.FcUser;
import com.fc.util.dao.AccountDao;
import com.fc.util.entity.BillLogistics;
import com.fc.util.entity.BillManage;
import com.fc.util.service.AccountService;

public class AccountServiceImpl implements AccountService {

    @Autowired
    AccountDao  accountDao;

	@Override
	public void appBill(String appType, String billType, String billTitle, FcUser userid) {
		accountDao.appBill(appType, billType, billTitle, userid);
	}

	@Override
	public void receiveBill(String receiver, String city, String address, String mail_code, String phone, String tel,
			String userid) {
		accountDao.receiveBill(receiver, city, address, mail_code, phone, tel, userid);
	}

	@Override
	public BillManage billManage(String userid) {
		return accountDao.billManage(userid);
	}

	@Override
	public BillLogistics getBillLogistics(String userid) {
		return accountDao.getBillLogistics(userid);
	}

	@Override
	public void addSafeQuestion(String oldQusertion, String oldAnswer, String newQuestion, String newAnswer,
			String newConfirmAnswer, String fcuserId) {
		accountDao.addSafeQuestion(oldQusertion, oldAnswer, newQuestion, newAnswer, newConfirmAnswer, fcuserId);
	}

	@Override
	public void addPersonCertify(String name, String idNum, String reIdNum, String tel, String idPic, String holdIdPic,
			FcUser fcuserId) {
		accountDao.addPersonCertify(name, idNum, reIdNum, tel, idPic, holdIdPic, fcuserId);
	}

	@Override
	public void addEnterCertify(String enterpriceName, String corporateName, String appName, String phone, String tel,
			String website, String idPic, String holdIdPic, FcUser fcuserId) {
		accountDao.addEnterCertify(enterpriceName, corporateName, appName, phone, tel, website, idPic, holdIdPic, fcuserId);
	}

}
