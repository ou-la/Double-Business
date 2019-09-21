package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.NewsLm;
import com.repository.NewsLmDao;
import com.service.base.BaseServiceImp;

@Service("NwesLmService")
public class NewsLmServiceImp extends BaseServiceImp<NewsLm> implements NewsLmService{
	
	@Autowired
	private NewsLmDao newslmDao;
	
	@Override
	public Integer delAll(List stuList) {
		newslmDao.delAll(stuList);
		return null;
	}

}
