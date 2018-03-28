package com.fc.base.footer.model;

import javax.persistence.*;

@Entity
@Table(name = "copyright")
public class Copyright {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "webname",length = 30)
    private String webname;

    @Column(name = "icp",length = 15)
    private String icp;

    @Column(name = "copyrighted",length = 20)
    private String copyrighted;

    @Column(name = "master",length = 10)
    private String master;

    @Column(name = "userName",nullable = false)
    private String userName;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getWebname() {
        return webname;
    }

    public void setWebname(String webname) {
        this.webname = webname;
    }

    public String getIcp() {
        return icp;
    }

    public void setIcp(String icp) {
        this.icp = icp;
    }

    public String getCopyrighted() {
        return copyrighted;
    }

    public void setCopyrighted(String copyrighted) {
        this.copyrighted = copyrighted;
    }

    public String getMaster() {
        return master;
    }

    public void setMaster(String master) {
        this.master = master;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
