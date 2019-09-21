package com.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @author Administrator
 * 产品对接表
 */
@Alias("BaseCpdj")
public class Cpdj extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private String duijieid;//编号
	private String userinfo;//用户信息
	private String proid;//用户编号
	private String clicktime;//点击时间
	private String clickstate;//点击状态
	public Cpdj() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Cpdj(String duijieid, String userinfo, String proid, String clicktime, String clickstate) {
		super();
		this.duijieid = duijieid;
		this.userinfo = userinfo;
		this.proid = proid;
		this.clicktime = clicktime;
		this.clickstate = clickstate;
	}
	public String getDuijieid() {
		return duijieid;
	}
	public void setDuijieid(String duijieid) {
		this.duijieid = duijieid;
	}
	public String getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(String userinfo) {
		this.userinfo = userinfo;
	}
	public String getProid() {
		return proid;
	}
	public void setProid(String proid) {
		this.proid = proid;
	}
	public String getClicktime() {
		return clicktime;
	}
	public void setClicktime(String clicktime) {
		this.clicktime = clicktime;
	}
	public String getClickstate() {
		return clickstate;
	}
	public void setClickstate(String clickstate) {
		this.clickstate = clickstate;
	}
	@Override
	public String toString() {
		return "Cpdj [duijieid=" + duijieid + ", userinfo=" + userinfo + ", proid=" + proid + ", clicktime=" + clicktime
				+ ", clickstate=" + clickstate + "]";
	}
	
}
