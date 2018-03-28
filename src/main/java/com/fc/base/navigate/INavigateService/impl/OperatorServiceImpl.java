package com.fc.base.navigate.INavigateService.impl;

import com.fc.base.navigate.INavigateDao.IOperatorDao;
import com.fc.base.navigate.INavigateService.IOperatorService;
import com.fc.base.navigate.model.Operator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OperatorServiceImpl implements IOperatorService{

    @Autowired
    IOperatorDao iOperatorDao;

    @Override
    public List<Operator> olist() {
        return iOperatorDao.olist();
    }

    @Override
    public Operator getoperator(int opId) {
        return iOperatorDao.getoperator(opId);
    }
}
