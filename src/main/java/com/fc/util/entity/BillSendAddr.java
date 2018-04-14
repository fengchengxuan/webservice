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
    @Column(name = "ba_id")
    private String baId;
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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBaId() {
        return baId;
    }

    public void setBaId(String baId) {
        this.baId = baId;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMailCode() {
        return mailCode;
    }

    public void setMailCode(String mailCode) {
        this.mailCode = mailCode;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }
}
