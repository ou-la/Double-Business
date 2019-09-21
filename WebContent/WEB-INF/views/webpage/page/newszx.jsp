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
	<title>新闻资讯</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/main.css">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/jinrong.css">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/registration_state.css">
</head>
<body>
	<div class="container" style="background-color: #F86941;color: #fff;">
	   <div class="row title">
	      <div class="col-xs-2">
	      	<a href="#" id="fanhui"><img src="${jpath}/static/imgs/fanhui_1.png"></a>
	      </div>
	      <div class="col-xs-8">新闻资讯</div>
	      <div class="col-xs-2"></div>
	   </div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-xs-12 tt">
				<ul id="myTab" class="nav nav-tabs">
					<c:forEach var="lm" items="${lmList}" varStatus="lmStruts">
						<li class="col-xs-4 
						    <c:if test="${lmStruts.index==0}">
						    	active
						    </c:if>
						" id="trr">
						    <a  href="javascript:void(0)" id="${lm.id}" data-toggle="tab"  class="aa">
						       <p>${lm.lmname}</p>
						    </a>
						</li>
					</c:forEach>
					
				</ul>
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
			</div>
			
			<div id="myTabContent" class="tab-content col-xs-12">
				<div class="tab-pane fade in active" id="newsPan">
				
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	function loadNews(lmid){
		$.post("${jpath}/webpage/findAjax",{pageNum:1,pageSize:5,lmid:lmid},function(data){
			var jsonArr = $.parseJSON(data);
			var json = jsonArr.obj.results;
			$("#newsPan").html("");
			var newsHtml = "";
			for(var i = 0;i<json.length;i++){
				newsHtml +='<div class="container nnc">';
				newsHtml +='<a href="#">';
				newsHtml +='<div class="row bian">';
				newsHtml +='<div class="col-xs-4 lft_img"><img src="${jpath}/static/imgs/huaxi.png""></div>';
				newsHtml +='<div class="col-xs-8">';
				newsHtml +='<div class="row hepin"><div class="col-xs-7 hepin_l">'+json[i].newstitle+'</div><div class="col-xs-5"></div></div>';
				newsHtml +='<div class="row youai">'+json[i].newstext+'</div>';
				newsHtml +='<div class="row ziyou">'+json[i].newstime+'</div>';
				newsHtml +='</div>';
				newsHtml +='</div>';
				newsHtml +='</a>';
				newsHtml +='</div>';
			}
			$("#newsPan").append(newsHtml);
		});
	};
	$(function(){
		var activeID=$(".active").eq(0).attr("id");
		$("#newspan").html("");
		loadNews(1,activeID);
	});
	$(".aa").click(function(){
		var activeiID=$(this).attr("id");
		$("#newspan").html("");
		loadNews(activeiID);
	});
	$("#fanhui").click(function(){
		window.location.href="${jpath}/webpage/homepage";
	});
</script>
</html>