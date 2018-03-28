package com.fc.login.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "banks")
public class banks {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",strategy = "uuid")
    @Column(length = 36)
    private String id;

    @Column(length = 50)
    private String bankname;

    @Column(length = 50)
    private int bankcode;

    @Column(length = 36)
    private int vid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBankname() {
        return bankname;
    }

    public void setBankname(String bankname) {
        this.bankname = bankname;
    }

    public int getBankcode() {
        return bankcode;
    }

    public void setBankcode(int bankcode) {
        this.bankcode = bankcode;
    }

    public int getVid() {
        return vid;
    }

    public void setVid(int vid) {
        this.vid = vid;
    }
}
