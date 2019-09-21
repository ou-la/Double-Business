package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Cp;
import com.repository.CpDao;
import com.service.base.BaseServiceImp;

@Service("CpService")
public class CpServiceImp extends BaseServiceImp<Cp> implements CpService{
	@Autowired
	private CpDao cpDao;

	@Override
	public List<Cp> find() {
		List<Cp> cP = cpDao.find();
		return cP;
	}

	@Override
	public Integer delAll(List stuList) {
		cpDao.delAll(stuList);
		return null;
	}

}
