package com.fc.base.product.entity;

import javax.persistence.*;

/**
 * Created by lenovo on 2017/10/25.
 */
@Entity
@Table(name="pro_Apply")//免费申请体验表
public class ProApplyEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "userName")
    private String userName;   //用户名
    @Column(name="industry")
    private String industry; //行业类型
    @Column(name="companyType")
    private String companyType;//公司类型
    @Column(name="application")
    private String application; //申请人
    @Column(name="company")
    private String company;  //公司名
    @Column(name="address")
    private String address;//经营地址
    @Column(name="fHpone")
    private String fHpone;//固定电话
    @Column(name="mHpone")
    private String mHpone;//手机号码
    @Column(name="email")
    private String email; //邮箱
    @Column(name="website")
    private String website;//公司网址
    @Column(name="userQQ")
    private String userQQ;//qq号
    @Column(name="appContent")
    private String appContent;//申请内容
    @Column(name="status")
    private String status;//申请状态
    @Column(name="createTime")
    private String createTime;//申请时间
    @Version
    @Column(name="version")
    private int version;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getApplication() {
        return application;
    }

    public void setApplication(String application) {
        this.application = application;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getfHpone() {
        return fHpone;
    }

    public void setfHpone(String fHpone) {
        this.fHpone = fHpone;
    }

    public String getmHpone() {
        return mHpone;
    }

    public void setmHpone(String mHpone) {
        this.mHpone = mHpone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getUserQQ() {
        return userQQ;
    }

    public void setUserQQ(String userQQ) {
        this.userQQ = userQQ;
    }

    public String getAppContent() {
        return appContent;
    }

    public void setAppContent(String appContent) {
        this.appContent = appContent;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCompanyType() {
        return companyType;
    }

    public void setCompanyType(String companyType) {
        this.companyType = companyType;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}
