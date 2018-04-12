package com.fc.base.user.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "pro_kind")
public class ProKind extends Base{
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(name = "pro_kind_id",length = 36)
    private String proKindId;
    @Column(name = "pro_kind")
    private String proKind;  //行业类型

    public String getProKindId() {
        return proKindId;
    }
    public void setProKindId(String proKindId) {
        this.proKindId = proKindId;
    }
    public String getProKind() {
        return proKind;
    }

    public void setProKind(String proKind) {
        this.proKind = proKind;
    }
}
