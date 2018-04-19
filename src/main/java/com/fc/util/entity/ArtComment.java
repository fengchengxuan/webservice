package com.fc.util.entity;

public class ArtComment {
    private String user;        //用户
    private String commenter;   //用户类型
    private String content;     //评论内容
    private String commontType;//评价类型
    private String status;       //状态
    private String artTitle;      //文章标题



    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getCommenter() {
        return commenter;
    }

    public void setCommenter(String commenter) {
        this.commenter = commenter;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCommontType() {
        return commontType;
    }

    public void setCommontType(String commontType) {
        this.commontType = commontType;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getArtTitle() {
        return artTitle;
    }

    public void setArtTitle(String artTitle) {
        this.artTitle = artTitle;
    }
}
