package com.fc.base.consult.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "consult")
public class ConsultEntity {
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 36)
    private String id;//主键
    @Column(name = "code")
    private String code;//编号

    private String userType;//用户类型

    private String consultType;//咨询类型

    private String questions;//提问

    private String consultTime;//咨询时间

    private String replyTime;//回复时间

    private String consultState;//咨询状态

    private String consultAdmin;//咨询管理人

    private String replyContent;//回复内容

    private String consultResult;//咨询结
    public String getId() {
        return id;
    }
    @Version
    @Column(name="consultVersion")
    private int version;

    public void setId(String id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getConsultType() {
        return consultType;
    }

    public void setConsultType(String consultType) {
        this.consultType = consultType;
    }

    public String getQuestions() {
        return questions;
    }

    public void setQuestions(String questions) {
        this.questions = questions;
    }

    public String getConsultTime() {
        return consultTime;
    }

    public void setConsultTime(String consultTime) {
        this.consultTime = consultTime;
    }

    public String getReplyTime() {
        return replyTime;
    }

    public void setReplyTime(String replyTime) {
        this.replyTime = replyTime;
    }

    public String getConsultState() {
        return consultState;
    }

    public void setConsultState(String consultState) {
        this.consultState = consultState;
    }

    public String getConsultAdmin() {
        return consultAdmin;
    }

    public void setConsultAdmin(String consultAdmin) {
        this.consultAdmin = consultAdmin;
    }

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent;
    }

    public String getConsultResult() {
        return consultResult;
    }

    public void setConsultResult(String consultResult) {
        this.consultResult = consultResult;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }
}
