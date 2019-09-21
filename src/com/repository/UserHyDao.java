package com.repository;

import java.util.List;

import com.entity.UserHy;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface UserHyDao extends BaseDao<UserHy> {
	public List<UserHy> find();
	public void insert(UserHy u);
	public void delAll(List stuList);
}
