package com.fc.base.navigate.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "operator")
public class Operator {
    private int opId;
    private String operator;
    private Set<Navigate> navigate = new HashSet<>();

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "op_id", nullable = false)
    public int getOpId() {
        return opId;
    }

    public void setOpId(int opId) {
        this.opId = opId;
    }

    @Basic
    @Column(name = "operator", nullable = true, length = 255)
    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    @OneToMany(mappedBy="operator",fetch=FetchType.EAGER)
    public Set<Navigate> getNavigate() {
        return navigate;
    }

    public void setNavigate(Set<Navigate> navigate) {
        this.navigate = navigate;
    }

}
