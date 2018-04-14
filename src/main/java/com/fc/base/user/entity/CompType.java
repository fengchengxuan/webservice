package com.fc.base.user.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "comp_type")
public class CompType extends Base{
    @Id
    @Column(name = "comp_type_id",length = 1)
    private String compTypeId;
    @Column(name = "comp_type")
    private String compType;

    public String getCompTypeId() {
        return compTypeId;
    }

    public void setCompTypeId(String compTypeId) {
        this.compTypeId = compTypeId;
    }

    public String getCompType() {
        return compType;
    }

    public void setCompType(String compType) {
        this.compType = compType;
    }
}
