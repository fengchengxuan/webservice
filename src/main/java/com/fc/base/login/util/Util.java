package com.fc.base.login.util;

import com.fc.base.login.model.User;

import java.util.List;

public class Util {
   private List<User> userList;
   private int totalNum;
   private int currentPage=5;

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        totalNum=userList.size()/currentPage;
        if(userList.size()%currentPage>0){
            totalNum++;
        }
        this.userList = userList;
    }

    public int getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(int totalNum) {
        this.totalNum = totalNum;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
}
