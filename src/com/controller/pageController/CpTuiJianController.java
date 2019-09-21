package com.controller.pageController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.controller.base.BaseController;
import com.entity.AboutTxt;
import com.entity.Cp;
import com.service.CpService;

@Controller
@RequestMapping("/webpageCpTj")
public class CpTuiJianController extends BaseController<Object>{

	@Autowired
	private CpService cpService;
	
	/**
	 * 产品推荐
	 * @param mv
	 * @return
	 */
	@RequestMapping("/chanpin_list")
	public String chanpin_list(Model md){
		Cp c = new Cp();
		c.setId("1");
		List<Cp> cpList = cpService.find(c);
		md.addAttribute("cpList",cpList);
		return "webpage/page/chanpin_list";
	}
	
	/**
	 * 融资需求
	 * @param mv
	 * @return
	 */
	@RequestMapping("/rzxq")
	public String rzxq(Model md){
		Cp c = new Cp();
		c.setId("1");
		List<Cp> cpList = cpService.find(c);
		md.addAttribute("cpList",cpList);
		return "webpage/page/rzxq";
	}
	
	@RequestMapping("/findAjax")
	@ResponseBody
	public AjaxRes findAjax(Cp o,Page<Cp> page) {
		AjaxRes ar = new AjaxRes();
		Page<Cp> pages = cpService.findByPage(o, page);
		ar.setSucceed(pages,"数据加载成功！");
		return ar;
	}
}
