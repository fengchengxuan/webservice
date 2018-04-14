package com.fc.base.user.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "app_type")
public class AppType {//申请人类型表
    @Id
    @Column(name = "app_type_id",length = 2)
    private String id;
    @Column(name = "app_type")
    private String appType;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAppType() {
        return appType;
    }

    public void setAppType(String appType) {
        this.appType = appType;
    }
}
