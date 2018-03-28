package com.fc.login.util;

public class LoginUtil {
    public String getProduct_Page(String typeValue){
        if(typeValue.equals("develop")){
            return "html/Product/Product_Page1";
        }else if (typeValue.equals("plan") ) {
            return "html/Product/Product_Page2";
        } else if (typeValue.equals("marketing")) {
            return "html/Product/Product_Page3";
        } else if (typeValue.equals("popularize")) {
            return "html/Product/Product_Page4";
        } else if (typeValue.equals("document")) {
            return "html/Product/Product_Page5";
        } else if (typeValue.equals("video")) {
            return "html/Product/Product_Page6";
        } else if (typeValue.equals("seo")) {
            return "html/Product/Product_Page7";
        } else if (typeValue.equals("media")) {
            return "html/Product/Product_Page8";
        } else if (typeValue.equals("baike")) {
            return "html/Product/Product_Page9";
        } else if (typeValue.equals("operation")) {
            return "html/Product/Product_Page10";
        } else if (typeValue.equals("data")) {
            return "html/Product/Product_Page11";
        } else if (typeValue.equals("advertisement")) {
            return "html/Product/Product_Page12";
        }
        return "";
    }
}
