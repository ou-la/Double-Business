package com.repository;

import java.util.List;

import com.entity.Fjgx;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface FjgxDao extends BaseDao<Fjgx>  {
	/**
	 * 通过附件关系表查询资讯与附件的关系
	 * @param o
	 * @return
	 */
	public List<Fjgx> findByFj(Fjgx o);
}
