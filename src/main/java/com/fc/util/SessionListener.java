package com.fc.util;


import java.util.Map;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.fc.login.util.LoginUser;
public class SessionListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {

    }
   
    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent){
        String userName =(String)httpSessionEvent.getSession().getAttribute("userName");
        httpSessionEvent.getSession().removeAttribute("fcUser");
        Map<String,Object> map= LoginUser.getLoginUser().map;
        map.remove(userName);
    }

}
