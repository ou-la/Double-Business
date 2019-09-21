package com.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @author Administrator
 * 投诉建议表
 */
@Alias("BaseComplaint")
public class Complaint extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private int tsid;//编号
	private String username;//投诉人
	private String tstext;//投诉内容
	private String tsname;//被投诉人
	private String hiddename;//是否匿名显示
	private String tstime;//投诉时间
	private String tsstate;//投诉状态
	public Complaint() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Complaint(int tsid, String username, String tstext,
			String tsname, String hiddename, String tstime, String tsstate) {
		super();
		this.tsid = tsid;
		this.username = username;
		this.tstext = tstext;
		this.tsname = tsname;
		this.hiddename = hiddename;
		this.tstime = tstime;
		this.tsstate = tsstate;
	}
	public int getTsid() {
		return tsid;
	}
	public void setTsid(int tsid) {
		this.tsid = tsid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTstext() {
		return tstext;
	}
	public void setTstext(String tstext) {
		this.tstext = tstext;
	}
	public String getTsname() {
		return tsname;
	}
	public void setTsname(String tsname) {
		this.tsname = tsname;
	}
	public String getHiddename() {
		return hiddename;
	}
	public void setHiddename(String hiddename) {
		this.hiddename = hiddename;
	}
	public String getTstime() {
		return tstime;
	}
	public void setTstime(String tstime) {
		this.tstime = tstime;
	}
	public String getTsstate() {
		return tsstate;
	}
	public void setTsstate(String tsstate) {
		this.tsstate = tsstate;
	}
	@Override
	public String toString() {
		return "table_tousujianyi [tsid=" + tsid + ", username=" + username
				+ ", tstext=" + tstext + ", tsname=" + tsname + ", hiddename="
				+ hiddename + ", tstime=" + tstime + ", tsstate=" + tsstate
				+ "]";
	}
}
