package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.common.utils.base.UuidUtil;
import com.controller.base.BaseController;
import com.entity.NewsLm;
import com.entity.NewsZx;
import com.service.NewsLmService;

@RequestMapping("/nsl")
public class NwesLmController extends BaseController<Object>{

	@Autowired
	NewsLmService newslmService;//重要，放在@Autowired下
	
	//跳转主页
		@RequestMapping("/NewsLm")
		public String NewsLm(ModelAndView mv){

			return "index/NewsLm";
		}
		
		//查询方法
		@RequestMapping("/findNewsLm")
		@ResponseBody
		public AjaxRes findNewsLm(NewsLm n, Page<NewsLm> page){
			AjaxRes res = new AjaxRes();
			System.out.println(page);
			Page<NewsLm> NewsZxPages = newslmService.findByPage(n, page);
			res.setSucceed(NewsZxPages,"数据接受成功");
			return res;
		}	
		
		//跳转添加页面
		@RequestMapping("/newsLmAdd")
		public String newsLmAdd(Model md,String lmid){
			NewsLm n = new NewsLm();
			n.setLmid(UuidUtil.get32UUID());
			List<NewsLm> stuList = newslmService.find(n);
			md.addAttribute("NewsLm", n);
			return "page/newsLmAdd";
		}

		//跳转修改页面
		@RequestMapping("/newsLmUpate")
		public String newsZxUpate(Model md,String lmid){
			NewsLm n = new NewsLm();
			n.setLmid(lmid);
			List<NewsLm> stuList = newslmService.find(n);
			md.addAttribute("NewsLm", n);
			return "page/newsLmUpdate";
		}
		
		//添加
		@RequestMapping("/addNewsLms")
		@ResponseBody
		public AjaxRes addNewsLms(NewsLm n){
			AjaxRes res = new AjaxRes();
			n.setLmid(UuidUtil.get32UUID());
			newslmService.insert(n);
			res.setResMsg("成功！");
			return res;
		}
		
		//修改
		@RequestMapping("/updateNewsLm")
		@ResponseBody
		public AjaxRes updateNewsLm(NewsLm n){
			AjaxRes res = new AjaxRes();
			newslmService.update(n);
			System.out.println(n);
			res.setSucceed("成功");
			return res;
		}

		//删除
		@RequestMapping("/delNewsLm")
		@ResponseBody
		public AjaxRes delNewsLm(NewsLm n){
			AjaxRes res = new AjaxRes();
			newslmService.delete(n);
			res.setSucceedMsg("删除成功");
			return res;
		}
		
		//批量删除
		@RequestMapping("/delAll")
		@ResponseBody
		public AjaxRes delAll(String lmid){
			AjaxRes res=new AjaxRes();  
			List stuList=new ArrayList();
			String[] getArr=lmid.split(",");
			for (int i = 0; i < getArr.length; i++) {
				if(i!=0){
					NewsLm n=new NewsLm();
					n.setLmid(getArr[i]);
					stuList.add(n);
				}
			}
			Integer aa = newslmService.delAll(stuList);
			if(aa!=null){
				res.setResMsg("失败");
			}else{
				res.setResMsg("成功");
			}
			return res;
		}
}
