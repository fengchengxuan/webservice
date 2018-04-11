package com.fc.base.user.entity;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.*;

@Entity
@Table(name = "role")
public class Role extends Base{
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(name = "role_id",length = 36)
    private String roleId;
    @OneToOne
    @Cascade(value = {CascadeType.SAVE_UPDATE})
    @JoinColumn(name = "privilege_id")
    private Privilege privilegeId;

    public String getRoleId() {
        return roleId;
    }
    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }
    public Privilege getPrivilegeId() {
        return privilegeId;
    }
    public void setPrivilegeId(Privilege privilegeId) {
        this.privilegeId = privilegeId;
    }

}
