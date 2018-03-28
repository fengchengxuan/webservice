package com.fc.base.navigate.INavigateDao;

import com.fc.base.navigate.model.Operator;

import java.util.List;

public interface IOperatorDao {

    List<Operator> olist();
    Operator getoperator(int opId);
}
