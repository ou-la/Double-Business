package com.entity;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @author Administrator
 * 用户分类表
 */
@Alias("BaseUserFl")
public class UserFl extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private int utypeid;//编号
	private String typename;//用户分类
	private String typestate;//用户分类状态
	public UserFl() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserFl(int utypeid, String typename, String typestate) {
		super();
		this.utypeid = utypeid;
		this.typename = typename;
		this.typestate = typestate;
	}
	public int getUtypeid() {
		return utypeid;
	}
	public void setUtypeid(int utypeid) {
		this.utypeid = utypeid;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public String getTypestate() {
		return typestate;
	}
	public void setTypestate(String typestate) {
		this.typestate = typestate;
	}
	@Override
	public String toString() {
		return "table_userfenlei [utypeid=" + utypeid + ", typename="
				+ typename + ", typestate=" + typestate + "]";
	}
}
