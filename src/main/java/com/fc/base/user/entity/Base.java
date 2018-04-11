package com.fc.base.user.entity;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import java.sql.Timestamp;

@MappedSuperclass
public class Base {
    @Column(name = "role")
    private String role;
    @Column(name = "fcu")
    private String fcu;
    @Column(name = "fcd")
    private Timestamp fcd;
    @Column(name = "lcu")
    private String lcu;
    @Column(name = "lcd")
    private Timestamp lcd;

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getFcu() {
        return fcu;
    }

    public void setFcu(String fcu) {
        this.fcu = fcu;
    }

    public Timestamp getFcd() {
        return fcd;
    }

    public void setFcd(Timestamp fcd) {
        this.fcd = fcd;
    }

    public String getLcu() {
        return lcu;
    }

    public void setLcu(String lcu) {
        this.lcu = lcu;
    }

    public Timestamp getLcd() {
        return lcd;
    }

    public void setLcd(Timestamp lcd) {
        this.lcd = lcd;
    }
}
