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
	<title>详情</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/main.css">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/news.css">
</head>
<body>
	<div class="container" style="background-color: #fff;color: #272822;">
	   <div class="row title">
	      <div class="col-xs-2">
	      	<a href="#"><img src="${jpath}/static/imgs/fanhui.png"></a>
	      </div>
	      <div class="col-xs-8">详情</div>
	      <div class="col-xs-2">
	      	<a href=""><img src="${jpath}/static/imgs/shuqian_b.png"></a>
	      </div>
	   </div>
	</div>

	<div class="container">
	   <div class="row lins_2">
	   </div>
	</div>

	<div class="container">
	   <div class="row row_0">
			<div class="col-xs-4 row_1"><p>国际新闻</p></div>
			<div class="col-xs-8 row_2"><p>2017/12/20 21:20</p></div>
	   </div>
	   <div class="row row_3">
		   <div class="col-xs-12">
		   	中央经济工作会议划重点：明年经济有六大看点
		   </div>
	   </div>
	   <div class="row row_4">
		   <div class="col-xs-12">
		   	<p>看点一：“稳中求进”仍是“主基调”还需“长期坚持”</p>
		   	<p>富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。</p>
		   	<p>民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。</p>
		   	<p>民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。</p>
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
		        </div>
		        <div class="item">
		             <a href="#"><img src="${jpath}/static/imgs/menu_2.png" alt="Second slide"></a>
		        </div>
		        <div class="item">
		            <a href="#"><img src="${jpath}/static/imgs/menu_3.png" alt="Third slide"></a>
		        </div>
		        <div class="item">
		             <a href="#"><img src="${jpath}/static/imgs/menu_2.png" alt="Second slide"></a>
		        </div>
		        <div class="item">
		             <a href="#"><img src="${jpath}/static/imgs/menu_2.png" alt="Second slide"></a>
		        </div>
		    </div>
		</div>
	</div>

	<div class="container">
	   <div class="row row_4">
		   <div class="col-xs-12">
		   	<p>看点二：高质量发展是根本发展要求</p>
		   	<p>富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。</p>
		   	<p>富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。</p>
		   	<p>富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。</p>
		   	<p>富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善。</p>
		   </div>
		   <div class="col-xs-12 row_5">文/陈凯茵</div>
	   </div>
	</div>

	<div class="container" style="margin-top: 1rem;">
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
</body>
</html>