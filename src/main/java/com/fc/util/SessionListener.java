package com.fc.util;


import com.fc.base.login.model.User;
import com.fc.base.login.service.IUserService;
import com.fc.login.util.LoginUser;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.Map;
public class SessionListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        httpSessionEvent.getSession().setMaxInactiveInterval(120);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent){
        String userName =(String)httpSessionEvent.getSession().getAttribute("userName");
        Map<String,Object> map= LoginUser.getLoginUser().map;
        map.remove(userName);
    }

}
