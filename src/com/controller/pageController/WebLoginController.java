package com.controller.pageController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/weblogin")
public class WebLoginController {
	
	//跳转主页
	@RequestMapping("/weblogin")
	public String loginIndex(Model md){

		return "index/Login";
	}
}
