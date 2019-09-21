package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Fjgx;
import com.repository.FjgxDao;
import com.service.base.BaseServiceImp;
@Service("FjgxService")
public class FjgxImpService extends BaseServiceImp<Fjgx> implements FjgxService{

	@Autowired
	private FjgxDao gxdao;
	
	@Override
	public List<Fjgx> findByFj(Fjgx o) {
		// TODO Auto-generated method stub
		return gxdao.findByFj(o);
	}

}
