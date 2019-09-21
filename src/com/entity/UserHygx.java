package com.entity;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @author Administrator
 * 用户行业关系表
 */
@Alias("BaseUserHygx")
public class UserHygx extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private int hygxid;//编号
	private int hyid;//用户行业编号
	private int uid;//用户编号
	private int utypeid;//用户分类编号
	public UserHygx() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserHygx(int hygxid, int hyid, int uid, int utypeid) {
		super();
		this.hygxid = hygxid;
		this.hyid = hyid;
		this.uid = uid;
		this.utypeid = utypeid;
	}
	public int getHygxid() {
		return hygxid;
	}
	public void setHygxid(int hygxid) {
		this.hygxid = hygxid;
	}
	public int getHyid() {
		return hyid;
	}
	public void setHyid(int hyid) {
		this.hyid = hyid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getUtypeid() {
		return utypeid;
	}
	public void setUtypeid(int utypeid) {
		this.utypeid = utypeid;
	}
	@Override
	public String toString() {
		return "table_userhangyeguanxi [hygxid=" + hygxid + ", hyid=" + hyid
				+ ", uid=" + uid + ", utypeid=" + utypeid + "]";
	}
}
