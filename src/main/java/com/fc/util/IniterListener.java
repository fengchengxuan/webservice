package com.fc.util;

import com.fc.login.util.LoginUser;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

    public class IniterListener  implements ServletContextListener {
        @Override
        public void contextInitialized(ServletContextEvent servletContextEvent) {
            LoginUser.getLoginUser();
        }
        @Override
        public void contextDestroyed(ServletContextEvent servletContextEvent) {
        	   
        }
    }

