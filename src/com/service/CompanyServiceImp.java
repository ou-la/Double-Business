package com.service;

import org.springframework.stereotype.Service;

import com.entity.Company;
import com.service.base.BaseServiceImp;

@Service("CompanyService")
public class CompanyServiceImp extends BaseServiceImp< Company> implements CompanyService{

}
