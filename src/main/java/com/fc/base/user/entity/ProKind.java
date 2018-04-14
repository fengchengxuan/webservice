package com.fc.base.user.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "pro_kind")
public class ProKind extends Base{
    @Id
    @Column(name = "pro_kind_id",length = 3)
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
