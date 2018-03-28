package com.fc.login.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by lenovo on 2017/12/5.
 */
//匿名用户
@Entity
@Table(name = "anonymous")
public class AnonymousEntity {
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",strategy = "uuid")
    @Column(length = 36)
    private String id;

    @Column(length = 15)
    private String password;

    @Column(length = 20)
    private String vipname;

    @Column(length = 15)
    private String repassword;

    @Column(length = 6)
    public String code;

    @Column(length = 11,unique = true)
    private String anonymousUser;

    @Column(length = 20,unique = true)
    private String email;
    @Column
    private String dimension;
    @Column
    private String registered;
    @Column
    private String stype;
    @Column
    private String state;
    @Column
    private String Address;

    public String getStype() {
        return stype;
    }

    public void setStype(String stype) {
        this.stype = stype;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAnonymousUser() {
        return anonymousUser;
    }

    public String getDimension() {
        return dimension;
    }

    public void setDimension(String dimension) {
        this.dimension = dimension;
    }

    public String getRegistered() {
        return registered;
    }

    public void setRegistered(String registered) {
        this.registered = registered;
    }

    public void setAnonymousUser(String anonymousUser) {
        this.anonymousUser = anonymousUser;
    }

    public String getVipname() {
        return vipname;
    }

    public void setVipname(String vipname) {
        this.vipname = vipname;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
