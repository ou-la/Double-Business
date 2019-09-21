package com.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

/**+
 * 
 * @author Administrator
 * 评论表
 */
@Alias("BaseComment")
public class Comment extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private int plid;//编号
	private int uid;//用户编号（评论）
	private int newsid;//评论对象编号
	private String newstitle;//评论表名
	private Date pltime;//评论时间
	private String pltext;//评论内容
	private int plplid;//评论评论编号
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Comment(int plid, int uid, int newsid, String newstitle,
			Date pltime, String pltext, int plplid) {
		super();
		this.plid = plid;
		this.uid = uid;
		this.newsid = newsid;
		this.newstitle = newstitle;
		this.pltime = pltime;
		this.pltext = pltext;
		this.plplid = plplid;
	}
	public int getPlid() {
		return plid;
	}
	public void setPlid(int plid) {
		this.plid = plid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
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
	public Date getPltime() {
		return pltime;
	}
	public void setPltime(Date pltime) {
		this.pltime = pltime;
	}
	public String getPltext() {
		return pltext;
	}
	public void setPltext(String pltext) {
		this.pltext = pltext;
	}
	public int getPlplid() {
		return plplid;
	}
	public void setPlplid(int plplid) {
		this.plplid = plplid;
	}
	@Override
	public String toString() {
		return "table_pinglun [plid=" + plid + ", uid=" + uid + ", newsid="
				+ newsid + ", newstitle=" + newstitle + ", pltime=" + pltime
				+ ", pltext=" + pltext + ", plplid=" + plplid + "]";
	}
}
