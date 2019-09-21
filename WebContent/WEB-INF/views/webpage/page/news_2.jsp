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
	<title>相关产品</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/main.css">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/news_2.css">
   	<script type="text/javascript">
   		$(function(){
   			$("#tj_btn").click(function(){
   				console.log("对接成功");
   			});
   		});
   	</script>
</head>
<body>
	<c:forEach var="cp" items="${cpList}" varStatus="cpStruts">
	<div class="container" style="background-color: #F86941;color: #fff;">
	   <div class="row title">
	      <div class="col-xs-2">
	      	<a href="#" id="fanhui"><img src="${jpath}/static/imgs/fanhui_1.png"></a>
	      </div>
	      <div class="col-xs-8">相关产品</div>
	      <div class="col-xs-2">
	      	<a href=""><img src="${jpath}/static/imgs/shuqian.png"></a>
	      </div>
	   </div>
	</div>

	<div class="container">
	   <div class="row imagetitle">
	      <div class="col-xs-12">
	      	<img src="${jpath}/static/imgs/bgImage.jpg">
	      </div>
	   </div>
	   <div class="row imagetitle">
	  	  
		      <div class="col-xs-12 daojishi">
		      	贷款倒计时：${cp.timelimit}<br/>
		      </div>
	   </div>
	   <div class="row imagetitle canpintitle">
		      <div class="col-xs-12 tit1">
		      	融资限额：${cp.rzmoney}
		      </div>
		      <div class="col-xs-12 tit2">
		      	产品名称：${cp.protitle}
		      </div>
	   </div>
	</div>

	<div id="cpPan">
		<div class="container">
		   <div class="row content">
		      <div class="col-xs-12 content_1">办理条件</div>
		     
			      <div class="col-xs-12 content_2">
			      	${cp.protj}
			      </div>
		   </div>
		</div>
	
		<div class="container">
		   <div class="row content">
		      <div class="col-xs-12 content_1">办理流程</div>
		      
		      	<div class="col-xs-12 content_2">
		      		${cp.prolc}
		      	</div>
		      
		   </div>
		</div>
	
		<div class="container">
		   <div class="row content">
		      <div class="col-xs-12 content_1">产品简介</div>
		      
			      <div class="col-xs-12 content_2">
			      	${cp.proinfo}
			      </div>
		      
		   </div>
	</div>

	<div class="container">
	   <div class="row lins">
	   </div>
	</div>

	<div class="container">
	   <div class="row content">
	      <div class="col-xs-12 content_1">关于我们</div>
	      
		      <div class="col-xs-12 content_2">
		      	<img src="${jpath}/static/imgs/cir.png"><span>公司规模：</span><span>${cp.companysize}</span><br />
		      	<img src="${jpath}/static/imgs/cir.png"><span>金融机构：</span><span>${cp.company}<br />
		      	<img src="${jpath}/static/imgs/cir.png"><span>融资周期：</span><span>${cp.rzcycle}<br />
		      	<img src="${jpath}/static/imgs/cir.png"><span>联系电话：</span><span style="color: #F87854;">${cp.callme}</span>
		      </div>
	     
	   </div>
	</div>

	<div class="container">
	   <div class="row duijie">
	   	<button type="button" class="col-xs-12 duijie_b" id="tj_btn">
	   		对&nbsp;&nbsp;&nbsp;&nbsp;接
	   	</button>
	   </div>
	</div>

	<div class="container">
	   <div class="row lins_2">
	   </div>
	</div>

	<div class="container">
	  <div class="row last">
	      <div class="col-xs-4">
	      	<a href="#">
	      		<img src="${jpath}/static/imgs/good.png">点赞
	      	</a>
	      </div>
	      <div class="col-xs-4 end">
	      	<a href="">
	      		<img src="${jpath}/static/imgs/yan.png">留言
	      	</a>
	      </div>
	      <div class="col-xs-4">
	      	<a href="">
	      		<img src="${jpath}/static/imgs/share.png">分享
	      	</a>
	      </div>     
	   </div>
	</div>
	</c:forEach>
</body>
<script type="text/javascript">
$("#fanhui").click(function(){
		window.location.href="${jpath}/webpageZcZt/zczt";
	});
</script>
</html>