package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.controller.base.BaseController;
import com.entity.Student;
import com.entity.User;
import com.service.StudentService;
@Controller
public class InsexpageController extends BaseController<Object>{
	
	@Autowired
	StudentService stuService;//重要，放在@Autowired下
	
	//@Autowired
	//UserHyService uhyService;//重要，放在@Autowired下
	//跳转主页
	@RequestMapping("/indexpage")//@ResponseBody
	public String indexpage(HttpServletRequest request,Model md){
		//ModelAndView mv =  new ModelAndView();
		HttpSession userSession = request.getSession();
		User user = (User)userSession.getAttribute("USER");
		md.addAttribute("stUser", user);
		//mv.setViewName("index");
		return "index";
	}
	
	@RequestMapping("/findByPage")
	public String findByPage(ModelAndView mv){

		return "index/tables";
	}
	
	@RequestMapping("/addStudent")
	public String addStudent(Model md,String uid){
		Student o = new Student();
		o.setUid(uid);
		List<Student> stuList = stuService.find(o);
//		if(stuList.size()>0){
//			o = stuList.get(0);
//		}
		md.addAttribute("Student",o);
		return "page/addStudent";
	}

	
	/*@RequestMapping("/uploadfile")
	public ModelAndView uploadTest(@RequestParam("file")MultipartFile file ) throws IllegalStateException, IOException{
		
		file.transferTo(new File(""));
		return null;
	}*/
	
}
