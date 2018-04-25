package com.fc.util.entity;

import com.fc.base.user.entity.Base;
import com.fc.base.user.entity.FcUser;
import com.fc.util.BaseDao;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "free_apply")
public class FreeApply extends Base {//免费申请表
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(name = "fan_id",length = 36)
    private String id;
    @Column(name = "fcuser_id")
    private String fcUserId;//
    @Column(name = "demand")
    private String demand;//需求
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFcUserId() {
		return fcUserId;
	}

	public void setFcUserId(String fcUserId) {
		this.fcUserId = fcUserId;
	}
	public String getDemand() {
		return demand;
	}
	public void setDemand(String demand) {
		this.demand = demand;
	}
  
}
