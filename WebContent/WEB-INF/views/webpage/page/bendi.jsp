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
	<title>本地政策</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/main.css">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/news_list.css">
</head>
<body>
	<div class="container" style="background-color: #F86941;color: #ffffff;">
	   <div class="row title">
	      <div class="col-xs-2">
	      	<a href="#" id="fanhui"><img src="${jpath}/static/imgs/fanhui_1.png"></a>
	      </div>
	      <div class="col-xs-8">本地政策</div>
	      <div class="col-xs-2">
	      </div>
	   </div>
	</div>

	<div class="container pic">
	   <div id="myCarousel" class="carousel slide">
    		<!-- 轮播（Carousel）指标 -->
		    <ol class="carousel-indicators">
		        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		        <li data-target="#myCarousel" data-slide-to="1"></li>
		        <li data-target="#myCarousel" data-slide-to="2"></li>
		        <li data-target="#myCarousel" data-slide-to="3"></li>
		        <li data-target="#myCarousel" data-slide-to="4"></li>
		    </ol>   
		    <!-- 轮播（Carousel）项目 -->
		    <div class="carousel-inner">
		        <div class="item active">
		            <a href="#"><img src="${jpath}/static/imgs/menu_1.png" alt="First slide"></a>
		            <div class="carousel-caption">世界最年轻亿万富翁：从哈弗白手起家</div>
		        </div>
		        <div class="item">
		             <a href="#"><img src="${jpath}/static/imgs/menu_2.png" alt="Second slide"></a>
		            <div class="carousel-caption">标题 2</div>
		        </div>
		        <div class="item">
		            <a href="#"><img src="${jpath}/static/imgs/menu_3.png" alt="Third slide"></a>
		           <div class="carousel-caption">标题 3</div>
		        </div>
		        <div class="item">
		             <a href="#"><img src="${jpath}/static/imgs/menu_2.png" alt="Second slide"></a>
		            <div class="carousel-caption">标题 4</div>
		        </div>
		        <div class="item">
		             <a href="#"><img src="${jpath}/static/imgs/menu_2.png" alt="Second slide"></a>
		            <div class="carousel-caption">标题 5</div>
		        </div>
		    </div>
		</div>
	</div>

	<div class="container">
		<a href="#">
	   	<div class="row bian">
	      <div class="col-xs-4 lft_img">
	      	<img src="${jpath}/static/imgs/929.png" style="height: 100%;">
	      </div>
	      <div class="col-xs-8 row_line">
	      	<div class="row hepin">
	      		<div class="col-xs-12">和平友爱自由民主</div>
	      	</div>
	      	<div class="row youai">
	      		<div class="col-xs-12">和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主</div>
	      	</div>
	      	<div class="row ziyou">
	      		<div class="col-xs-6 ziyou_l">2018-9-29 11:29:30</div>
	      		<div class="col-xs-6 ziyou_r">来源：财经新闻</div>
	      	</div>
	      </div>      
   		</div>
   		</a>
	</div>

	<div class="container">
		<a href="#">
	   	<div class="row bian">
	      <div class="col-xs-4 lft_img">
	      	<img src="${jpath}/static/imgs/929.png" style="height: 100%;">
	      </div>
	      <div class="col-xs-8 row_line">
	      	<div class="row hepin">
	      		<div class="col-xs-12">和平友爱自由民主</div>
	      	</div>
	      	<div class="row youai">
	      		<div class="col-xs-12">和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主</div>
	      	</div>
	      	<div class="row ziyou">
	      		<div class="col-xs-6 ziyou_l">2018-9-29 11:29:30</div>
	      		<div class="col-xs-6 ziyou_r">来源：财经新闻</div>
	      	</div>
	      </div>      
   		</div>
   		</a>
	</div>

	<div class="container">
		<a href="#">
	   	<div class="row bian">
	      <div class="col-xs-4 lft_img">
	      	<img src="${jpath}/static/imgs/929.png" style="height: 100%;">
	      </div>
	      <div class="col-xs-8 row_line">
	      	<div class="row hepin">
	      		<div class="col-xs-12">和平友爱自由民主</div>
	      	</div>
	      	<div class="row youai">
	      		<div class="col-xs-12">和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主</div>
	      	</div>
	      	<div class="row ziyou">
	      		<div class="col-xs-6 ziyou_l">2018-9-29 11:29:30</div>
	      		<div class="col-xs-6 ziyou_r">来源：财经新闻</div>
	      	</div>
	      </div>      
   		</div>
   		</a>
   	</div>

   	<div class="container">
		<a href="#">
	   	<div class="row bian">
	      <div class="col-xs-4 lft_img">
	      	<img src="${jpath}/static/imgs/929.png" style="height: 100%;">
	      </div>
	      <div class="col-xs-8 row_line">
	      	<div class="row hepin">
	      		<div class="col-xs-12">和平友爱自由民主</div>
	      	</div>
	      	<div class="row youai">
	      		<div class="col-xs-12">和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主</div>
	      	</div>
	      	<div class="row ziyou">
	      		<div class="col-xs-6 ziyou_l">2018-9-29 11:29:30</div>
	      		<div class="col-xs-6 ziyou_r">来源：财经新闻</div>
	      	</div>
	      </div>      
   		</div>
   		</a>
	</div>

	<div class="container">
		<a href="#">
	   	<div class="row bian">
	      <div class="col-xs-4 lft_img">
	      	<img src="${jpath}/static/imgs/929.png" style="height: 100%;">
	      </div>
	      <div class="col-xs-8 row_line">
	      	<div class="row hepin">
	      		<div class="col-xs-12">和平友爱自由民主</div>
	      	</div>
	      	<div class="row youai">
	      		<div class="col-xs-12">和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主</div>
	      	</div>
	      	<div class="row ziyou">
	      		<div class="col-xs-6 ziyou_l">2018-9-29 11:29:30</div>
	      		<div class="col-xs-6 ziyou_r">来源：财经新闻</div>
	      	</div>
	      </div>      
   		</div>
   		</a>
	</div>
</body>
<script type="text/javascript">
	$("#fanhui").click(function(){
		window.location.href="${jpath}/webpage/homepage";
	});
</script>
</html>