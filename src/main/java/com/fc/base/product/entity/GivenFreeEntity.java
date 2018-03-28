package com.fc.base.product.entity;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.CascadeType;
import javax.persistence.*;

@Entity
@Table(name="GivenFree")//产品赠送
public class GivenFreeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name="free_type")
    private String type;
    @Column(name="free_content")
    private String content;
    @ManyToOne( fetch = FetchType.EAGER)
    @JoinColumn(name="ProductInof_id",referencedColumnName = "id")
    private ProductInofEntity infoEntity;

    public ProductInofEntity getInfoEntity() {
        return infoEntity;
    }

    public void setInfoEntity(ProductInofEntity infoEntity) {
        this.infoEntity = infoEntity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}
