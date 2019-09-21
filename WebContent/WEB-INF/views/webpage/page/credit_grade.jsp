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
	<title>信用评级</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/main.css">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/grade.css">
   	<script src="${jpath}/static/js/myScript.js"></script>
</head>
</head>
<body>
	<div class="container" style="background-color: #F86941;color: #fff;">
   		<div class="row title">
		 	<div class="col-xs-2">
		  		<a href="#" id="fanhui"><img src="${jpath}/static/imgs/fanhui_1.png"></a>
		  	</div>
		  	<div class="col-xs-8">信用评级</div>
		  	<div class="col-xs-2">
		  	</div>
		</div>
	</div>

	<div class="container nnc">
		<a href="#">
	   	<div class="row bian">
	      <div class="col-xs-4 lft_img">
	      	<img src="${jpath}/static/imgs/hongqi.png"">
	      </div>
	      <div class="col-xs-8 qwe">
	      	<div class="row hepin">
	      		<div class="col-xs-7 hepin_l">红旗连锁</div>
		      	<div class="col-xs-5"></div>
	      	</div>
	      	<div class="row youai">
	      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主和平
	      	</div>
	      </div>      
   		</div>
   		</a>
	</div>

	<div class="empty">
	</div>

	<div class="container">
   		<div class="row pj">
		 	<div class="col-xs-12">信用评级</div>
		 	<div class="col-xs-2"></div>
		 	<div class="col-xs-10" id="star-five">
		 		 <a href="javascript:click(1)"><img src="${jpath}/static/imgs/star_1.png" id="star1" onMouseOver="over(1)" onMouseOut="out(1)"/></a>
		        <a href="javascript:click(2)"><img src="${jpath}/static/imgs/star_1.png" id="star2" onMouseOver="over(2)" onMouseOut="out(2)" /></a>
		        <a href="javascript:click(3)"><img src="${jpath}/static/imgs/star_1.png" id="star3" onMouseOver="over(3)" onMouseOut="out(3)" /></a>
		        <a href="javascript:click(4)"><img src="${jpath}/static/imgs/star_1.png" id="star4" onMouseOver="over(4)" onMouseOut="out(4)"/></a>
		        <a href="javascript:click(5)"><img src="${jpath}/static/imgs/star_1.png" id="star5" onMouseOver="over(5)" onMouseOut="out(5)"/></a>
		        <span id="message"></span>
		 	</div>
		 </div>
	</div>

	<div class="empty">
	</div>

	<div class="container">
   		<div class="row sh">
		 	<div class="col-xs-4"><div id="sh_o" onclick="ck(this)">信用良好</div></div>
		 	<div class="col-xs-4"><div id="sh_o" onclick="ck(this)">信用良好</div></div>
		 	<div class="col-xs-4"><div id="sh_o" onclick="ck(this)">信用良好</div></div>
		 	<div class="col-xs-4"><div id="sh_t" onclick="ck(this)">信用良好</div></div>
		 	<div class="col-xs-4"><div id="sh_t" onclick="ck(this)">信用良好</div></div>
		 	<div class="col-xs-4"><div id="sh_t" onclick="ck(this)">信用良好</div></div>
		 </div>
	</div>

	<div class="empty">
	</div>

	<div class="container">
   		<div class="row">
		 	<div class="col-xs-12 txa"><textarea rows="6" placeholder="请输入您的评价"></textarea></div>
		</div>
		<div class="row duijie">
	   	<div class="col-xs-4"></div>
	   	<div class="col-xs-4 duijie_b" id="tj_btn" style="background-color: #F86941;">
	   		提&nbsp;&nbsp;&nbsp;&nbsp;交
	   	</div>
	   	<div class="col-xs-4"></div>
	   </div>
	</div>
</body>
<script type="text/javascript">
	$("#fanhui").click(function(){
		window.location.href="${jpath}/webpage/homepage";
	});
</script>
</html>