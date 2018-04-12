package com.fc.util.entity;

import com.fc.base.user.entity.Base;
import com.sun.javafx.beans.IDProperty;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;


import javax.persistence.*;

@Entity
@Table(name = "bill_logistics")
public class BillLogistics extends Base{//发票物流信息
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 36)
    private String  id;
    @OneToOne
    @Cascade(value = {org.hibernate.annotations.CascadeType.SAVE_UPDATE})
    @JoinColumn(name = "ba_id")
    private BillApp baId;
    @Column(name = "logistics_comp")
    private String logistics_Comp;//物流公司
    @Column(name = "logistics_no")
    private String logisticsNo;//单号
    @Column(name = "logistics_info")
    private String logisticsInfo;//物流信息

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public BillApp getBaId() {
        return baId;
    }

    public void setBaId(BillApp baId) {
        this.baId = baId;
    }

    public String getLogistics_Comp() {
        return logistics_Comp;
    }

    public void setLogistics_Comp(String logistics_Comp) {
        this.logistics_Comp = logistics_Comp;
    }

    public String getLogisticsNo() {
        return logisticsNo;
    }

    public void setLogisticsNo(String logisticsNo) {
        this.logisticsNo = logisticsNo;
    }

    public String getLogisticsInfo() {
        return logisticsInfo;
    }

    public void setLogisticsInfo(String logisticsInfo) {
        this.logisticsInfo = logisticsInfo;
    }
}
