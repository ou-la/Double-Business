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
	<title>诉求建议</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  	
	<script src="${jpath}/js/plugins.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/main.css">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/grade.css">
		<script type="text/javascript" src="${jpath}/static/js/myScript.js"></script>
</head>
<body>
	<div class="container" style="background-color: #F86941;color: #fff;">
   		<div class="row title">
		 	<div class="col-xs-2">
		  		<a href="#" id="fanhui"><img src="${jpath}/static/imgs/fanhui_1.png"></a>
		  	</div>
		  	<div class="col-xs-8">诉求建议</div>
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
	
	<div  class="container">
		<div class="row bb" id="yOn">
			<img src="${jpath}/static/imgs/vgood_gry.png" class="col-xs-4">
			<img src="${jpath}/static/imgs/good_gry.png" class="col-xs-4">
			<img src="${jpath}/static/imgs/notgood_gry.png" class="col-xs-4">
			<div class="col-xs-4 dd">非常满意</div>
			<div class="col-xs-4 dd">满意</div>
			<div class="col-xs-4 dd">不满意</div>
		</div>
	</div>

	<div class="empty">
	</div>

	<div class="container">
   		<div class="row sh" id="zxc">
		 	<div class="col-xs-4"><div id="sh_o" onclick="ck(this)">信用很好</div></div>
		 	<div class="col-xs-4"><div id="sh_o" onclick="ck(this)">信用好</div></div>
		 	<div class="col-xs-4"><div id="sh_o" onclick="ck(this)">信用良好</div></div>
		 	<div class="col-xs-4"><div id="sh_t" onclick="ck(this)">信用一般</div></div>
		 	<div class="col-xs-4"><div id="sh_t" onclick="ck(this)">信用不好</div></div>
		 	<div class="col-xs-4"><div id="sh_t" onclick="ck(this)">信用坏</div></div>
		 </div>
	</div>

	<div class="empty">
	</div>

	<div class="container">
   		<div class="row">
		 	<div class="col-xs-12 txa"><textarea rows="6" placeholder="请输入您的评价"  id="reviewww"></textarea></div>
			
		</div>
		<div class="row duijie">
	   	<div class="col-xs-4"></div>
	   	<div class="col-xs-4 duijie_b" id="subBtn" type="button">
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
	$("#subBtn").click(function(){
		var aa =$("#reviewww").val();
		loadNews(aa);
	});
	function loadNews(aa){
		$("#subBtn").click(function(){
			$.post("${jpath}/webpageTsJy/addTsJy",{yOn:"满意",xinyong:"良好",tstext:aa},function(data){
				console.log("++++++++++++++++++");
				console.log(aa);
				var json = $.parseJSON(data);
			});
		});
	}
	
</script>
</html>