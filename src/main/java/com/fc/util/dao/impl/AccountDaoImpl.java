package com.fc.util.dao.impl;

import com.fc.base.user.entity.FcUser;
import com.fc.util.BaseDao;
import com.fc.util.dao.AccountDao;
import com.fc.util.entity.*;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Repository
public class AccountDaoImpl extends BaseDao  implements AccountDao {

	// �˺ŵ���-Ʊ�ݹ���-���뿪��Ʊ 


	@Override
	public void appBill(String appType, String billType, String billTitle, String userid) {
		BillApp billapp = new BillApp();
		billapp.setAppType(appType);
		billapp.setBillType(billType);
		billapp.setBillTitle(billTitle);
		billapp.setFcUser(userid);
		billapp.setBillCreateDate(new Date());
		super.save(billapp);
	}

	@Override
	public void appBill(BillApp billApp) {
		super.saveOrUpdate(billApp);
	}

	// �˺ŵ���-Ʊ�ݹ���-�շ���Ʊ
	@Override
	public void receiveBill(String receiver, String city, String address, String mail_code, String phone, String tel, String userid) {
		
	}

	// �˺ŵ���-Ʊ�ݹ���-��Ʊ����
	@Override
	public BillManage billManage(String userid) {
        String hql = "from BillApp ba, BillSendAddr bsa where ba.ba_id=bsa.ba_id and ba.fcuser_id=?";
        Object[]args = {userid};
        return (BillManage)super.findEntity(hql,args);
	}

	// �˺ŵ���-Ʊ�ݹ���-��Ʊ����
	@Override
	public BillLogistics getBillLogistics(String userid) {
        String hql = "from BillLogistics where fcuserId = ? ";
        Object[]args = {userid};
        return (BillLogistics)super.findEntity(hql,args);
	}


	public void addPersonCertify(String name, String idNum, String reIdNum, String tel, String idPic, String holdIdPic, FcUser fcuserId) {
		
	}
	
	public void addEnterCertify(String enterpriceName, String corporateName, String appName, String phone, String tel, String website,String idPic, String holdIdPic, FcUser fcuserId) {
		
	}

	@Override
	public void addSafeQuestion( String question,String answer,String ConfirmAnswer, String fcuserId) {
		SafeQusetion sq = new SafeQusetion();
		sq.setQuestion(question);
		sq.setAnswer(answer);
		sq.setConfirmAnswer(ConfirmAnswer);
		sq.setFcuserId(fcuserId);
		super.saveOrUpdate(sq);
	}

	@Override
	public SafeQusetion findSafeQusetion(String fcUserId) {
		String hql="from SafeQusetion  where fcuserId = ?";
		Object[]args = {fcUserId};
		List<String> list= new ArrayList<>();
		list.add( fcUserId);
		return (SafeQusetion) super.findEntity(hql,args);
	}

	@Override
	public void saveSafeQuestion(SafeQusetion entity) {
		super.saveOrUpdate(entity);
	}

	@Override
	public PersonCertify findPersonCertify(String id) {
		String hql ="from PersonCertify where  fcuserId = ?" ;
		Object []args={id};
		return (PersonCertify)super.findEntity(hql,args);
	}

	@Override
	public void savePersonCertify(PersonCertify personCertify) {
		super.saveOrUpdate(personCertify);
	}

	@Override
	public EnterCertify findEnterCertify(String id) {
		String hql ="from EnterCertify where fcUserId = ?" ;
		Object []args={id};
		return (EnterCertify)super.findEntity(hql,args);
	}

	@Override
	public void saveEnterCertify(EnterCertify enterCertify) {
		super.saveOrUpdate(enterCertify);
	}

	@Override
	public BillApp findBillApp(String id) {
		String hql ="from BillApp where fcUser = ?" ;
		Object []args={id};
		List list = new ArrayList<>();
		list.add(id);
		return (BillApp)super.findEntity(hql,args);
	}

	@Override
	public BillSendAddr findBillSendAddr(String id) {
		String hql ="from BillSendAddr where baId = ?" ;
		Object []args={id};
		return (BillSendAddr)super.findEntity(hql,args);
	}

	@Override
	public void appBillSendAddr(BillSendAddr billSendAddr) {
		super.saveOrUpdate(billSendAddr);
	}
}
