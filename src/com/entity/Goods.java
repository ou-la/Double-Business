package com.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @author Administrator
 * 点赞表
 */
@Alias("BaseGoods")
public class Goods extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private int goodsid;//编号
	private int userid;//用户编号
	private int newsid;//点赞对象编号
	private String newstitle;//点赞表名
	private Date goodstime;//点赞时间
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Goods(int goodsid, int userid, int newsid, String newstitle,
			Date goodstime) {
		super();
		this.goodsid = goodsid;
		this.userid = userid;
		this.newsid = newsid;
		this.newstitle = newstitle;
		this.goodstime = goodstime;
	}
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getNewsid() {
		return newsid;
	}
	public void setNewsid(int newsid) {
		this.newsid = newsid;
	}
	public String getNewstitle() {
		return newstitle;
	}
	public void setNewstitle(String newstitle) {
		this.newstitle = newstitle;
	}
	public Date getGoodstime() {
		return goodstime;
	}
	public void setGoodstime(Date goodstime) {
		this.goodstime = goodstime;
	}
	@Override
	public String toString() {
		return "table_goods [goodsid=" + goodsid + ", userid=" + userid
				+ ", newsid=" + newsid + ", newstitle=" + newstitle
				+ ", goodstime=" + goodstime + "]";
	}
}
