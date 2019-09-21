package com.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @author Administrator
 * 产品表
 */
@Alias("BaseCp")
public class Cp extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private String proid;//编号
	private String proimg;//图片
	private String protitle;//标题
	private String timelimit;//时限（贷款/融资）
	private String proinfo;//简介
	private String protj;//条件
	private String prolc;//流程
	private String callme;//联系我们
	private String protype;//产品分类
	private String prostate;//产品状态
	private String shnumb;//审核次数
	private String shtime;//审核时间
	private String bhreason;//驳回原因
	private String username;//发布人
	private String protime;//产品发布时间
	private String rzmoney;//融资金额
	private String company;//金融机构名称
	private String companyid;//用来查询公司列表
	private String companysize;//公司规模
	private String companytype;//jinrongjigou
	private String rzcycle;//融资周期
	private String id;//
	private String typeid;//产品分类编号
	public Cp() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Cp(String proid, String proimg, String protitle, String timelimit, String proinfo, String protj,
			String prolc, String callme, String protype, String prostate, String shnumb, String shtime, String bhreason,
			String username, String protime, String rzmoney, String company, String companyid, String companysize,
			String companytype, String rzcycle, String id, String typeid) {
		super();
		this.proid = proid;
		this.proimg = proimg;
		this.protitle = protitle;
		this.timelimit = timelimit;
		this.proinfo = proinfo;
		this.protj = protj;
		this.prolc = prolc;
		this.callme = callme;
		this.protype = protype;
		this.prostate = prostate;
		this.shnumb = shnumb;
		this.shtime = shtime;
		this.bhreason = bhreason;
		this.username = username;
		this.protime = protime;
		this.rzmoney = rzmoney;
		this.company = company;
		this.companyid = companyid;
		this.companysize = companysize;
		this.companytype = companytype;
		this.rzcycle = rzcycle;
		this.id = id;
		this.typeid = typeid;
	}
	public String getProid() {
		return proid;
	}
	public void setProid(String proid) {
		this.proid = proid;
	}
	public String getProimg() {
		return proimg;
	}
	public void setProimg(String proimg) {
		this.proimg = proimg;
	}
	public String getProtitle() {
		return protitle;
	}
	public void setProtitle(String protitle) {
		this.protitle = protitle;
	}
	public String getTimelimit() {
		return timelimit;
	}
	public void setTimelimit(String timelimit) {
		this.timelimit = timelimit;
	}
	public String getProinfo() {
		return proinfo;
	}
	public void setProinfo(String proinfo) {
		this.proinfo = proinfo;
	}
	public String getProtj() {
		return protj;
	}
	public void setProtj(String protj) {
		this.protj = protj;
	}
	public String getProlc() {
		return prolc;
	}
	public void setProlc(String prolc) {
		this.prolc = prolc;
	}
	public String getCallme() {
		return callme;
	}
	public void setCallme(String callme) {
		this.callme = callme;
	}
	public String getProtype() {
		return protype;
	}
	public void setProtype(String protype) {
		this.protype = protype;
	}
	public String getProstate() {
		return prostate;
	}
	public void setProstate(String prostate) {
		this.prostate = prostate;
	}
	public String getShnumb() {
		return shnumb;
	}
	public void setShnumb(String shnumb) {
		this.shnumb = shnumb;
	}
	public String getShtime() {
		return shtime;
	}
	public void setShtime(String shtime) {
		this.shtime = shtime;
	}
	public String getBhreason() {
		return bhreason;
	}
	public void setBhreason(String bhreason) {
		this.bhreason = bhreason;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getProtime() {
		return protime;
	}
	public void setProtime(String protime) {
		this.protime = protime;
	}
	public String getRzmoney() {
		return rzmoney;
	}
	public void setRzmoney(String rzmoney) {
		this.rzmoney = rzmoney;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getCompanyid() {
		return companyid;
	}
	public void setCompanyid(String companyid) {
		this.companyid = companyid;
	}
	public String getCompanysize() {
		return companysize;
	}
	public void setCompanysize(String companysize) {
		this.companysize = companysize;
	}
	public String getCompanytype() {
		return companytype;
	}
	public void setCompanytype(String companytype) {
		this.companytype = companytype;
	}
	public String getRzcycle() {
		return rzcycle;
	}
	public void setRzcycle(String rzcycle) {
		this.rzcycle = rzcycle;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTypeid() {
		return typeid;
	}
	public void setTypeid(String typeid) {
		this.typeid = typeid;
	}
	@Override
	public String toString() {
		return "Cp [proid=" + proid + ", proimg=" + proimg + ", protitle=" + protitle + ", timelimit=" + timelimit
				+ ", proinfo=" + proinfo + ", protj=" + protj + ", prolc=" + prolc + ", callme=" + callme + ", protype="
				+ protype + ", prostate=" + prostate + ", shnumb=" + shnumb + ", shtime=" + shtime + ", bhreason="
				+ bhreason + ", username=" + username + ", protime=" + protime + ", rzmoney=" + rzmoney + ", company="
				+ company + ", companyid=" + companyid + ", companysize=" + companysize + ", companytype=" + companytype
				+ ", rzcycle=" + rzcycle + ", id=" + id + ", typeid=" + typeid + "]";
	}
	
}
