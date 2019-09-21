package com.controller.pageController;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.controller.base.BaseController;
import com.entity.Company;
import com.service.CompanyService;

@Controller
@RequestMapping("/webpageJrJg")
public class JrJiGouController extends BaseController<Object>{

	@Autowired
	private CompanyService companyService;
	
	/**
	 * 金融机构类型
	 * @param md
	 * @return
	 */
	@RequestMapping("/jrjg")
	public String jrjg(Model md){
		Company c = new Company();
		c.setTypeisOk("1");
		List<Company> cyList = companyService.find(c);
		md.addAttribute("cyList",cyList);
		return "webpage/page/finance_enterprise";
	}
	
	/**
	 * 金融机构类型
	 * @param md
	 * @return
	 */
	@RequestMapping("/comtypeinfo")
	public String comtypeinfo(Model md,String typeid){
		Company ct = new Company();
		ct.setTypeid(typeid);
		List<Company> ctList = companyService.find(ct);
		md.addAttribute("ctList",ctList);
		return "webpage/page/comtype_info";
	}
}
