package com.controller.pageController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.controller.base.BaseController;
import com.entity.NewsLm;
import com.entity.NewsZx;
import com.service.NewsLmService;
import com.service.NewsZxService;

@Controller
@RequestMapping("/webpageHome")
public class HomepageController extends BaseController<Object>{

	@Autowired
	private NewsLmService newslmService;
	@Autowired
	private NewsZxService newszxService;
	
	/**
	 * 主页
	 * @param mv
	 * @return
	 */
	@RequestMapping("/homepage")
	public String homepage(Model md){
		NewsZx nz = new NewsZx();
		nz.setLmid("1");
		List<NewsZx> zxList = newszxService.find(nz);
		md.addAttribute("zxList",zxList);
		return "webpage/page/homepage";
	}
}