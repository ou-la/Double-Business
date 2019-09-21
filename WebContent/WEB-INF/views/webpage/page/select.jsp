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
	<title>选择</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/main.css">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/select.css">
</head>
<body>
	<div class="container" style="background-color: #fff;color: #000;">
   		<div class="row title">
		 	<div class="col-xs-2">
		  		<a href="#"><img src="${jpath}/static/imgs/fanhui.png"></a>
		  	</div>
		  	<div class="col-xs-8">选择</div>
		  	<div class="col-xs-2">
		  	</div>
		</div>
	</div>

	<div class="container help_o" style="margin-top: 1rem;background-image: url(${jpath}/static/imgs/dollar.jpg);">
	    <div class="row help_t">
	    	<div class="tou" style="background-color: #000;"></div>
	      	<div class="col-xs-12 pic">
	      		<img src="${jpath}/static/imgs/rzpic.png">
	      	</div>
	      	<div class="col-xs-12 txt txt_o">
	      		<a>我有融资需求</a>
	      	</div>
	    </div>
	</div>

	<div class="container help_o" style="background-image: url(${jpath}/static/imgs/NewYork.jpg);">
	    <div class="row help_t">
	    	<div class="tou" style="background-color: #273D4E;"></div>
	      	<div class="col-xs-12 pic">
	      		<img src="${jpath}/static/imgs/jrpic.png">
	      	</div>
	      	<div class="col-xs-12 txt txt_t">
	      		<a>我是金融机构</a>
	      	</div>
	    </div>
	</div>
</body>
</html>