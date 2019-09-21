package com.service;

import java.util.List;

import com.entity.Cp;
import com.entity.User;
import com.service.base.BaseService;

public interface CpService extends BaseService<Cp>{
	public List<Cp> find();
	public void insert(Cp c);
	public Integer delAll(List stuList);
}
