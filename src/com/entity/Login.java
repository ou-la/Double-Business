package com.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @author Administrator
 * 登录表
 */
@Alias("BaseLogin")
public class Login extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private int loginid;//编号
	private int loginuid;//登录账号
	private String loginpwd;//登录密码
	private String pwdjiami;//密码加密方式
	private Date logintime;//最后登录时间
	private String loginip;//登录ip地址
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Login(int loginid, int loginuid, String loginpwd,
			String pwdjiami, Date logintime, String loginip) {
		super();
		this.loginid = loginid;
		this.loginuid = loginuid;
		this.loginpwd = loginpwd;
		this.pwdjiami = pwdjiami;
		this.logintime = logintime;
		this.loginip = loginip;
	}
	public int getLoginid() {
		return loginid;
	}
	public void setLoginid(int loginid) {
		this.loginid = loginid;
	}
	public int getLoginuid() {
		return loginuid;
	}
	public void setLoginuid(int loginuid) {
		this.loginuid = loginuid;
	}
	public String getLoginpwd() {
		return loginpwd;
	}
	public void setLoginpwd(String loginpwd) {
		this.loginpwd = loginpwd;
	}
	public String getPwdjiami() {
		return pwdjiami;
	}
	public void setPwdjiami(String pwdjiami) {
		this.pwdjiami = pwdjiami;
	}
	public Date getLogintime() {
		return logintime;
	}
	public void setLogintime(Date logintime) {
		this.logintime = logintime;
	}
	public String getLoginip() {
		return loginip;
	}
	public void setLoginip(String loginip) {
		this.loginip = loginip;
	}
	@Override
	public String toString() {
		return "table_login [loginid=" + loginid + ", loginuid=" + loginuid
				+ ", loginpwd=" + loginpwd + ", pwdjiami=" + pwdjiami
				+ ", logintime=" + logintime + ", loginip=" + loginip + "]";
	}
}
