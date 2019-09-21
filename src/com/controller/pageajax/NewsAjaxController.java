package com.controller.pageajax;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.entity.NewsZx;
import com.entity.User;
import com.service.NewsLmService;
import com.service.NewsZxService;
import com.service.UserService;

@Controller
@RequestMapping("/webpage")
public class NewsAjaxController {

	@Autowired
	private NewsLmService newslmService;
	@Autowired
	private NewsZxService newszxService;
	@Autowired
	private UserService userService;
	
	@RequestMapping("/findAjax")
	@ResponseBody
	public AjaxRes findAjax(NewsZx o,Page<NewsZx> page) {
		AjaxRes ar = new AjaxRes();
		Page<NewsZx> pages = newszxService.findByPage(o, page);
		ar.setSucceed(pages,"数据加载成功！");
		return ar;
	}
	@RequestMapping("/findMine")
	@ResponseBody
	public AjaxRes findMine(HttpServletRequest request,User u) {
		AjaxRes ar = new AjaxRes();
		List<User> userList = userService.find(u);
		request.getSession().setAttribute("USER", userList.get(0));
		ar.setSucceed(userList,"数据加载成功！");
		return ar;
	}
}
