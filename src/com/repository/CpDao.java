package com.repository;

import java.util.List;

import com.entity.Cp;
import com.entity.User;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface CpDao extends BaseDao<Cp>{
	public List<Cp> find();
	public void insert(Cp c);
	public void delAll(List stuList);
}
