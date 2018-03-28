package com.fc.base.login.model;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.*;

/**
 * 登录类
 */

@Entity
@Table(name = "user")
public class User{

	@Id
	@GeneratedValue(generator = "system-uuid")
	@GenericGenerator(name = "system-uuid", strategy = "uuid")
	@Column(length = 36)
	private String id;//主键

	@Column(length = 36,unique = true)
	private String loginName;// 登录名

	@Column(length = 32)
	private String password; //登录密码

	@Column(length = 20)
	private String repassword;//确认新密码

	@Column(length = 11)
	private String phonenumber;

	@Column(length = 30)
	private String email;

	@Column(length = 2)
	private String state;

	@Column
	private String ip;

	@Column
	private String level;

	@Column
	private String power;

	@Column
	private String Userstate;
	@OneToOne
	@Cascade(value = {org.hibernate.annotations.CascadeType.SAVE_UPDATE})
	private  Permissions  permissions;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getPower() {
		return power;
	}

	public void setPower(String power) {
		this.power = power;
	}

	public String getUserstate() {
		return Userstate;
	}

	public void setUserstate(String userstate) {
		Userstate = userstate;
	}

	public Permissions getPermissions() {
		return permissions;
	}

	public void setPermissions(Permissions permissions) {
		this.permissions = permissions;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
}