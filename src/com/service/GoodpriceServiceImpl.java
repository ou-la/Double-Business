package com.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Goodprice;
import com.repository.GoodpriceDao;
import com.service.base.BaseServiceImp;

@Service("GoodpriceService")
public class GoodpriceServiceImpl extends BaseServiceImp<Goodprice> implements GoodpriceService{
	@Autowired
	private GoodpriceDao goodpriceDao;
	
	@Override
	@Transactional
	public boolean insertprice(Goodprice o) {
		// TODO Auto-generated method stub
		o.setCreateTime(new Date());
		String nid=o.getNatureId();
		Goodprice gp=new Goodprice();
		gp.setNatureId(nid);
		//有就返回false，没有，就添加
		List<Goodprice> gps=goodpriceDao.find(gp);
		if (gps.size()>0) {
			return false;
		}
		goodpriceDao.insert(o);
		//String goodId=o.getGoodId();
		return true;
	}
	
}
