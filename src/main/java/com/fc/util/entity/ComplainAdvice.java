package com.fc.util.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "complain_advice")
public class ComplainAdvice {
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(name = "ca_id",length = 36)
    private String caId;
    @Column(name = "no",length = 50)
    private String no;
    @Column(name = "type",length = 1)
    private String type;
    @Column(name = "time")
    private Timestamp time;
    @Column(name = "maker")
    private String maker;//投诉建议人
    @Column(name = "reason")
    private String reason;//理由
    @Column(name = "result")
    private String result;//处理介结果
}
