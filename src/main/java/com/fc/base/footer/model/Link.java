package com.fc.base.footer.model;

import javax.persistence.*;

@Entity
@Table(name = "link")
public class Link {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "linkPic")
    private String linkPic;

    @Column(name = "linkName")
    private String linkName;

    @Column(name = "linkUrl")
    private String linkUrl;

    @Column(name = "linkKeyword")
    private String linkKeyword;

    @Column(name = "linkStatus")
    private String linkStatus;

    @Column(name = "editStatus")
    private String editStatus;

    @Column(name = "operator")
    private String operator;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLinkPic() {
        return linkPic;
    }

    public void setLinkPic(String linkPic) {
        this.linkPic = linkPic;
    }

    public String getLinkName() {
        return linkName;
    }

    public void setLinkName(String linkName) {
        this.linkName = linkName;
    }

    public String getLinkUrl() {
        return linkUrl;
    }

    public void setLinkUrl(String linkUrl) {
        this.linkUrl = linkUrl;
    }

    public String getLinkKeyword() {
        return linkKeyword;
    }

    public void setLinkKeyword(String linkKeyword) {
        this.linkKeyword = linkKeyword;
    }

    public String getLinkStatus() {
        return linkStatus;
    }

    public void setLinkStatus(String linkStatus) {
        this.linkStatus = linkStatus;
    }

    public String getEditStatus() {
        return editStatus;
    }

    public void setEditStatus(String editStatus) {
        this.editStatus = editStatus;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }
}
