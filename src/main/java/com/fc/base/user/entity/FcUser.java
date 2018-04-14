package com.fc.base.user.entity;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "fcuser")
public class FcUser extends Base{
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(length = 36)
    private String id;
    @Column(name = "username")
    private String userName;  // 用户名
    @Column(name = "password")
    private String password;//密码
    @Column(name = "repassword")
    private String rePassword;//重复密码
    @Column(name ="profile_photo")
    private String profilePhoto;//用户头像地址
    @Column(name = "tel")   //手机号
    private String tel;
    @Column(name = "email")
    private String email;//邮箱
    @Column(name = "user_status_id")
    private int userStatusId;//用户类型
    @Column(name = "ip")
    private String ip;//用户ip
    @Column(name = "location")
    private String location;//用户所在地
    @OneToOne
    @Cascade(value = {CascadeType.SAVE_UPDATE})
    @JoinColumn(name = "role_id")//用户角色（关联）
    private Role roleId;
    @Column(name = "privilege_id")
    private int privilegeId;  //权限
    @Column(name = "user_type_id")
    private String userTypeId;
    @Column(name = "regi_time")
    private Timestamp regiTime;//注册时间
    @Column(name = "user_intent")
    private String userIntent;//用户在本地维度
    @Column(name = "phone")
    private String phone;//固定电话
    @Column(name = "wechart")
    private String wechart;//qq/微信
    @Column(name = "oper_addr")
    private String operAddr;//地址
    @Column(name = "company")
    private String company;//公司名称
    @Column(name = "prod_kind_id")
    private String prodKindId;    //行业类型
    @Column(name = "comp_type_id")
    private String comptypeId;   //公司类型
    @Column(name = "app_type_id")
    private String appTypeId;//申请人类型
    @Column(name = "website")
    private String website;//公司网站
    @Column(name = "is_free_app")
    private int isFreeApp;
    @Column(name = "is_pass_app")
    private int isPassApp;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRePassword() {
        return rePassword;
    }

    public void setRePassword(String rePassword) {
        this.rePassword = rePassword;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getUserStatusId() {
        return userStatusId;
    }

    public void setUserStatusId(int userStatusId) {
        this.userStatusId = userStatusId;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Role getRoleId() {
        return roleId;
    }

    public void setRoleId(Role roleId) {
        this.roleId = roleId;
    }

    public int getPrivilegeId() {
        return privilegeId;
    }

    public void setPrivilegeId(int privilegeId) {
        this.privilegeId = privilegeId;
    }

    public String getUserTypeId() {
        return userTypeId;
    }

    public void setUserTypeId(String userTypeId) {
        this.userTypeId = userTypeId;
    }

    public Timestamp getRegiTime() {
        return regiTime;
    }

    public void setRegiTime(Timestamp regiTime) {
        this.regiTime = regiTime;
    }

    public String getUserIntent() {
        return userIntent;
    }

    public void setUserIntent(String userIntent) {
        this.userIntent = userIntent;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getWechart() {
        return wechart;
    }

    public void setWechart(String wechart) {
        this.wechart = wechart;
    }

    public String getOperAddr() {
        return operAddr;
    }

    public void setOperAddr(String operAddr) {
        this.operAddr = operAddr;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getProdKindId() {
		return prodKindId;
	}

	public void setProdKindId(String prodKindId) {
		this.prodKindId = prodKindId;
	}

	public String getComptypeId() {
		return comptypeId;
	}

	public void setComptypeId(String comptypeId) {
		this.comptypeId = comptypeId;
	}

	public String getAppTypeId() {
		return appTypeId;
	}

	public void setAppTypeId(String appTypeId) {
		this.appTypeId = appTypeId;
	}

	public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public int getIsFreeApp() {
        return isFreeApp;
    }

    public void setIsFreeApp(int isFreeApp) {
        this.isFreeApp = isFreeApp;
    }

    public int getIsPassApp() {
        return isPassApp;
    }

    public void setIsPassApp(int isPassApp) {
        this.isPassApp = isPassApp;
    }

    public String getProfilePhoto() {
        return profilePhoto;
    }

    public void setProfilePhoto(String profilePhoto) {
        this.profilePhoto = profilePhoto;
    }
}
