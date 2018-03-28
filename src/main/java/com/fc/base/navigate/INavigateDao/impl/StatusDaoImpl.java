package com.fc.base.navigate.INavigateDao.impl;

import com.fc.base.navigate.INavigateDao.IStatusDao;
import com.fc.base.navigate.model.Status;
import com.fc.util.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StatusDaoImpl extends BaseDao<Status> implements IStatusDao{

    @Override
    public List<Status> slist() {
        String hql = "from Status";
        return super.findList(hql,new Object[]{});
    }

    @Override
    public Status getstatus(int stId) {
        String hql = "from Status where stId=?";
        Object[]args={stId};
        return super.findEntity(hql,args);
    }
}
