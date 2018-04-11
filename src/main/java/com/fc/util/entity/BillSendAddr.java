package com.fc.util.entity;

import com.fc.base.user.entity.Base;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "bill_send_addr")
public class BillSendAddr extends Base{//发票邮寄地址
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 36)
    private String  id;
    @OneToOne
    @Cascade(value ={org.hibernate.annotations.CascadeType.SAVE_UPDATE})
    @JoinColumn(name = "ba_id")
    private BillApp baId;
    @Column(name = "receiver",length = 10)
    private String receiver;//收件人
    @Column(name = "city")
    private String city;//所在城市
    @Column(name = "address")
    private String address;//详细地址
    @Column(name = "mail_code" ,length = 10)
    private String mailCode;//邮政编号
    @Column(name = "phone" ,length = 20)
    private String phone;//固定电话
    @Column(name = "tel" ,length = 11)
    private String tel;//手机号

}
