package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("BaseCompany")
public class Company extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private String companyid;//金融机构编号
	private String companyname;//金融机构名称
	private String boss;//老板
	private String companytype;//金融机构类型
	private String companyinfo;//金融机构信息
	private String isOk;//是否成功上架
	private String typeisOk;//要展示的金融机构类型
	private String typeid;//金融机构类型编号
	public Company() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Company(String companyid, String companyname, String boss, String companytype, String companyinfo,
			String isOk, String typeisOk, String typeid) {
		super();
		this.companyid = companyid;
		this.companyname = companyname;
		this.boss = boss;
		this.companytype = companytype;
		this.companyinfo = companyinfo;
		this.isOk = isOk;
		this.typeisOk = typeisOk;
		this.typeid = typeid;
	}
	public String getCompanyid() {
		return companyid;
	}
	public void setCompanyid(String companyid) {
		this.companyid = companyid;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getBoss() {
		return boss;
	}
	public void setBoss(String boss) {
		this.boss = boss;
	}
	public String getCompanytype() {
		return companytype;
	}
	public void setCompanytype(String companytype) {
		this.companytype = companytype;
	}
	public String getCompanyinfo() {
		return companyinfo;
	}
	public void setCompanyinfo(String companyinfo) {
		this.companyinfo = companyinfo;
	}
	public String getIsOk() {
		return isOk;
	}
	public void setIsOk(String isOk) {
		this.isOk = isOk;
	}
	public String getTypeisOk() {
		return typeisOk;
	}
	public void setTypeisOk(String typeisOk) {
		this.typeisOk = typeisOk;
	}
	public String getTypeid() {
		return typeid;
	}
	public void setTypeid(String typeid) {
		this.typeid = typeid;
	}
	@Override
	public String toString() {
		return "Company [companyid=" + companyid + ", companyname=" + companyname + ", boss=" + boss + ", companytype="
				+ companytype + ", companyinfo=" + companyinfo + ", isOk=" + isOk + ", typeisOk=" + typeisOk
				+ ", typeid=" + typeid + "]";
	}
	
}
