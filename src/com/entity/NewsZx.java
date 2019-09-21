package com.entity;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @author Administrator
 * 新闻资讯表
 */
@Alias("BaseNewsZx")
public class NewsZx extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private String newsid;//编号
	private String newstitle;//标题
	private String newstime;//发布时间
	private String username;//发布人
	private String newstext;//新闻内容
	private String fjid;//封面图片
	private String lmid;//新闻栏目编号
	private String zid;//企业融资or金融机构
	private String lookednum;//浏览数量
	private String newsgoods;//预览点赞字段
	private String commentnum;//预留评论数量字段
	/**
	 * newsIm
	 */
	private String lmLink;//新闻栏目ID
	private String lmName ;//新闻栏目名称
	private String lmImg;//
	public NewsZx() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NewsZx(String newsid, String newstitle, String newstime, String username, String newstext, String fjid,
			String lmid, String zid, String lookednum, String newsgoods, String commentnum, String lmLink,
			String lmName, String lmImg) {
		super();
		this.newsid = newsid;
		this.newstitle = newstitle;
		this.newstime = newstime;
		this.username = username;
		this.newstext = newstext;
		this.fjid = fjid;
		this.lmid = lmid;
		this.zid = zid;
		this.lookednum = lookednum;
		this.newsgoods = newsgoods;
		this.commentnum = commentnum;
		this.lmLink = lmLink;
		this.lmName = lmName;
		this.lmImg = lmImg;
	}
	public String getNewsid() {
		return newsid;
	}
	public void setNewsid(String newsid) {
		this.newsid = newsid;
	}
	public String getNewstitle() {
		return newstitle;
	}
	public void setNewstitle(String newstitle) {
		this.newstitle = newstitle;
	}
	public String getNewstime() {
		return newstime;
	}
	public void setNewstime(String newstime) {
		this.newstime = newstime;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNewstext() {
		return newstext;
	}
	public void setNewstext(String newstext) {
		this.newstext = newstext;
	}
	public String getFjid() {
		return fjid;
	}
	public void setFjid(String fjid) {
		this.fjid = fjid;
	}
	public String getLmid() {
		return lmid;
	}
	public void setLmid(String lmid) {
		this.lmid = lmid;
	}
	public String getZid() {
		return zid;
	}
	public void setZid(String zid) {
		this.zid = zid;
	}
	public String getLookednum() {
		return lookednum;
	}
	public void setLookednum(String lookednum) {
		this.lookednum = lookednum;
	}
	public String getNewsgoods() {
		return newsgoods;
	}
	public void setNewsgoods(String newsgoods) {
		this.newsgoods = newsgoods;
	}
	public String getCommentnum() {
		return commentnum;
	}
	public void setCommentnum(String commentnum) {
		this.commentnum = commentnum;
	}
	public String getLmLink() {
		return lmLink;
	}
	public void setLmLink(String lmLink) {
		this.lmLink = lmLink;
	}
	public String getLmName() {
		return lmName;
	}
	public void setLmName(String lmName) {
		this.lmName = lmName;
	}
	public String getLmImg() {
		return lmImg;
	}
	public void setLmImg(String lmImg) {
		this.lmImg = lmImg;
	}
	@Override
	public String toString() {
		return "NewsZx [newsid=" + newsid + ", newstitle=" + newstitle + ", newstime=" + newstime + ", username="
				+ username + ", newstext=" + newstext + ", fjid=" + fjid + ", lmid=" + lmid + ", zid=" + zid
				+ ", lookednum=" + lookednum + ", newsgoods=" + newsgoods + ", commentnum=" + commentnum + ", lmLink="
				+ lmLink + ", lmName=" + lmName + ", lmImg=" + lmImg + "]";
	}
	
}
