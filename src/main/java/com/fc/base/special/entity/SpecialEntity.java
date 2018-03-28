package com.fc.base.special.entity;

import org.hibernate.annotations.*;
import org.hibernate.annotations.CascadeType;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by lenovo on 2017/11/16.
 */
@Entity
@Table(name="special") //专题信息表
public class SpecialEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "SpecialName" ,nullable = false) //专题名称
    private String specialName;

    @Column(name = "SpecialTitle")//专题标题
    private String specialTitle;

    @Column(name = "SpecialKey")//专题标题//关键词
    private String specialKey;

    @Column(name = "Description")// 图片描述
    private String description;

    @Column(name = "SpecialLink")//专题链接地址
    private String specialLink;

    @Column(name = "Structure")//专题结构
    private String structure;

    @Column(name = "State")//专题状态
    private String state;

    @Column(name = "AdminName")//管理人
    private String adminName;

    @Column(name = "AdminType")//管理人类型
    private String adminType;

    @Column(name = "UserName")//客户名称
    private String userName;

    @Column(name = "MakingDate")//制作日期
    private String makingDate;

    @Column(name = "DeliveryDate")//交付日期
    private String deliveryDate;

    @Column(name = "DemoAddress")//演示地址
    private String demoAddress;
    @Column(name = "SpeType")
    private String speType;//专题类型
    @Column(name = "SpeBrowser")
    private  int speBrowser;  //浏览量
    @Version
    @Column(name="pecial_version")
    private int version;
    @OneToOne
    @Cascade(value = {CascadeType.SAVE_UPDATE})//CascadeType.SAVE_UPDATE CascadeType.SAVE_UPDATE
    private SpecialEvalEntity evalEntity;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSpecialName() {
        return specialName;
    }

    public void setSpecialName(String specialName) {
        this.specialName = specialName;
    }

    public String getSpecialTitle() {
        return specialTitle;
    }

    public void setSpecialTitle(String specialTitle) {
        this.specialTitle = specialTitle;
    }

    public String getSpecialKey() {
        return specialKey;
    }

    public void setSpecialKey(String specialKey) {
        this.specialKey = specialKey;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSpecialLink() {
        return specialLink;
    }

    public void setSpecialLink(String specialLink) {
        this.specialLink = specialLink;
    }

    public String getStructure() {
        return structure;
    }

    public void setStructure(String structure) {
        this.structure = structure;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminType() {
        return adminType;
    }

    public void setAdminType(String adminType) {
        this.adminType = adminType;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getMakingDate() {
        return makingDate;
    }

    public void setMakingDate(String makingDate) {
        this.makingDate = makingDate;
    }

    public String getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public String getDemoAddress() {
        return demoAddress;
    }

    public void setDemoAddress(String demoAddress) {
        this.demoAddress = demoAddress;
    }

    public SpecialEvalEntity getEvalEntity() {
        return evalEntity;
    }

    public void setEvalEntity(SpecialEvalEntity evalEntity) {
        this.evalEntity = evalEntity;
    }

    public int getSpeBrowser() {
        return speBrowser;
    }

    public void setSpeBrowser(int speBrowser) {
        this.speBrowser = speBrowser;
    }

    public String getSpeType() {
        return speType;
    }

    public void setSpeType(String speType) {
        this.speType = speType;
    }
}
