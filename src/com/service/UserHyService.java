package com.service;

import java.util.List;

import com.entity.UserHy;
import com.service.base.BaseService;

public interface UserHyService extends BaseService<UserHy>{
	public List<UserHy> find();
	public void insert(UserHy u);
	public Integer delAll(List stuList);
}
