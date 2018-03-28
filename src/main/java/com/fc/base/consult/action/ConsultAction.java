package com.fc.base.consult.action;

import com.fc.base.consult.service.ConsultService;
import com.fc.base.consult.util.ConsultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
@RequestMapping("consult")
public class ConsultAction {
    @Autowired
    private ConsultService consultService;
    @RequestMapping("showAll")
    public @ResponseBody ConsultUtil findAllConsult(String userType,String consultType,String consultTime,String
            consultState,String consultAdmin,String consultResult){
        return consultService.findConsultService(userType,consultType,consultTime,consultState,consultAdmin,consultResult);
    }
}
