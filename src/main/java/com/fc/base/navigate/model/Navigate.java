package com.fc.base.navigate.model;

import javax.persistence.*;

@Entity
@Table(name = "navigate")
public class Navigate {
    private int id;
    private Nav catalog;
    private String navname;
    private String navurl;
    private String navtitle;
    private String keywords;
    private String navdescribe;
    private Status navstatus;
    private Operator operator;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false, length = 36)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne(fetch=FetchType.EAGER,cascade={CascadeType.PERSIST,CascadeType.MERGE})
    @JoinColumn(name = "se_id")
    public Nav getCatalog() {
        return catalog;
    }

    public void setCatalog(Nav catalog) {
        this.catalog = catalog;
    }

    @Column(name = "navname", nullable = true, length = 100)
    public String getNavname() {
        return navname;
    }

    public void setNavname(String navname) {
        this.navname = navname;
    }

    @Basic
    @Column(name = "navurl", nullable = true, length = 50)
    public String getNavurl() {
        return navurl;
    }

    public void setNavurl(String navurl) {
        this.navurl = navurl;
    }

    @Basic
    @Column(name = "navtitle", nullable = true, length = 100)
    public String getNavtitle() {
        return navtitle;
    }

    public void setNavtitle(String navtitle) {
        this.navtitle = navtitle;
    }

    @Basic
    @Column(name = "keywords", nullable = true, length = 50)
    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    @Basic
    @Column(name = "navdescribe", nullable = true, length = 100)
    public String getNavdescribe() {
        return navdescribe;
    }

    public void setNavdescribe(String navdescribe) {
        this.navdescribe = navdescribe;
    }

    @ManyToOne(fetch=FetchType.EAGER,cascade={CascadeType.PERSIST,CascadeType.MERGE})
    @JoinColumn(name = "st_id")
    public Status getNavstatus() {
        return navstatus;
    }

    public void setNavstatus(Status navstatus) {
        this.navstatus = navstatus;
    }

    @ManyToOne(fetch=FetchType.EAGER,cascade={CascadeType.PERSIST,CascadeType.MERGE})
    @JoinColumn(name = "op_id")
    public Operator getOperator() {
        return operator;
    }

    public void setOperator(Operator operator) {
        this.operator = operator;
    }
}
