package com.controller.pageController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.common.ajax.AjaxRes;
import com.common.utils.base.UuidUtil;
import com.controller.base.BaseController;
import com.entity.TsJy;
import com.entity.User;
import com.service.TsJySerrvice;
@Controller
@RequestMapping("/webpageTsJy")
public class TsJyController extends BaseController<Object>{
	
	@Autowired
	private TsJySerrvice tsJyService;
	
	/**
	 * 2
	 * @param mv
	 * @return
	 */
	@RequestMapping("/appeal")
	public String appeal(ModelAndView mv){

		return "webpage/page/appeal";
	}
	
	//添加
	@RequestMapping("/addTsJy")
	@ResponseBody
	public AjaxRes addTsJy(TsJy t){
		AjaxRes res = new AjaxRes();
		t.setId(UuidUtil.get32UUID());
		/*t.setyOn(UuidUtil.get32UUID());
		t.setXinyong(UuidUtil.get32UUID());
		t.setTstext(UuidUtil.get32UUID());*/
		System.out.println("111111111111111111111111111");
		System.out.println(t);
		tsJyService.insert(t);
		res.setResMsg("成功！");
		return res;
	}
}
