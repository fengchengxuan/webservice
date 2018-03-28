package com.fc.base.product.entity;

public class GivenFree {
    private int id;
    private String type;  //类型
    private String content;//内容
    private int proInfo; //需求id

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getProInfo() {
        return proInfo;
    }

    public void setProInfo(int proInfo) {
        this.proInfo = proInfo;
    }
}
