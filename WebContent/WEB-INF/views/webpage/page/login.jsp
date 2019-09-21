<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="jpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>登录</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/login.css">
   	<script type="text/javascript">
		var TurnToLogin = () => {
    		document.getElementById('form_login_div').style.display = "block";
		    document.getElementById('form_register_div').style.display = "none";
		}
		var TurnToRegister = () => {
		    document.getElementById('form_register_div').style.display = "block";
		    document.getElementById('form_login_div').style.display = "none";
		}
	</script>
</head>
<body>
	<div class="container bg">
	   <div class="row" style="position: relative;">
	      <div class="col-xs-12">
	      	<img src="${jpath}/static/imgs/Image.jpg">
	      </div>
	   </div>
	</div>
	<div class="container">
   		<div class="row">
      		<div class="col-xs-12" id="form_login_div"">
		    	<div class="col-xs-6 main">
		    		<input type="button" class="btn" onclick="TurnToRegister()" value='注册' />
		    	</div>
      			<div class="col-xs-6 main">
		    		<input type="button" class="btn" onclick="TurnToLogin()" value='登陆'/>
		    	</div>
		    	<div class="col-xs-12 sanjiao">
		    		<img id="sanjiaol" src="${jpath}/static/imgs/sanjiao.png">
		    	</div>
		    	<div class="col-xs-12 main-a clear">
		    		<img src="${jpath}/static/imgs/youxiang.png" class="icon" />
	      			<input type="text" id="" placeholder="邮箱/用户名" />
	      		</div>
		    	<div class="col-xs-12 main-a">
		    		<img src="${jpath}/static/imgs/mima.png" class="icon" />
	      			<input type="text" id="" placeholder="密码" />
	      		</div>
		    	<div class="col-xs-12 main-b">
	      			<input type="button" id="" value="登录" />
	      		</div>
		    	<div class="col-xs-12 main-a">
	      			<input type="button" id="" value="手机号登录" style="padding: 0;background-color: #2066B2;" />
	      		</div>
		    	<div class="col-xs-12 main main-b sp">
	      			<span>忘记密码？</span><a href="#">请点击</a>
	      		</div>
		  	</div> 
		  	<div class="col-xs-12" id="form_register_div">
		    	<div class="col-xs-6 main">
		   			<input type="button" style="color: #ffffff" class="btn" onclick="TurnToRegister()" value='注册' />
		   		</div>
		  		<div class="col-xs-6 main">
		    		<input type="button" style="color: #ffffff" class="btn" onclick="TurnToLogin()" value='登陆'/>
		    	</div>
		    	<div class="col-xs-12 sanjiao">
		    		<img src="${jpath}/static/imgs/sanjiao.png">
		    	</div>
		   		<div class="col-xs-12 main-a">
		   			<img src="${jpath}/static/imgs/youxiang.png" class="icon" />
	      			<input type="text" id="" placeholder="邮箱号码" />
	      		</div>
		    	<div class="col-xs-12 main-a">
		    		<img src="${jpath}/static/imgs/man.png" class="icon" />
	      			<input type="text" id="" placeholder="用户名" />
	      		</div>
		    	<div class="col-xs-12 main-a">
		    		<img src="${jpath}/static/imgs/mima.png" class="icon" />
	      			<input type="text" id="" placeholder="密码" />
	      		</div>
		    	<div class="col-xs-12 main-b">
	      			<input type="button" id="" value="注册" />
	      		</div>
		    	<div class="col-xs-12 main main-b sp">
	      			<span>已经注册了吗？</span><a href="#">请登录</a>
	      		</div>
	    	</div>
		</div>
	</div>
</body>
</html>