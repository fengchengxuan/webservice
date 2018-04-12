package com.fc.base.product.entity;


import javax.persistence.*;

import com.fc.base.user.entity.FcUser;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.CascadeType;
import java.util.List;

@Entity
@Table(name="Porder")
public class OrderEntity {
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",strategy = "uuid")
    @Column(length = 36)
    private String id;
    @Column
    private String code;  //编号
    @Column(length = 50)
    private String proTitle;//产品
    @Column
    private String time;//创建时时间
    @Column(length=15)
    private String price; //总金额
    @Column(name = "fcuser_id")
    private String fcUserId; //用户id
    @Column
    private String transaction;//交易状态
    @Column
    private String state;//订单状态
    @Version
    private int version;
    @OneToMany(mappedBy="entity",targetEntity=OrderInfoEntity.class)
    @Cascade(value={CascadeType.SAVE_UPDATE,CascadeType.DELETE})
    private List<OrderInfoEntity> list;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getProTitle() {
        return proTitle;
    }

    public void setProTitle(String proTitle) {
        this.proTitle = proTitle;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }


    public String getFcUserId() {
        return fcUserId;
    }

    public void setFcUserId(String fcUserId) {
        this.fcUserId = fcUserId;
    }

    public String getTransaction() {
        return transaction;
    }

    public void setTransaction(String transaction) {
        this.transaction = transaction;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public List<OrderInfoEntity> getList() {
        return list;
    }

    public void setList(List<OrderInfoEntity> list) {
        this.list = list;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
