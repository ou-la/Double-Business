package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.UserHy;
import com.repository.UserHyDao;
import com.service.base.BaseServiceImp;

@Service("UserHyService")
public class UserHyServiceImp extends BaseServiceImp<UserHy> implements UserHyService{
	@Autowired
	private UserHyDao userhyDao;
	
	@Override
	public List<UserHy> find() {
		List<UserHy> stu = userhyDao.find();
		return stu;
	}
	
	@Override
	public void insert(UserHy u){
		userhyDao.insert(u);
	}

	@Override
	public Integer delAll(List stuList) {
		userhyDao.delAll(stuList);
		return null;
	}
}
