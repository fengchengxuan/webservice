package com.fc.util.service.impl;

import com.fc.util.entity.*;
import org.springframework.beans.factory.annotation.Autowired;

import com.fc.base.user.entity.FcUser;
import com.fc.util.dao.AccountDao;
import com.fc.util.service.AccountService;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    AccountDao  accountDao;

	@Override
	public void appBill(String appType, String billType, String billTitle, String userid) {
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
	public void addSafeQuestion(String qusertion, String answer, String confirmAnswer, String fcuserId) {
		accountDao.addSafeQuestion(qusertion, answer, confirmAnswer, fcuserId);
	}

	@Override
	public void addSafeQuestion(SafeQusetion safeQusetion, String qusertion, String answer, String confirmAnswer) {
			safeQusetion.setAnswer(answer);
			safeQusetion.setQuestion(qusertion);
			safeQusetion.setConfirmAnswer(confirmAnswer);
			accountDao.saveSafeQuestion(safeQusetion);
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

	@Override
	public SafeQusetion getSafeQusetion(String fcUserId) {
		return accountDao.findSafeQusetion(fcUserId);
	}

	@Override
	public PersonCertify findPersonCertify(String id) {
		return accountDao.findPersonCertify(id);
}

	@Override
	public void savePersonCertify(PersonCertify personCertify) {
          accountDao.savePersonCertify(personCertify);
	}

	@Override
	public EnterCertify findEnterCertify(String id) {
		return accountDao.findEnterCertify(id);
	}

	@Override
	public void saveEnterCertify(EnterCertify enterCertify) {
		accountDao.saveEnterCertify(enterCertify);
	}

	@Override
	public BillApp findBillApp(String id) {
		return accountDao.findBillApp(id);
	}

	@Override
	public void appBill(BillApp billApp) {
		accountDao.appBill(billApp);
	}

	@Override
	public BillSendAddr findBillSendAddr(String id) {
		return accountDao.findBillSendAddr(id);
	}

	@Override
	public void appBillSendAddr(BillSendAddr billSendAddr) {
		accountDao.appBillSendAddr(billSendAddr);
	}

	@Override
	public void appBillSendAddr(String receiver, String city, String address, String mailCode, String phone, String tel,String id) {
		BillSendAddr billSendAddr=new BillSendAddr();
		billSendAddr.setAddress(address);
		billSendAddr.setCity(city);
		billSendAddr.setPhone(phone);
		billSendAddr.setTel(tel);
		billSendAddr.setMailCode(mailCode);
		billSendAddr.setReceiver(receiver);
		billSendAddr.setBaId(id);
		accountDao.appBillSendAddr(billSendAddr);
	}
}
