package com.controller;

import java.util.List;

import com.common.ajax.AjaxRes;


@Controller
@RequestMapping("/login")
public class LoginController extends BaseController<Object>{
	@Autowired
	UserService userService;//重要，放在@Autowired下
	
	//跳转主页
	@RequestMapping("/loginIndex")
	public String loginIndex(ModelAndView mv){

		return "index/Login";
	}
	
	//登录验证
	@RequestMapping("/to_togin")
	@ResponseBody
	public AjaxRes to_togin(HttpServletRequest request,User u){
		AjaxRes res = new AjaxRes();
//	String pwdMD5 = u.getPassword(); 
//	u.setPassword(MD5Provider.encrypt(MD5Provider.encrypt(pwdMD5)));
		if(u.getUname().equals("") || u.getPassword().equals("")) {
			res.setFailMsg("请填写完整的登录信息！");
			return res;
		}
		int len = userService.countPWD(u);
		if(len <= 0) {
			res.setFailMsg("登陆失败！");
			return res;
		}
		res.setSucceedMsg("登陆成功！");
		List<User> userList = userService.find(u);
		request.getSession().setAttribute("USER", userList.get(0));
		return res;
	}
	
	//退出登录
	@RequestMapping("/to_logOut")
	public String to_logOut(HttpServletRequest request){
		HttpSession userSession = request.getSession();
		userSession.setAttribute("User", null);
		return "index/Login";
	}
}
