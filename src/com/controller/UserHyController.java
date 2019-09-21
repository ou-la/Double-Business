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
import com.controller.base.BaseController;
import com.entity.User;
import com.entity.UserHy;
import com.service.UserHyService;

@Controller
@RequestMapping("/uhc")
public class UserHyController extends BaseController<Object>{
	
	@Autowired
	UserHyService uhyService;//重要，放在@Autowired下

	//跳转主页
	@RequestMapping("/addUserHy")
	public String addUserHy(ModelAndView mv){

		return "index/UserHy";
	}
	
	//跳转添加页面
	@RequestMapping("/addUserHyt")
	public String addUserHyt(Model md,String hyid){
		UserHy o = new UserHy();
		/*if(hyid!=null&&!hyid.equals("")){
			o.setHyid(hyid);
			List<UserHy> stuList = uhyService.find(o);
			if(stuList.size()>0){
				o = stuList.get(0);
			}
		}
		o.setHyid(hyid);*/
		o.setHyid(UuidUtil.get32UUID());
		List<UserHy> stuList = uhyService.find(o);
		md.addAttribute("UserHy", o);
		return "page/userHyAdd";
	}

	//跳转修改页面
	@RequestMapping("/updateHyPage")
	public String updateHyPage(Model md,String hyid){
		UserHy o = new UserHy();
		/*if(hyid!=null&&!hyid.equals("")){
			o.setHyid(hyid);
			List<UserHy> stuList = uhyService.find(o);
			if(stuList.size()>0){
				o = stuList.get(0);
			}
		}*/
		o.setHyid(hyid);
		List<UserHy> stuList = uhyService.find(o);
		md.addAttribute("UserHy", o);
		return "page/userHyUpdate";
	}

	//添加
	@RequestMapping("/addUserHys")
	@ResponseBody
	public AjaxRes addUserHys(UserHy uh){
		AjaxRes res = new AjaxRes();
		uh.setHyid(UuidUtil.get32UUID());
		uhyService.insert(uh);
		res.setResMsg("成功！");
		return res;
	}
	
	//修改
	@RequestMapping("/updateUserhy")
	@ResponseBody
	public AjaxRes updateUserhy(UserHy uh){
		AjaxRes res = new AjaxRes();
		uhyService.update(uh);
		res.setSucceed("成功");
		return res;
	}
	
	//查询
	@RequestMapping("/findUserHy")
	@ResponseBody
	public AjaxRes findUserHy(UserHy o, Page<UserHy> page){
		AjaxRes res = new AjaxRes();
		System.out.println(page);
		Page<UserHy> userhyPages = uhyService.findByPage(o, page);
		res.setSucceed(userhyPages,"数据接受成功");
		return res;
	}

	//删除
	@RequestMapping("/delHy")
	@ResponseBody
	public AjaxRes delHy(UserHy o){
		AjaxRes res = new AjaxRes();
		uhyService.delete(o);
		res.setSucceedMsg("删除成功");
		return res;
	}

	//批量删除
	@RequestMapping("/delAll")
	@ResponseBody
	public AjaxRes delAll(String hyid){
		AjaxRes res=new AjaxRes();  
		List stuList=new ArrayList();
		String[] getArr=hyid.split(",");
		System.out.println(getArr);
		for (int i = 0; i < getArr.length; i++) {
			if(i!=0){
				UserHy u=new UserHy();
				u.setHyid(getArr[i]);
				stuList.add(u);
			}
		}
		Integer aa = uhyService.delAll(stuList);
		System.out.println(aa);
		if(aa!=null){
			res.setResMsg("失败");
		}else{
			res.setResMsg("成功");
		}
		return res;
	}
}