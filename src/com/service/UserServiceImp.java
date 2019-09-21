package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.User;
import com.repository.UserDao;
import com.service.base.BaseServiceImp;

@Service("UserService")
public class UserServiceImp extends BaseServiceImp<User> implements UserService{
	@Autowired
	private UserDao userDao;
	
	@Override
	public List<User> find() {
		List<User> stu = userDao.find();
		return stu;
	}
	
	@Override
	public void insert(User u){
		userDao.insert(u);
	}

	@Override
	public int countPWD(User u) {
		// TODO Auto-generated method stub
		return userDao.countPWD(u);
	}

	@Override
	public Integer delAll(List stuList) {
		userDao.delAll(stuList);
		return null;
	}
}
