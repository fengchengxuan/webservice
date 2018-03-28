package com.fc.base.product.entity;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.CascadeType;

import javax.persistence.*;

@Entity
@Table(name="orderInfo")
public class OrderInfoEntity {//订单内容
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",strategy = "uuid")
    @Column(length = 36)
    private String id;
    @Column
    private String demand;//需求
    @Column
    private String service;//服务标准
    @Column
    private String timeValue;//时长
    @Column
    private String num;//数量
    @Column
    private String  preferential;//优惠卷
    @Column
    private String  price;//金额
    @Column
    private String givenFree;//赠送内容
    @ManyToOne
    @JoinColumn(name="Order_id",referencedColumnName="id")
    @Cascade(value={CascadeType.SAVE_UPDATE,CascadeType.DELETE})
    private OrderEntity entity;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDemand() {
        return demand;
    }

    public void setDemand(String demand) {
        this.demand = demand;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getTimeValue() {
        return timeValue;
    }

    public void setTimeValue(String timeValue) {
        this.timeValue = timeValue;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getPreferential() {
        return preferential;
    }

    public void setPreferential(String preferential) {
        this.preferential = preferential;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getGivenFree() {
        return givenFree;
    }

    public void setGivenFree(String givenFree) {
        this.givenFree = givenFree;
    }

    public OrderEntity getEntity() {
        return entity;
    }

    public void setEntity(OrderEntity entity) {
        this.entity = entity;
    }
}
