package com.fc.login.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "log")
public class Log {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",strategy = "uuid")
    @Column(length = 36)
    private String id;

    @Column(length = 50)
    private String email;

    @Column(length = 15)
    private String password;

    @Column(length = 15)
    private String repassword;

    @Column(length = 6)
    private String code;

    @Column
    private String logState;

    @Column
    private String usertype;

    @Column
    private String registertime;

    @Column
    private String location;

    @Column
    private String dimension;

    @Column
    private String img;

    @Column(length = 10)
    private String vipname;

    @Column(length = 11)
    private String phonenumber;

    @Column(length = 12)
    private String stablephone;

    @Column(length = 15)
    private String social;

    @Column(length = 20)
    private String companyname;

    @Column(length = 20)
    private String htype;

    @Column(length = 15)
    private String ctype;

    @Column(length = 10)
    private String stype;

    @Column(length = 20)
    private String web;

    @Column(length = 50)
    private String address;

    public String getId() {
        return id;
    }


    public void setId(String id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getVipname() {
        return vipname;
    }

    public void setVipname(String vipname) {
        this.vipname = vipname;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getStablephone() {
        return stablephone;
    }

    public void setStablephone(String stablephone) {
        this.stablephone = stablephone;
    }

    public String getSocial() {
        return social;
    }

    public void setSocial(String social) {
        this.social = social;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public String getHtype() {
        return htype;
    }

    public void setHtype(String htype) {
        this.htype = htype;
    }

    public String getCtype() {
        return ctype;
    }

    public void setCtype(String ctype) {
        this.ctype = ctype;
    }

    public String getStype() {
        return stype;
    }

    public void setStype(String stype) {
        this.stype = stype;
    }

    public String getWeb() {
        return web;
    }

    public void setWeb(String web) {
        this.web = web;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLogState() {
        return logState;
    }

    public void setLogState(String logState) {
        this.logState = logState;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public String getRegistertime() {
        return registertime;
    }

    public void setRegistertime(String registertime) {
        this.registertime = registertime;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDimension() {
        return dimension;
    }

    public void setDimension(String dimension) {
        this.dimension = dimension;
    }
}
