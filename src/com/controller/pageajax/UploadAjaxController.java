package com.controller.pageajax;

import java.awt.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.ajax.AjaxRes;
import com.common.utils.base.UuidUtil;
import com.entity.Cp;
import com.service.CpService;

@Controller
@RequestMapping("/webpage")
public class UploadAjaxController {
	
	@Autowired
	CpService cpService;//重要，放在@Autowired下
	
	//上传
	@RequestMapping("/uploadAjax")
	@ResponseBody
	public AjaxRes upload(Cp c){
		AjaxRes res = new AjaxRes();
		c.setProid(UuidUtil.get32UUID());
		cpService.insert(c);
		res.setResMsg("成功！");
		return res;
	}
}
