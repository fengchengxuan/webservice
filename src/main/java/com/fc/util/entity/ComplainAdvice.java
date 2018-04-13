package com.fc.util.entity;

import com.fc.base.user.entity.Base;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "complain_advice")
public class ComplainAdvice extends Base {
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(name = "ca_id",length = 36)
    private String caId;
    @Column(name = "no",length = 50)
    private String no;
    @Column(name = "type",length = 1)
    private String type;
    @Column(name = "time")
    private Timestamp time;
    @Column(name = "maker")
    private String maker;//投诉建议人
    @Column(name = "reason")
    private String reason;//理由
    @Column(name = "result")
    private String result;//处理介结果

    public String getCaId() {
        return caId;
    }

    public void setCaId(String caId) {
        this.caId = caId;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getMaker() {
        return maker;
    }

    public void setMaker(String maker) {
        this.maker = maker;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}
