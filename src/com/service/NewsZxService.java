package com.service;

import java.util.List;

import com.entity.NewsZx;
import com.service.base.BaseService;

public interface NewsZxService extends BaseService<NewsZx>{
	public List<NewsZx> find();
	public void insert(NewsZx n);
	/**
	 * 查询树结构
	 * @param O
	 * @return
	 */
	public List<NewsZx> findTree(NewsZx n);
	/**
	 * 添加带有附件的新闻资讯
	 * @param n    学生信息对象
	 * @param fjId   附件表好组，由“，”分割的字符串信息
	 */
	public void insertFj(NewsZx n,String fjId);
	/**
	 * 全部删除
	 * @param stuList
	 * @return
	 */
	public Integer delAll(List stuList);
}
