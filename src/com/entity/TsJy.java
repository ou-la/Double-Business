package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("BaseTsJy")
public class TsJy extends BaseEntity{
	private static final long serialVersionUID = 1L;

	private String id;//投诉建议编号
	private String yOn;//满意程度
	private String xinyong;//信用
	private String tstext;//投诉内容
	public TsJy() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TsJy(String id, String yOn, String xinyong, String tstext) {
		super();
		this.id = id;
		this.yOn = yOn;
		this.xinyong = xinyong;
		this.tstext = tstext;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getyOn() {
		return yOn;
	}
	public void setyOn(String yOn) {
		this.yOn = yOn;
	}
	public String getXinyong() {
		return xinyong;
	}
	public void setXinyong(String xinyong) {
		this.xinyong = xinyong;
	}
	public String getTstext() {
		return tstext;
	}
	public void setTstext(String tstext) {
		this.tstext = tstext;
	}
	@Override
	public String toString() {
		return "TsJy [id=" + id + ", yOn=" + yOn + ", xinyong=" + xinyong + ", tstext=" + tstext + "]";
	}

}
