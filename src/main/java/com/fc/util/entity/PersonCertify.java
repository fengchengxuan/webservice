package com.fc.util.entity;

import com.fc.base.user.entity.Base;
import com.fc.base.user.entity.FcUser;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "person_certify")
public class PersonCertify extends Base {//个人认证
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(name = "pc_id",length = 36)
    private String id;
    @OneToOne
    @Cascade(value = {org.hibernate.annotations.CascadeType.SAVE_UPDATE})
    @JoinColumn(name = "fcuser_id")
    private FcUser fcuserId;
    @Column(name = "name",length = 20)//姓名
    private String name;
    @Column(name = "id_num",length = 20)//身份证号
    private String idNum;
    @Column(name = "re_id_num",length = 20)//身份证号
    private String reIdNum;
    @Column(name = "tel")
    private String tel;//手机号
    @Column(name = "id_pic")
    private String idPic;//身份证照片图片地址
    @Column(name = "hold_id_pic")
    private String holdIdPic;//手持身份证照片图片地址

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public FcUser getFcuserId() {
        return fcuserId;
    }

    public void setFcuserId(FcUser fcuserId) {
        this.fcuserId = fcuserId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIdNum() {
        return idNum;
    }

    public void setIdNum(String idNum) {
        this.idNum = idNum;
    }

    public String getReIdNum() {
        return reIdNum;
    }

    public void setReIdNum(String reIdNum) {
        this.reIdNum = reIdNum;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
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
