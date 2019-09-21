package com.entity;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @author Administrator
 * 用户行业表
 */
@Alias("BaseUserHy")
public class UserHy extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private String hyid;//编号
	private String hyname;//行业名称
	private String hystate;//行业状态（预留）
	private String tophy;//上级行业
	public UserHy() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserHy(String hyid, String hyname, String hystate, String tophy) {
		super();
		this.hyid = hyid;
		this.hyname = hyname;
		this.hystate = hystate;
		this.tophy = tophy;
	}
	public String getHyid() {
		return hyid;
	}
	public void setHyid(String hyid) {
		this.hyid = hyid;
	}
	public String getHyname() {
		return hyname;
	}
	public void setHyname(String hyname) {
		this.hyname = hyname;
	}
	public String getHystate() {
		return hystate;
	}
	public void setHystate(String hystate) {
		this.hystate = hystate;
	}
	public String getTophy() {
		return tophy;
	}
	public void setTophy(String tophy) {
		this.tophy = tophy;
	}
	@Override
	public String toString() {
		return "UserHy [hyid=" + hyid + ", hyname=" + hyname + ", hystate="
				+ hystate + ", tophy=" + tophy + "]";
	}

}
