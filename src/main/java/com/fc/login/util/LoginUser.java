package com.fc.login.util;

import java.util.HashMap;
import java.util.Map;

public class LoginUser {
    public static Map<String,Object> map=new HashMap<>();;
    public static int i=0;
    private static LoginUser loginUser;
    private LoginUser(){
    }
    public static  LoginUser getLoginUser(){
        i++;
        if(loginUser==null){
            loginUser=new LoginUser();
        }
        return  loginUser;
    }
}
