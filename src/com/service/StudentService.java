package com.service;

import java.util.List;

import com.entity.Student;
import com.service.base.BaseService;

public interface StudentService extends BaseService<Student>{
	public List<Student> find();
	public void insert(Student s);
	public Integer delAll(List stuList);
}
