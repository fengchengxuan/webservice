package com.fc.util.entity;

import com.fc.base.user.entity.Base;
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
    @Column(name = "app_type")
    private String appType;//开具类型
    @Column(name = "bill_type")
    private String billType;//发票类型
    @Column(name = "bill_title")
    private String billTitle;//发票抬头
}
