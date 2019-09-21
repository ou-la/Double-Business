package com.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @author Administrator
 * 附件表
 */
@Alias("BaseFJ")
public class Fj extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private String fjid;//编号
	private String fjname;//附件名称
	private String fjfilename;//附件文件名
	private String fjhz;//附件后缀
	private String fjsize;//附件大小
	private String fjurl;//附件路径
	private String fjourl;//附件其他路径
	private String fjtime;//上传时间
	private String downloads;//下载次数
	private String fjstate;//附件状态（预留）
	public Fj() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Fj(String fjid, String fjname, String fjfilename, String fjhz, String fjsize, String fjurl, String fjourl,
			String fjtime, String downloads, String fjstate) {
		super();
		this.fjid = fjid;
		this.fjname = fjname;
		this.fjfilename = fjfilename;
		this.fjhz = fjhz;
		this.fjsize = fjsize;
		this.fjurl = fjurl;
		this.fjourl = fjourl;
		this.fjtime = fjtime;
		this.downloads = downloads;
		this.fjstate = fjstate;
	}
	public String getFjid() {
		return fjid;
	}
	public void setFjid(String fjid) {
		this.fjid = fjid;
	}
	public String getFjname() {
		return fjname;
	}
	public void setFjname(String fjname) {
		this.fjname = fjname;
	}
	public String getFjfilename() {
		return fjfilename;
	}
	public void setFjfilename(String fjfilename) {
		this.fjfilename = fjfilename;
	}
	public String getFjhz() {
		return fjhz;
	}
	public void setFjhz(String fjhz) {
		this.fjhz = fjhz;
	}
	public String getFjsize() {
		return fjsize;
	}
	public void setFjsize(String fjsize) {
		this.fjsize = fjsize;
	}
	public String getFjurl() {
		return fjurl;
	}
	public void setFjurl(String fjurl) {
		this.fjurl = fjurl;
	}
	public String getFjourl() {
		return fjourl;
	}
	public void setFjourl(String fjourl) {
		this.fjourl = fjourl;
	}
	public String getFjtime() {
		return fjtime;
	}
	public void setFjtime(String fjtime) {
		this.fjtime = fjtime;
	}
	public String getDownloads() {
		return downloads;
	}
	public void setDownloads(String downloads) {
		this.downloads = downloads;
	}
	public String getFjstate() {
		return fjstate;
	}
	public void setFjstate(String fjstate) {
		this.fjstate = fjstate;
	}
	@Override
	public String toString() {
		return "Fj [fjid=" + fjid + ", fjname=" + fjname + ", fjfilename=" + fjfilename + ", fjhz=" + fjhz + ", fjsize="
				+ fjsize + ", fjurl=" + fjurl + ", fjourl=" + fjourl + ", fjtime=" + fjtime + ", downloads=" + downloads
				+ ", fjstate=" + fjstate + "]";
	}
}
