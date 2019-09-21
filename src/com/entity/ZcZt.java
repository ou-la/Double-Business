package com.entity;

import org.apache.ibatis.type.Alias;

/**
 *注册状态 
 * @author Lenovo
 *
 */
@Alias("BaseZcZt")
public class ZcZt extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private String id;//编号
	private String zid;//企业融资or金融机构
	private String zname;//名称
	private String typeid;//类型id
	public ZcZt() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ZcZt(String id, String zid, String zname, String typeid) {
		super();
		this.id = id;
		this.zid = zid;
		this.zname = zname;
		this.typeid = typeid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getZid() {
		return zid;
	}
	public void setZid(String zid) {
		this.zid = zid;
	}
	public String getZname() {
		return zname;
	}
	public void setZname(String zname) {
		this.zname = zname;
	}
	public String getTypeid() {
		return typeid;
	}
	public void setTypeid(String typeid) {
		this.typeid = typeid;
	}
	@Override
	public String toString() {
		return "ZcZt [id=" + id + ", zid=" + zid + ", zname=" + zname + ", typeid=" + typeid + "]";
	}
	
}
