package com.service;

import java.util.List;

import com.entity.Fjgx;
import com.service.base.BaseService;

public interface FjgxService extends BaseService<Fjgx>{
	/**
	 * 通过附件关系表查询资讯与附件的关系
	 * @param o
	 * @return
	 */
	public List<Fjgx> findByFj(Fjgx o);
}
