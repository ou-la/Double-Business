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
import com.entity.Cp;
import com.service.CpService;

@Controller
@RequestMapping("/cp")
public class CpController extends BaseController<Object>{
	
	@Autowired
	CpService cpService;//重要，放在@Autowired下
	
	//跳转主页
	@RequestMapping("/CpPage")
	public String CpPage(ModelAndView mv){

		return "index/Cp";
	}
	
	//查询方法
	@RequestMapping("/findCp")
	@ResponseBody
	public AjaxRes findCp(Cp o, Page<Cp> page){
		AjaxRes res = new AjaxRes();
		Page<Cp> cpPages = cpService.findByPage(o, page);
		res.setSucceed(cpPages,"数据接受成功");
		return res;
	}
	//跳转添加页面
	@RequestMapping("/addCpPage")
	public String addCp(Model md){
		Cp c = new Cp();
		c.setProid(UuidUtil.get32UUID());
		md.addAttribute("Cp", c);
		return "page/cpAdd";
	}	
	
	//跳转修改页面
	@RequestMapping("/updateCpPage")
	public String updateCpPage(Model md,String id){
		Cp c = new Cp();
		c.setProid(id);
		md.addAttribute("Cp", c);
		return "page/cpUpdate";
	}
	
	//添加
	@RequestMapping("/addCp")
	@ResponseBody
	public AjaxRes addCp(Cp c){
		AjaxRes res = new AjaxRes();
		cpService.insert(c);
		res.setResMsg("成功！");
		return res;
	}
	
	//修改
	@RequestMapping("/updateCp")
	@ResponseBody
	public AjaxRes updateCp(Cp c){
		AjaxRes res = new AjaxRes();
		cpService.update(c);
		res.setSucceedMsg("成功");
		return res;
	}
	//删除
	@RequestMapping("/delcp")
	@ResponseBody
	public AjaxRes delcp(Cp c){
		AjaxRes res = new AjaxRes();
		cpService.delete(c);
		res.setSucceedMsg("删除成功");
		return res;
	}
	
	//批量删除
	@RequestMapping("/delAll")
	@ResponseBody
	public AjaxRes delAll(String proid){
		AjaxRes res=new AjaxRes();  
		List stuList=new ArrayList();
		String[] getArr=proid.split(",");
		for (int i = 0; i < getArr.length; i++) {
			if(i!=0){
				Cp c=new Cp();
				c.setProid(getArr[i]);
				stuList.add(c);
			}
		}
		Integer aa = cpService.delAll(stuList);
		System.out.println(aa);
		if(aa!=null){
			res.setResMsg("失败");
		}else{
			res.setResMsg("成功");
		}
		return res;
	}
	
	//下拉框
	@RequestMapping("/select")
	@ResponseBody
	public AjaxRes select(Cp c){
		AjaxRes res = new AjaxRes();
		List<Cp> cpList = cpService.find(c);
		res.setSucceed(cpList, "select获取数据成功");
		return res;
	}
}
