package com.fc.base.product.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by lenovo on 2017/10/18.
 */
@Entity
@Table(name="product_comment") //产品提问表
public class ProCommentEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name="user_code")//用户名
    private String userName;
    @Column(name="userLocation")//用户所在地
    private String userLocation;
    @Column(name="userIp")
    private String userIp;
    @Column(name="createDate")//创建时间
    private String createDate;
    @Column(name="proTitle")//产品标题
    private String proTitle;
    @Column(name="content")//提问内容
    private String content;
    @Column(name="admin")//管理员
    private String admin;
    @Column(name="reply")//管理回复
    private String reply;
    @Version
    @Column(name="version")
    private int version;

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

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

    public String getUserLocation() {
        return userLocation;
    }

    public void setUserLocation(String userLocation) {
        this.userLocation = userLocation;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getProTitle() {
        return proTitle;
    }

    public void setProTitle(String proTitle) {
        this.proTitle = proTitle;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAdmin() {
        return admin;
    }

    public void setAdmin(String admin) {
        this.admin = admin;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }

    public String getUserIp() {
        return userIp;
    }

    public void setUserIp(String userIp) {
        this.userIp = userIp;
    }
}
