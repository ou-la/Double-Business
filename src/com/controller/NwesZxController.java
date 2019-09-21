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
import com.entity.Fjgx;
import com.entity.NewsZx;
import com.service.FjgxService;
import com.service.NewsZxService;

@Controller
@RequestMapping("/nsz")
public class NwesZxController extends BaseController<Object>{
	
	@Autowired
	NewsZxService newszxService;//重要，放在@Autowired下
	@Autowired
	FjgxService fjgxService;//重要，放在@Autowired下
	
	//跳转主页
		@RequestMapping("/NewsZx")
		public String NewsZx(ModelAndView mv){

			return "index/NewsZx";
		}	
		
		//跳转添加页面
		@RequestMapping("/newsZxAdd")
		public String newsZxAdd(Model md,String newsid){
			NewsZx n = new NewsZx();
			n.setNewsid(UuidUtil.get32UUID());
			List<NewsZx> stuList = newszxService.find(n);
			md.addAttribute("NewsZx", n);
			return "page/newsZxAdd";
		}

		//跳转修改页面
		@RequestMapping("/newsZxUpate")
		public String newsZxUpate(Model md,String newsid){
			NewsZx n = new NewsZx();
			n.setNewsid(newsid);
			List<NewsZx> stuList = newszxService.find(n);
			md.addAttribute("NewsZx", n);
			return "page/newsZxUpdate";
		}
		
		//添加
		@RequestMapping("/addNewsZxs")
		@ResponseBody
		public AjaxRes addNewsZxs(NewsZx n,String fjId){
			AjaxRes res = new AjaxRes();
			try {
				newszxService.insertFj(n,fjId);
				res.setResMsg("添加成功");
			}catch(Exception e) {
				System.out.println("ER:"+e.getMessage());
				res.setFailMsg("添加失败！");
			}
			return res;
		}
		
		//修改
		@RequestMapping("/updateNewsZx")
		@ResponseBody
		public AjaxRes updateNewsZx(NewsZx n){
			AjaxRes res = new AjaxRes();
			newszxService.update(n);
			System.out.println(n);
			res.setSucceed("成功");
			return res;
		}
		
		//查询方法
		@RequestMapping("/findNewsZx")
		@ResponseBody
		public AjaxRes findNewsZx(NewsZx n, Page<NewsZx> page){
			AjaxRes res = new AjaxRes();
			System.out.println(page);
			Page<NewsZx> NewsZxPages = newszxService.findByPage(n, page);
			res.setSucceed(NewsZxPages,"数据接受成功");
			return res;
		}
		
		//表单
		@RequestMapping("/select")
		@ResponseBody
		public AjaxRes select(NewsZx n){
			AjaxRes res = new AjaxRes();
			List<NewsZx> userList = newszxService.find(n);
			res.setSucceed(userList, "select获取数据成功");
			return res;
		}

		//删除
		@RequestMapping("/delNewsZx")
		@ResponseBody
		public AjaxRes delNewsZx(NewsZx n){
			AjaxRes res = new AjaxRes();
			newszxService.delete(n);
			res.setSucceedMsg("删除成功");
			return res;
		}
		
		//批量删除
		@RequestMapping("/delAll")
		@ResponseBody
		public AjaxRes delAll(String newsid){
			AjaxRes res=new AjaxRes();  
			List stuList=new ArrayList();
			String[] getArr=newsid.split(",");
			for (int i = 0; i < getArr.length; i++) {
				if(i!=0){
					NewsZx n=new NewsZx();
					n.setNewsid(getArr[i]);
					stuList.add(n);
				}
			}
			Integer aa = newszxService.delAll(stuList);
			System.out.println(aa);
			if(aa!=null){
				res.setResMsg("失败");
			}else{
				res.setResMsg("成功");
			}
			return res;
		}
		
		//树状
		@RequestMapping("/findStuTree")
		@ResponseBody
		public AjaxRes findStuTree(NewsZx n){
			AjaxRes res = new AjaxRes();
			List<NewsZx> treeList = newszxService.findTree(n);
			res.setSucceed(treeList,"数据接受成功");
			return res;
		}
		
		//傅吉安
		@RequestMapping("/findByFj")
		@ResponseBody
		public AjaxRes findByFj(Fjgx o){
			AjaxRes res = new AjaxRes();
			List<Fjgx> fjgxList = fjgxService.findByFj(o);
			res.setSucceed(fjgxList,"数据接受成功");
			return res;
		}
		
}
