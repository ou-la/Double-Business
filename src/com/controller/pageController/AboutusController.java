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
import com.entity.Aboutus;
import com.entity.NewsZx;
import com.entity.AboutTxt;
import com.service.AboutTxtService;
import com.service.AboutUsService;

@Controller
@RequestMapping("/webpageAboutus")
public class AboutusController extends BaseController<Object>{
	
	@Autowired
	private AboutUsService aboutusService;
	@Autowired
	private AboutTxtService aboutTxtService;
	/**
	 * 关于我们
	 * @param mv
	 * @return
	 */
	@RequestMapping("/aboutus")
	public String abouts(Model md){
		Aboutus a = new Aboutus();
		a.setAuid("1");
		List<Aboutus> auList = aboutusService.find(a);
		System.out.println("=========================================");
		System.out.println(auList);
		AboutTxt at = new AboutTxt();
		at.setAuid("1");
		List<AboutTxt> atList = aboutTxtService.find(at);
		md.addAttribute("auList",auList);
		System.out.println(auList);
		md.addAttribute("atList",atList);
		return "webpage/page/aboutus";
	}
	
	@RequestMapping("/findAjax")
	@ResponseBody
	public AjaxRes findAjax(AboutTxt o,Page<AboutTxt> page) {
		AjaxRes ar = new AjaxRes();
		Page<AboutTxt> pages = aboutTxtService.findByPage(o, page);
		ar.setSucceed(pages,"数据加载成功！");
		return ar;
	}
}
