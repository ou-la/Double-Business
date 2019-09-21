package com.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.entity.User;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		HttpSession userSession = request.getSession();
		User user = (User)userSession.getAttribute("USER");
		String url = request.getContextPath();
		if(null!=user) {
			return true;
		}else{
			String path = request.getRequestURI();
			if(path.indexOf("login")!=-1 || path.indexOf("static") != -1 ) {
				return true;
			}
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath+"/login/loginIndex");
			return false;
		}
	}

}
