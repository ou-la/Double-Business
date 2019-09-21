package com.service;

import org.springframework.stereotype.Service;

import com.common.utils.base.UuidUtil;
import com.entity.Fj;
import com.service.base.BaseServiceImp;

@Service("FjService")
public class FjImpService extends BaseServiceImp<Fj> implements FjService{
	@Override
	public void insert(Fj o) {
		o.setFjid(UuidUtil.get32UUID());
		super.insert(o);
	}
}
