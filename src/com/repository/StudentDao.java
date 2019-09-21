package com.repository;

import java.util.List;

import com.entity.Student;
import com.repository.base.BaseDao;
import com.repository.base.AllBatis;

@AllBatis
public interface StudentDao extends BaseDao<Student> {
	public List<Student> find();
	public void insert(Student s);
	public void delAll(List stuList);
}
