package com.fc.base.contentadmin.news.entity;

import javax.persistence.*;

@Entity
@Table(name = "news")
public class
NewsEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; //id
    @Column(name = "newsTitle")
    private String newsTitle;//产品标题
    @Column(name = "newsKey")
    private String newsKey; //产品关键字
    @Column(name = "newsType" )
    private String newsType;//产品类型
    @Column(name = "htmlText" ,length= 9999)
    private  String htmlText;//产品描述
    @Column(name="createDate")
    private String crateDate;//创建时间
    @Column(name = "newsState")
    private  String newsState;//状态
    @Column(name = "newsBrowser")
    private  int newsBrowser;  //浏览量
    @Column(name = "userName")
    private  String userName;//用户名称
    @Column(name ="newsAbstract")
    private String newsAbstract;
    @Column(name="adminType")//管理员类型
    private String adminType;

    public String getAdminType() {
        return adminType;
    }

    public void setAdminType(String adminType) {
        this.adminType = adminType;
    }

    public NewsEntity() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public String getNewsKey() {
        return newsKey;
    }

    public void setNewsKey(String newsKey) {
        this.newsKey = newsKey;
    }

    public String getNewsType() {
        return newsType;
    }

    public void setNewsType(String newsType) {
        this.newsType = newsType;
    }

    public String getHtmlText() {
        return htmlText;
    }

    public void setHtmlText(String htmlText) {
        this.htmlText = htmlText;
    }

    public String getCrateDate() {
        return crateDate;
    }

    public void setCrateDate(String crateDate) {
        this.crateDate = crateDate;
    }

    public String getNewsState() {
        return newsState;
    }

    public void setNewsState(String newsState) {
        this.newsState = newsState;
    }

    public int getNewsBrowser() {
        return newsBrowser;
    }

    public void setNewsBrowser(int newsBrowser) {
        this.newsBrowser = newsBrowser;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getNewsAbstract() {
        return newsAbstract;
    }

    public void setNewsAbstract(String newsAbstract) {
        this.newsAbstract = newsAbstract;
    }
}
