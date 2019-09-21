package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.bind.annotation.RenderMapping;
import org.springframework.web.servlet.ModelAndView;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.common.utils.base.UuidUtil;
import com.controller.base.BaseController;
import com.entity.Student;
import com.entity.User;
import com.service.StudentService;
import com.service.UserHyService;

@Controller
@RequestMapping("/manager")
public class StudentController extends BaseController<Object>{
	
	@Autowired
	StudentService stuService;//重要，放在@Autowired下
	
	@RequestMapping("/findStudent")
	public void findStudent(){
		System.out.println("233");
	}

	@RequestMapping("/addStudents")
	@ResponseBody
	public AjaxRes addStudent(Student stu){
		AjaxRes res = new AjaxRes();
//		Student s = new Student();
//		s.setUid(stu.getUid());
//		s.setUname(stu.getUname());
//		s.setTel(stu.getTel());
//		s.setAge(stu.getAge());
//		s.setSex(stu.getSex());
		System.out.println("'"+stu.getUid()+"'"+"'"+stu.getUname()+"'"+"'"+stu.getTel()+"'"+"'"+stu.getAge()+"'"+"'"+stu.getSex()+"'");
		stuService.insert(stu);
		res.setResMsg("成功！");
		return res;
	}
	
	@RequestMapping("/del")
	@ResponseBody
	public AjaxRes del(Student o){
		AjaxRes res = new AjaxRes();
		stuService.delete(o);
		res.setSucceedMsg("删除成功");
		return res;
	}
	
	@RequestMapping("/findUser")
	@ResponseBody
	public AjaxRes findUser(Student o,Page<Student> page){
		AjaxRes res = new AjaxRes();
		Page<Student> studentPages = stuService.findByPage(o, page);
		System.out.println(studentPages);
		res.setSucceed(studentPages,"数据接受成功");
		return res;
	}

	//批量删除
	@RequestMapping("/delAll")
	@ResponseBody
	public AjaxRes delAll(String uid){
		AjaxRes res=new AjaxRes();  
		List stuList=new ArrayList();
		String[] getArr=uid.split(",");
		for (int i = 0; i < getArr.length; i++) {
			if(i!=0){
				Student u=new Student();
				u.setUid(getArr[i]);
				stuList.add(u);
			}
		}
		Integer aa = stuService.delAll(stuList);
		System.out.println(aa);
		if(aa!=null){
			res.setResMsg("失败");
		}else{
			res.setResMsg("成功");
		}
		return res;
	}
}
