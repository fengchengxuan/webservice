package com.fc.base.product.entity;


import com.fc.util.entity.BillApp;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by lenovo on 2017/9/20.
 */
@Entity
@Table(name="product") //产品信息表
public class ProductEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; //id
    @Column(name = "proTitle" ,nullable = false)
    private String proTitle;//产品标题
    @Column(name = "proKey" ,nullable = false)
    private String proKey; //产品关键字
    @Column(name = "proType" )
    private String proType;//产品类型
    @Column(name = "pro_price")//单价
    private int price;
    @Column(name = "htmlText" ,length= 9999)
    private  String htmlText;//产品描述
    @Column(name="createDate")
    private String crateDate;//创建时间
    @Column(name = "proState" )
    private  String proState;//状态
    @Column(name = "proBrowser")
    private  int proBrowser;  //浏览量
    @Column(name = "userName",nullable = false)
    private  String userName;//用户名称
    @Column(name ="proAbstract")
    private String proAbstract;
    @Column(name="adminType")//管理员类型
    private String adminType;
    @Version
    @Column(name="version")
    private int version;
    @OneToMany(mappedBy = "proEntity" ,targetEntity = ProductInofEntity.class)
    private List<ProductInofEntity> proInfoList;

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

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

    public String getProAbstract() {
        return proAbstract;
    }

    public void setProAbstract(String proAbstract) {
        this.proAbstract = proAbstract;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProTitle() {
        return proTitle;
    }

    public void setProTitle(String proTitle) {
        this.proTitle = proTitle;
    }

    public String getProKey() {
        return proKey;
    }

    public void setProKey(String proKey) {
        this.proKey = proKey;
    }

    public String getProType() {
        return proType;
    }

    public void setProType(String proType) {
        this.proType = proType;
    }

    public String getHtmlText() {
        return htmlText;
    }

    public void setHtmlText(String htmlText) {
        this.htmlText = htmlText;
    }

    public String getProState() {
        return proState;
    }

    public void setProState(String proState) {
        this.proState = proState;
    }

    public int getProBrowser() {
        return proBrowser;
    }

    public void setProBrowser(int proBrowser) {
        this.proBrowser = proBrowser;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public List<ProductInofEntity> getProInfoList() {
        return proInfoList;
    }
    public void setProInfoList(List<ProductInofEntity> proInfoList) {
        this.proInfoList = proInfoList;
    }

}
