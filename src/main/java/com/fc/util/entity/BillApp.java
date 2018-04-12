package com.fc.util.entity;

import com.fc.base.user.entity.Base;
import com.fc.base.user.entity.FcUser;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "bill_app")
public class BillApp extends Base{//申请发票
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(name = "ba_id",length = 36)
    private String baId;
    @ManyToOne
    @JoinColumn(name="fcuser_id",referencedColumnName="id")
    @Cascade(value={org.hibernate.annotations.CascadeType.SAVE_UPDATE, org.hibernate.annotations.CascadeType.DELETE})
    private FcUser fcUser;
    @Column(name = "app_type")
    private String appType;//开具类型
    @Column(name = "bill_type")
    private String billType;//发票类型
    @Column(name = "bill_title")
    private String billTitle;//发票抬头

    public String getBaId() {
        return baId;
    }

    public void setBaId(String baId) {
        this.baId = baId;
    }

    public String getAppType() {
        return appType;
    }

    public void setAppType(String appType) {
        this.appType = appType;
    }

    public String getBillType() {
        return billType;
    }

    public void setBillType(String billType) {
        this.billType = billType;
    }

    public String getBillTitle() {
        return billTitle;
    }

    public void setBillTitle(String billTitle) {
        this.billTitle = billTitle;
    }

    public FcUser getFcUser() {
        return fcUser;
    }

    public void setFcUser(FcUser fcUser) {
        this.fcUser = fcUser;
    }
}
