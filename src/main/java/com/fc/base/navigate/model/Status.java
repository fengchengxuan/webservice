package com.fc.base.navigate.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "status")
public class Status {
    private int stId;
    private String status;
    private Set<Navigate> navigate = new HashSet<>();

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "st_id", nullable = false)
    public int getStId() {
        return stId;
    }

    public void setStId(int stId) {
        this.stId = stId;
    }

    @Basic
    @Column(name = "status", nullable = true, length = 50)
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @OneToMany(mappedBy="navstatus",fetch=FetchType.EAGER)
    public Set<Navigate> getNavigate() {
        return navigate;
    }

    public void setNavigate(Set<Navigate> navigate) {
        this.navigate = navigate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Status status1 = (Status) o;

        if (stId != status1.stId) return false;
        if (status != null ? !status.equals(status1.status) : status1.status != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = stId;
        result = 31 * result + (status != null ? status.hashCode() : 0);
        return result;
    }
}
