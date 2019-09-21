package com.service;

import java.util.List;

import com.entity.User;
import com.service.base.BaseService;

public interface UserService extends BaseService<User>{
	public List<User> find();
	public void insert(User us);
	/**
	 * 用于验证登陆的方法
	 * @param u 传递的登录对象参数，主要包括：name,password
	 * @return
	 */
	public int countPWD(User u);
	public Integer delAll(List stuList);
}
