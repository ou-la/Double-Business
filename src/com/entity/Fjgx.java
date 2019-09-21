package com.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @author Administrator
 * 附件关系表
 */
@Alias("BaseFjgx")
public class Fjgx extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private String fjgxid;//编号
	private String fjid;//附件编号
	private String fjtype;//附件类型
	private String ufjid;//关联编号
	private String newsid;//关联表名
	private String uname;//上传人
	private Date fjgxtime;//上传时间
	private String ramarkinfo;//备注信息
	private String urlinfo;//url信息
	
	private String newstitle;
	private String fjname;
	private String fjtime;
	private String fjurl;
	
	public String getNewstitle() {
		return newstitle;
	}
	public void setNewstitle(String newstitle) {
		this.newstitle = newstitle;
	}
	public String getFjname() {
		return fjname;
	}
	public void setFjname(String fjname) {
		this.fjname = fjname;
	}
	public String getFjtime() {
		return fjtime;
	}
	public void setFjtime(String fjtime) {
		this.fjtime = fjtime;
	}
	public String getFjurl() {
		return fjurl;
	}
	public void setFjurl(String fjurl) {
		this.fjurl = fjurl;
	}
	public Fjgx() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Fjgx(String fjgxid, String fjid, String fjtype, String ufjid, String newsid, String uname, Date fjgxtime,
			String ramarkinfo, String urlinfo) {
		super();
		this.fjgxid = fjgxid;
		this.fjid = fjid;
		this.fjtype = fjtype;
		this.ufjid = ufjid;
		this.newsid = newsid;
		this.uname = uname;
		this.fjgxtime = fjgxtime;
		this.ramarkinfo = ramarkinfo;
		this.urlinfo = urlinfo;
	}
	public String getFjgxid() {
		return fjgxid;
	}
	public void setFjgxid(String fjgxid) {
		this.fjgxid = fjgxid;
	}
	public String getFjid() {
		return fjid;
	}
	public void setFjid(String fjid) {
		this.fjid = fjid;
	}
	public String getFjtype() {
		return fjtype;
	}
	public void setFjtype(String fjtype) {
		this.fjtype = fjtype;
	}
	public String getUfjid() {
		return ufjid;
	}
	public void setUfjid(String ufjid) {
		this.ufjid = ufjid;
	}
	public String getNewsid() {
		return newsid;
	}
	public void setNewsid(String newsid) {
		this.newsid = newsid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public Date getFjgxtime() {
		return fjgxtime;
	}
	public void setFjgxtime(Date fjgxtime) {
		this.fjgxtime = fjgxtime;
	}
	public String getRamarkinfo() {
		return ramarkinfo;
	}
	public void setRamarkinfo(String ramarkinfo) {
		this.ramarkinfo = ramarkinfo;
	}
	public String getUrlinfo() {
		return urlinfo;
	}
	public void setUrlinfo(String urlinfo) {
		this.urlinfo = urlinfo;
	}
	@Override
	public String toString() {
		return "Fjgx [fjgxid=" + fjgxid + ", fjid=" + fjid + ", fjtype=" + fjtype + ", ufjid=" + ufjid + ", newsid="
				+ newsid + ", uname=" + uname + ", fjgxtime=" + fjgxtime + ", ramarkinfo=" + ramarkinfo + ", urlinfo="
				+ urlinfo + "]";
	}
	
}
