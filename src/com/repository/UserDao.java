package com.repository;

import java.util.List;

import com.entity.User;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface UserDao extends BaseDao<User>{
	public List<User> find();
	public void insert(User u);
	
	/**
	 * 用于验证登陆的方法
	 * @param u 传递的登录对象参数，主要包括：name,password
	 * @return
	 */
	public int countPWD(User u);
	/**
	 * 批量删除
	 * @param stuList
	 */
	public void delAll(List stuList);
}