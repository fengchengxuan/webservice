package com.fc.base.user.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "comp_type")
public class CompType extends Base{
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(name = "comp_type_id",length = 36)
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
