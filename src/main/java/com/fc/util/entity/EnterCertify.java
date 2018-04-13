package com.fc.util.entity;

import com.fc.base.user.entity.Base;
import com.fc.base.user.entity.FcUser;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import javax.persistence.*;

@Entity
@Table(name = "enter_certify")
public class EnterCertify extends Base{//企业认证
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(name = "ec_id",length = 36)
    private String ecId;
    @Column(name = "fcuser_id")
    private String fcUserId;
    @Column(name = "enterprice_name")
    private String enterpriceName;//企业名称
    @Column(name = "corporate_name")
    private String corporateName;//法人名称
    @Column(name = "app_name")
    private String appName;//申请人姓名
    @Column(name = "phone")
    private String phone;//固定电话
    @Column(name = "tel")
    private String tel;//手机号
    @Column(name = "website")
    private String website;//公司网站
    @Column(name = "id_pic")
    private String idPic;//身份证照片图片地址
    @Column(name = "hold_id_pic")
    private String holdIdPic;//手持身份证照片地址

    public String getEcId() {
        return ecId;
    }

    public void setEcId(String ecId) {
        this.ecId = ecId;
    }

    public String getFcUserId() {
        return fcUserId;
    }

    public void setFcUserId(String fcUserId) {
        this.fcUserId = fcUserId;
    }

    public String getEnterpriceName() {
        return enterpriceName;
    }

    public void setEnterpriceName(String enterpriceName) {
        this.enterpriceName = enterpriceName;
    }

    public String getCorporateName() {
        return corporateName;
    }

    public void setCorporateName(String corporateName) {
        this.corporateName = corporateName;
    }

    public String getAppName() {
        return appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
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

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getIdPic() {
        return idPic;
    }

    public void setIdPic(String idPic) {
        this.idPic = idPic;
    }

    public String getHoldIdPic() {
        return holdIdPic;
    }

    public void setHoldIdPic(String holdIdPic) {
        this.holdIdPic = holdIdPic;
    }

}
