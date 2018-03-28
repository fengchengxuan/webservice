package com.fc.base.consult.dao;

import com.fc.base.consult.entity.ConsultEntity;

import java.util.List;

public interface ConsultDao {
    public List<ConsultEntity> findConsultDao(String userType, String consultType, String
            consultState, String consultAdmin, String consultResult);
}
