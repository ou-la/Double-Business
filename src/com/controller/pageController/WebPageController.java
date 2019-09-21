package com.controller.pageController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.controller.base.BaseController;
import com.entity.Cp;
import com.entity.NewsLm;
import com.entity.NewsZx;
import com.service.CpService;
import com.service.NewsLmService;
import com.service.NewsZxService;

@Controller
@RequestMapping("/webpage")
public class WebPageController extends BaseController<Object>{
	
	@Autowired
	private NewsLmService newslmService;
	@Autowired
	private NewsZxService newszxService;
	@Autowired
	private CpService cpService;
	
	/**
	 * 3
	 * @param mv
	 * @return
	 */
	@RequestMapping("/butt_enterprise")
	public String butt_enterprise(ModelAndView mv){

		return "webpage/page/butt_enterprise";
	}
	
	/**
	 * 4
	 * @param mv
	 * @return
	 */
	@RequestMapping("/butt_result_bank")
	public String butt_result_bank(ModelAndView mv){

		return "webpage/page/butt_result_bank";
	}
	
	/**
	 * 5
	 * @param mv
	 * @return
	 */
	@RequestMapping("/butt_result")
	public String butt_result(ModelAndView mv){

		return "webpage/page/butt_result";
	}
	
	/**
	 * 6
	 * @param mv
	 * @return
	 */
	@RequestMapping("/chanpin_finance")
	public String chanpin_finance(ModelAndView mv){

		return "webpage/page/chanpin_finance";
	}
	
	
	/**
	 * 信用评级
	 * @param mv
	 * @return
	 */
	@RequestMapping("/credit")
	public String credit(ModelAndView mv){

		return "webpage/page/credit_grade";
	}
	
	/**
	 * 服务评级
	 * @param mv
	 * @return
	 */
	@RequestMapping("/fuwu")
	public String fuwu(ModelAndView mv){

		return "webpage/page/fuwu_grade";
	}
	
	/**
	 * 9
	 * @param mv
	 * @return
	 */
	@RequestMapping("/docsuc_pro")
	public String docsuc_pro(ModelAndView mv){

		return "webpage/page/docsuc_pro";
	}
	
	/**
	 * 10
	 * @param mv
	 * @return
	 */
	@RequestMapping("/finance_enterprise")
	public String finance_enterprise(ModelAndView mv){

		return "webpage/page/finance_enterprise";
	}
	
	/**
	 * 11
	 * @param mv
	 * @return
	 */
	@RequestMapping("/finance_knowledge")
	public String finance_knowledge(ModelAndView mv){

		return "webpage/page/finance_knowledge";
	}
	
	/**
	 * 12
	 * @param mv
	 * @return
	 */
	@RequestMapping("/finance_policy")
	public String finance_policy(ModelAndView mv){

		return "webpage/page/finance_policy";
	}
	
	/**
	 * 13
	 * @param mv
	 * @return
	 */
	@RequestMapping("/help_center")
	public String help_center(ModelAndView mv){

		return "webpage/page/help_center";
	}
	
	/**
	 * 15
	 * @param mv
	 * @return
	 */
	@RequestMapping("/hot_pro")
	public String hot_pro(ModelAndView mv){

		return "webpage/page/hot_pro";
	}
	
	/**
	 * 16
	 * @param mv
	 * @return
	 */
	@RequestMapping("/login")
	public String login(ModelAndView mv){

		return "webpage/page/login";
	}
	
	/**
	 * 国家政策
	 * @param mv
	 * @return
	 */
	@RequestMapping("/news_list")
	public String news_list(ModelAndView mv){

		return "webpage/page/news_list";
	}
	
	/**
	 * 本地政策
	 * @param mv
	 * @return
	 */
	@RequestMapping("/bendi")
	public String bendi(ModelAndView mv){

		return "webpage/page/bendi";
	}
	
	/**
	 * 
	 * @param mv
	 * @return
	 */
	@RequestMapping("/news")
	public String news(ModelAndView mv){

		return "webpage/page/news";
	}
	
	/**
	 * 21
	 * @param mv
	 * @return
	 */
	@RequestMapping("/select")
	public String select(ModelAndView mv){

		return "webpage/page/select";
	}
	
	/**
	 * 22
	 * @param mv
	 * @return
	 */
	@RequestMapping("/star")
	public String star(ModelAndView mv){

		return "webpage/page/star";
	}
	
	/**
	 * 23
	 * @param mv
	 * @return
	 */
	@RequestMapping("/upload")
	public String upload(ModelAndView mv){

		return "webpage/page/upload";
	}
	
	/**
	 * 24
	 * @param mv
	 * @return
	 */
	@RequestMapping("/newszx")
	public String newszx(Model md){
		NewsLm n = new NewsLm();
		n.setLmid("1");
		List<NewsLm> lmList = newslmService.find(n);
		NewsZx nz = new NewsZx();
		nz.setLmid("1");
		List<NewsZx> zxList = newszxService.find(nz);
		md.addAttribute("lmList",lmList);
		md.addAttribute("zxList",zxList.get(0));
		return "webpage/page/newszx";
	}
	
	/**
	 * 辖区动态
	 * @param mv
	 * @return
	 */
	@RequestMapping("/xiaqu")
	public String xiaqu(Model md){
		return "webpage/page/xiaqu";
	}
	
}
