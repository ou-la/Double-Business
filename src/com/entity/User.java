package com.entity;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @author Administrator
 * 用户表
 */
@Alias("BaseUser")
public class User extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private String uid;//编号
	private String uname;//用户姓名
	private String password;//登录密码
	private String upjone;//手机号码
	private String utypeid;//用户分类编号
	private String qiyeid;//企业名称
	private String ujifen;//用户积分
	private String ufjid;//附件编号
	private String ufj;//用户资质附件
	private String loginid;//登录编号
	
	private String comname;//用户资质附件
	private String pro;//登录编号
	
	public String getComname() {
		return comname;
	}
	public void setComname(String comname) {
		this.comname = comname;
	}
	public String getPro() {
		return pro;
	}
	public void setPro(String pro) {
		this.pro = pro;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String uid, String uname, String password, String upjone, String utypeid, String qiyeid, String ujifen,
			String ufjid, String ufj, String loginid) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.password = password;
		this.upjone = upjone;
		this.utypeid = utypeid;
		this.qiyeid = qiyeid;
		this.ujifen = ujifen;
		this.ufjid = ufjid;
		this.ufj = ufj;
		this.loginid = loginid;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUpjone() {
		return upjone;
	}
	public void setUpjone(String upjone) {
		this.upjone = upjone;
	}
	public String getUtypeid() {
		return utypeid;
	}
	public void setUtypeid(String utypeid) {
		this.utypeid = utypeid;
	}
	public String getQiyeid() {
		return qiyeid;
	}
	public void setQiyeid(String qiyeid) {
		this.qiyeid = qiyeid;
	}
	public String getUjifen() {
		return ujifen;
	}
	public void setUjifen(String ujifen) {
		this.ujifen = ujifen;
	}
	public String getUfjid() {
		return ufjid;
	}
	public void setUfjid(String ufjid) {
		this.ufjid = ufjid;
	}
	public String getUfj() {
		return ufj;
	}
	public void setUfj(String ufj) {
		this.ufj = ufj;
	}
	public String getLoginid() {
		return loginid;
	}
	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", password=" + password + ", upjone=" + upjone + ", utypeid="
				+ utypeid + ", qiyeid=" + qiyeid + ", ujifen=" + ujifen + ", ufjid=" + ufjid + ", ufj=" + ufj
				+ ", loginid=" + loginid + "]";
	}
}
