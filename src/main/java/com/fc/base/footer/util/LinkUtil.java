package com.fc.base.footer.util;

import com.fc.base.footer.model.Link;

import java.util.List;

public class LinkUtil {

    private List<Link> linkList;
    private int totalNum;
    private int currentPage=5;

    public List<Link> getLinkList() {
        return linkList;
    }

    public void setLinkList(List<Link> linkList) {
        totalNum=linkList.size()/currentPage;
        if(linkList.size()%currentPage>0){
            totalNum++;
        }
        this.linkList = linkList;
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
