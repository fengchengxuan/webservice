package com.fc.base.navigate.INavigateDao.impl;

import com.fc.base.navigate.INavigateDao.IOperatorDao;
import com.fc.base.navigate.model.Operator;
import com.fc.util.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class OperatorDaoImpl extends BaseDao<Operator> implements IOperatorDao{

    @Override
    public List<Operator> olist() {
        String hql = "from Operator";
        return super.findList(hql,new Object[]{});
    }

    @Override
    public Operator getoperator(int opId) {
        String hql = "from Operator where opId=?";
        Object[]args ={opId};
        return super.findEntity(hql,args);
    }
}
