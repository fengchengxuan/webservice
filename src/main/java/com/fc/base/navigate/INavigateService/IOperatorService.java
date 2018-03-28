package com.fc.base.navigate.INavigateService;

import com.fc.base.navigate.model.Operator;

import java.util.List;

public interface IOperatorService  {

    List<Operator> olist();
    Operator getoperator(int id);
}
