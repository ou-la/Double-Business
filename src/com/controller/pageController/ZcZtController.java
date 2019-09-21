package com.controller.pageController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.controller.base.BaseController;
import com.entity.Cp;
import com.entity.User;
import com.entity.ZcZt;
import com.service.ZcZtService;

@Controller
@RequestMapping("/webpageZcZt")
public class ZcZtController extends BaseController<Object>{
	
	@Autowired
	private	ZcZtService zcZtService;
		
	/**
	 * 注册状态
	 * @param mv
	 * @return
	 */
	@RequestMapping("/zczt")
	public String zczt(HttpServletRequest request,Model md,Model md1){
		ZcZt z= new ZcZt();
		z.setId("1");
		List<ZcZt> zList = zcZtService.find(z);
		md.addAttribute("zList",zList);
		HttpSession userSession = request.getSession();
		User user = (User)userSession.getAttribute("USER");
		md1.addAttribute("stUser", user);
		return "webpage/page/registration_state";
	}
	
	/**
	 * 注册状态T
	 * @param mv
	 * @return
	 */
	@RequestMapping("/zcztT")
	public String zcztT(Model md){
		ZcZt zT= new ZcZt();
		zT.setZid("1");
		List<ZcZt> zTList = zcZtService.find(zT);
		md.addAttribute("zTList",zTList);
		return "webpage/page/registration_stateT";
	}
}
