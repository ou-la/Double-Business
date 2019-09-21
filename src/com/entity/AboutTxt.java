package com.entity;

import org.apache.ibatis.type.Alias;

/**
 * 关于我们内容
 * @author Lenovo
 *
 */
@Alias("BaseAboutTxt")
public class AboutTxt extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private String id;//编号
	private String auid;//栏目编号
	private String auname;//栏目名称
	private String autxt;//栏目内容
	public AboutTxt() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AboutTxt(String id, String auid, String auname, String autxt) {
		super();
		this.id = id;
		this.auid = auid;
		this.auname = auname;
		this.autxt = autxt;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAuid() {
		return auid;
	}
	public void setAuid(String auid) {
		this.auid = auid;
	}
	public String getAuname() {
		return auname;
	}
	public void setAuname(String auname) {
		this.auname = auname;
	}
	public String getAutxt() {
		return autxt;
	}
	public void setAutxt(String autxt) {
		this.autxt = autxt;
	}
	@Override
	public String toString() {
		return "AboutTxt [id=" + id + ", auid=" + auid + ", auname=" + auname + ", autxt=" + autxt + "]";
	}
	
}
