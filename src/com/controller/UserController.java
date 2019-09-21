package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.common.utils.base.UuidUtil;
import com.entity.User;
import com.service.UserService;

@Controller
@RequestMapping("/us")
public class UserController {
	
	@Autowired
	UserService userService;//重要，放在@Autowired下
	
		//跳转主页
		@RequestMapping("/UserPage")
		public String UserPage(ModelAndView mv){

			return "index/User";
		}	
		
		//跳转添加页面
		@RequestMapping("/addUser")
		public String addUser(Model md,String uid){
			User o = new User();
			o.setUid(UuidUtil.get32UUID());
//			o.setUid(UuidUtil.get32UUID());
//			List<User> stuList = userService.find(o);
//			if(stuList.size()>0){
//				//o = stuList.get(5);
//				o.setuid(uid);
//			}
			md.addAttribute("User", o);
			return "page/userAdd";
		}	
		
		//跳转修改页面
		@RequestMapping("/updateUser")
		public String updateUser(Model md,String uid){
			User o = new User();
			o.setUid(uid);
//			List<User> stuList = userService.find(o);
//			if(stuList.size()>0){
//				//o = stuList.get(5);
//				o.setuid(uid);
//			}
			md.addAttribute("User", o);
			return "page/userUpdate";
		}

		//添加
		@RequestMapping("/addUsers")
		@ResponseBody
		public AjaxRes addUsers(User u){
			AjaxRes res = new AjaxRes();
			userService.insert(u);
			res.setResMsg("成功！");
			return res;
		}

		//修改
		@RequestMapping("/updateUsers")
		@ResponseBody
		public AjaxRes updateUsers(User u){
			AjaxRes res = new AjaxRes();
			userService.update(u);
			res.setSucceed("成功");
			return res;
		}
		
		//查询
		@RequestMapping("/findUser")
		@ResponseBody
		public AjaxRes findUser(User o, Page<User> page){
			AjaxRes res = new AjaxRes();
			Page<User> userPages = userService.findByPage(o, page);
			res.setSucceed(userPages,"数据接受成功");
			return res;
		}
		
		//下拉框
		@RequestMapping("/select")
		@ResponseBody
		public AjaxRes select(User o){
			AjaxRes res = new AjaxRes();
			List<User> userList = userService.find(o);
			res.setSucceed(userList, "select获取数据成功");
			return res;
		}

		//删除
		@RequestMapping("/delus")
		@ResponseBody
		public AjaxRes delus(User o){
			AjaxRes res = new AjaxRes();
			userService.delete(o);
			res.setSucceedMsg("删除成功");
			return res;
		}

		//批量删除
		@RequestMapping("/delAll")
		@ResponseBody
		public AjaxRes delAll(String uid){
			AjaxRes res=new AjaxRes();  
			List stuList=new ArrayList();
			String[] getArr=uid.split(",");
			System.out.println(getArr);
			for (int i = 0; i < getArr.length; i++) {
				if(i!=0){
					User u=new User();
					u.setUid(getArr[i]);
					stuList.add(u);
				}
			}
			Integer aa = userService.delAll(stuList);
			System.out.println(aa);
			if(aa!=null){
				res.setResMsg("失败");
			}else{
				res.setResMsg("成功");
			}
			return res;
		}
		
}
