package com.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @author Administrator
 * 新闻栏目表
 */
@Alias("BaseNewsLm")
public class NewsLm extends BaseEntity{
	private static final long serialVersionUID = 1L;

	private String id;//编号
	private String lmid;//编号
	private String lmname;//栏目名称
	private String lmtime;//创建时间
	private String lmimg;//栏目封面
	private String urllink;//url链接
	public NewsLm() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NewsLm(String id, String lmid, String lmname, String lmtime, String lmimg, String urllink) {
		super();
		this.id = id;
		this.lmid = lmid;
		this.lmname = lmname;
		this.lmtime = lmtime;
		this.lmimg = lmimg;
		this.urllink = urllink;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLmid() {
		return lmid;
	}
	public void setLmid(String lmid) {
		this.lmid = lmid;
	}
	public String getLmname() {
		return lmname;
	}
	public void setLmname(String lmname) {
		this.lmname = lmname;
	}
	public String getLmtime() {
		return lmtime;
	}
	public void setLmtime(String lmtime) {
		this.lmtime = lmtime;
	}
	public String getLmimg() {
		return lmimg;
	}
	public void setLmimg(String lmimg) {
		this.lmimg = lmimg;
	}
	public String getUrllink() {
		return urllink;
	}
	public void setUrllink(String urllink) {
		this.urllink = urllink;
	}
	@Override
	public String toString() {
		return "NewsLm [id=" + id + ", lmid=" + lmid + ", lmname=" + lmname + ", lmtime=" + lmtime + ", lmimg=" + lmimg
				+ ", urllink=" + urllink + "]";
	}
	
}
