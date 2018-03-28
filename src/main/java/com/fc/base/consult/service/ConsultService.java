package com.fc.base.consult.service;

import com.fc.base.consult.util.ConsultUtil;

public interface ConsultService {
    public ConsultUtil findConsultService(String userType, String consultType, String consultTime, String
            consultState, String consultAdmin, String consultResult);
}
