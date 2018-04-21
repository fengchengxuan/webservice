package com.fc.util.entity;

import com.fc.base.user.entity.Base;
import com.fc.base.user.entity.FcUser;
import com.fc.util.BaseDao;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "free_apply_num")
public class FreeApplyNum extends Base {//免费申请表
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(name = "fan_id",length = 36)
    private String id;
    @OneToOne
    @Cascade(value = {org.hibernate.annotations.CascadeType.SAVE_UPDATE})
    @JoinColumn(name = "fcuser_id")
    private FcUser fcUserId;//
    @Column(name = "num")
    private int num;//开放名额
    @Column(name = "starttime")
    private Timestamp starttime;
    @Column(name = "passNum") //审批中名额
    private int passNum;
    @Column(name = "restNum")//剩下名额
    private int restNum;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public FcUser getFcUserId() {
        return fcUserId;
    }

    public void setFcUserId(FcUser fcUserId) {
        this.fcUserId = fcUserId;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public Timestamp getStarttime() {
        return starttime;
    }

    public void setStarttime(Timestamp starttime) {
        this.starttime = starttime;
    }

    public int getPassNum() {
        return passNum;
    }

    public void setPassNum(int passNum) {
        this.passNum = passNum;
    }

    public int getRestNum() {
        return restNum;
    }

    public void setRestNum(int restNum) {
        this.restNum = restNum;
    }
}
