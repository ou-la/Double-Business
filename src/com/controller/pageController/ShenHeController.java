package com.controller.pageController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.controller.base.BaseController;
import com.entity.Cp;
import com.service.CompanyService;
import com.service.CpService;

@Controller
@RequestMapping("/webpageSh")
public class ShenHeController extends BaseController<Object>{

	@Autowired
	private CpService cpService;
	
	/**
	 * 产品审核
	 * @param mv
	 * @return
	 */
	@RequestMapping("/sh")
	public String sh(Model md){
		Cp c = new Cp();
		c.setId("1");
		List<Cp> cpList = cpService.find(c);
		md.addAttribute("cpList",cpList);
		return "webpage/page/chanpin_finance";
	}
	
}
