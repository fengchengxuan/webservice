package com.fc.base.consult.service.serviceimpl;

import com.fc.base.consult.dao.ConsultDao;
import com.fc.base.consult.service.ConsultService;
import com.fc.base.consult.util.ConsultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ConsultServiceImpl implements ConsultService {
    @Autowired
    private ConsultDao consultDao;
    @Override
    public ConsultUtil findConsultService(String userType,String consultType,String consultTime,String
            consultState,String consultAdmin,String consultResult) {
        if(userType ==null||"用户".equals(userType)){
            userType="";
        }
        if(consultType ==null||"咨询类型".equals(consultType)){
            consultType="";
        }
        if(consultState ==null||"咨询状态".equals(consultState)){
            consultState="";
        }
        if(consultAdmin ==null||"咨询处理人".equals(consultAdmin)){
            consultAdmin="";
        }
        if(consultResult ==null||"咨询处理结果".equals(consultResult)){
            consultResult="";
        }
        ConsultUtil util=new ConsultUtil();
        util.setList(consultDao.findConsultDao(userType,consultType,
                consultState,consultAdmin,consultResult));
        return util;
    }
}
