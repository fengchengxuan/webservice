package com.fc.base.contentadmin.artitle.entity;


import com.fc.util.entity.FcComment;
import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.util.List;

/**
 * Created by lenovo on 2017/9/20.
 */
@Entity
@Table(name="article")
public class ArticleEntity {
    @Id 
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; //id
    @Column(name = "artTitle" )
    private String artTitle;//产品标题
    @Column(name = "artKey" )
    private String artKey; //产品关键字
    @Column(name = "artType" )
    private String artType;//产品类型
    @Column(name = "htmlText" ,length= 9999)
    private  String htmlText;//产品描述
    @Column(name="createDate")
    private String crateDate;//创建时间
    @Column(name = "artState" )
    private  String artState;//状态
    @Column(name = "artBrowser")
    private  int artBrowser;  //浏览量
    @Column(name = "userName")
    private  String userName;//用户名称
    @Column(name ="artAbstract")
    private String artAbstract;
    @Column(name="adminType")//管理员类型
    private String adminType;
    @Column(name="fcuser_id")//fcuser id
    private String fcuserId;
    @Column(name="fccommon_id")//fcuser id
    private String fccommonId;
    @Column(name="fccomment_id")
    private String fccommentId;

    public String getAdminType() {
        return adminType;
    }

    public void setAdminType(String adminType) {
        this.adminType = adminType;
    }

    public String getCrateDate() {
        return crateDate;
    }

    public void setCrateDate(String crateDate) {
        this.crateDate = crateDate;
    }

    public String getArtAbstract() {
        return artAbstract;
    }

    public void setArtAbstract(String artAbstract) {
        this.artAbstract = artAbstract;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getArtTitle() {
        return artTitle;
    }

    public void setArtTitle(String artTitle) {
        this.artTitle = artTitle;
    }

    public String getArtKey() {
        return artKey;
    }

    public void setArtKey(String artKey) {
        this.artKey = artKey;
    }

    public String getArtType() {
        return artType;
    }

    public void setArtType(String artType) {
        this.artType = artType;
    }

    public String getHtmlText() {
        return htmlText;
    }

    public void setHtmlText(String htmlText) {
        this.htmlText = htmlText;
    }

    public String getArtState() {
        return artState;
    }

    public void setArtState(String artState) {
        this.artState = artState;
    }

    public int getArtBrowser() {
        return artBrowser;
    }

    public void setArtBrowser(int artBrowser) {
        this.artBrowser = artBrowser;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getFcuserId() {
        return fcuserId;
    }

    public void setFcuserId(String fcuserId) {
        this.fcuserId = fcuserId;
    }

    public String getFccommonId() {
        return fccommonId;
    }

    public void setFccommonId(String fccommonId) {
        this.fccommonId = fccommonId;
    }

    public String getFccommentId() {
        return fccommentId;
    }

    public void setFccommentId(String fccommentId) {
        this.fccommentId = fccommentId;
    }
}
