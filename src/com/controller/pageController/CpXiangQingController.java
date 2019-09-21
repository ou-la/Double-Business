package com.controller.pageController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.controller.base.BaseController;
import com.entity.Cp;
import com.service.CpService;

@Controller
@RequestMapping("/webpageCpXq")
public class CpXiangQingController extends BaseController<Object>{

	@Autowired
	private CpService cpService;
	
	/**
	 * 产品详情
	 * @param md
	 * @return
	 */
	@RequestMapping("/news_2")
	public String news_2(Model md,String proid){
		Cp c = new Cp();
		c.setProid(proid);
		List<Cp> cpList = cpService.find(c);
		md.addAttribute("cpList",cpList);
		return "webpage/page/news_2";
	}
	
	@RequestMapping("/news")
	public String news(Model md){
		
		return "webpage/page/news_2";
	}
}
