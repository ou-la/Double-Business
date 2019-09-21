package com.repository;

import java.util.List;

import com.entity.NewsLm;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface NewsLmDao extends BaseDao<NewsLm>{

	void delAll(List stuList);

}
