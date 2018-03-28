package com.fc.base.navigate.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "nav")
public class Nav {
    private int seId;
    private String catalog;
    private Set<Navigate> navigates = new HashSet<>();

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "se_id", nullable = false)
    public int getSeId() {
        return seId;
    }

    public void setSeId(int seId) {
        this.seId = seId;
    }

    @Basic
    @Column(name = "catalog", nullable = true, length = 255)
    public String getCatalog() {
        return catalog;
    }

    public void setCatalog(String catalog) {
        this.catalog = catalog;
    }

    @OneToMany(mappedBy="catalog",fetch=FetchType.EAGER)
    public Set<Navigate> getNavigates() {
        return navigates;
    }

    public void setNavigates(Set<Navigate> navigates) {
        this.navigates = navigates;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Nav nav = (Nav) o;

        if (seId != nav.seId) return false;
        if (catalog != null ? !catalog.equals(nav.catalog) : nav.catalog != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = seId;
        result = 31 * result + (catalog != null ? catalog.hashCode() : 0);
        return result;
    }
}
