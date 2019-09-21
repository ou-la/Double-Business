package com.repository;

import java.util.List;

import com.entity.NewsZx;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface NewsZxDao extends BaseDao<NewsZx>{
	public List<NewsZx> find();
	/**
	 * 查询树结构
	 * @param O
	 * @return
	 */
	public List<NewsZx> findTree(NewsZx O);
	public void delAll(List stuList);
}
