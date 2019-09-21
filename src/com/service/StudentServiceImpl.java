package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Student;
import com.repository.StudentDao;
import com.service.base.BaseServiceImp;

@Service("StudentService")
public class StudentServiceImpl extends BaseServiceImp<Student> implements StudentService{
	@Autowired
	private StudentDao studentDao;

	@Override
	//@Transactional
	public List<Student> find() {
		List<Student> stu = studentDao.find();
		return stu;
	}

	@Override
	public void insert(Student s){
		studentDao.insert(s);
	}

	@Override
	public Integer delAll(List stuList) {
		studentDao.delAll(stuList);
		return null;
	}
	
}
