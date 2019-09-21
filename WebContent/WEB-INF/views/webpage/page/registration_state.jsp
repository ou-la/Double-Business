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
	<title>注册状态（企业融资）</title>
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
	      <div class="col-xs-8">注册状态</div>
	      <div class="col-xs-2"></div>
	   </div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-xs-12 tt">
				<ul id="myTab" class="nav nav-tabs">
				<c:forEach var="z" items="${zList}" varStatus="zStruts">
					<li class="col-xs-6 
						<c:if test="${zStruts.index==0}">
							active
						</c:if>
					" id="trr">
					    <a href="javascript:void(0)" data-toggle="tab" class="aa" id="${z.typeid}">
					       ${z.zname}
					    </a>
					</li>
					<!-- <li class="col-xs-6" id="trr"><a href="#chanpin" data-toggle="tab" class="aa">我的</a></li> -->
				</c:forEach>
				<li class="col-xs-6" id="trr">
					    <a href="javascript:void(0)" data-toggle="tab" class="aa" id="mine">我的
					    </a>
					</li>
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
	function aSd(){
		$(".asd").click(function(){
			var proID=$(this).attr("id");
			loadNewsT(proID);
		});
	};
	function loadNews(zid){
		$.post("${jpath}/webpageCpTj/findAjax",{pageNum:1,pageSize:10,zid:zid},function(data){
			var jsonArr = $.parseJSON(data);
			var json = jsonArr.obj.results;
			$("#newsPan").html("");
			var newsHtml = "";
			for(var i = 0;i<json.length;i++){
				newsHtml +='<div class="container nnc">';
				newsHtml +='<a href="javascript:void(0);" id='+json[i].proid+' name="proid" class="asd"  onclick="aSd()">';
				newsHtml +='<div class="row bian">';
				newsHtml +='<div class="col-xs-4 lft_img"><img src="${jpath}/static/imgs/huaxi.png""></div>';
				newsHtml +='<div class="col-xs-8">';
				newsHtml +='<div class="row hepin"><div class="col-xs-7 hepin_l" style="width:100%;">'+json[i].protitle+'</div><div class="col-xs-5"></div></div>';
				newsHtml +='<div class="row youai">'+json[i].rzmoney+'</div>';
				newsHtml +='<div class="row ziyou">'+json[i].company+'</div>';
				newsHtml +='</div>';
				newsHtml +='</div>';
				newsHtml +='</a>';
				newsHtml +='</div>';
			}
			$("#newsPan").append(newsHtml);
		});
	};
	function loadNewsT(proid){
		location.href="${jpath}/webpageCpXq/news_2?proid="+proid;
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
	/* var o=document.getElementById("myTabContent");//获取父节点
	var a=document.getElementById("newsPan");//获取需要删除的子节点
	var b=document.getElementById("mine");//获取触发事件的节点
	b.onclick=function(){
		o.removeChild(a)//从父节点o上面移除子节点a
	} */
	
	$("#mine").click(function(){
		var uname = "${stUser. uname}";
		$.post("${jpath}/webpage/findMine",{uname:uname},function(data){
			var jsonArr = $.parseJSON(data);
			var json = jsonArr.obj;
			$("#newsPan").html("");
			var newsHtml = "";
			newsHtml +='<div class="container nnc">';
			newsHtml +='<a href="#">';
			newsHtml +='<div class="row bian">';
			newsHtml +='<div class="col-xs-2"></div>';
			newsHtml +='<div class="col-xs-10">';
			newsHtml +='<div class="row hepin"><br/><div class="col-xs-4 hepin_l">用户姓名:</div><div class="col-xs-8 hepin_l">'+json[0].uname+'</div><div class="col-xs-5"></div></div><br />';
			newsHtml +='<div class="row hepin"><div class="col-xs-4 hepin_l">金融机构：</div><div class="col-xs-8 hepin_l">'+json[0].comname+'</div><div class="col-xs-5"></div></div><br />';
			newsHtml +='<div class="row hepin"><div class="col-xs-4 hepin_l">用户积分：</div><div class="col-xs-8 hepin_l">'+json[0].ujifen+'</div><div class="col-xs-5"></div></div><br />';
			newsHtml +='<div class="row hepin"><div class="col-xs-4 hepin_l">金融项目：</div>'
			for(var i = 0;i<json.length;i++){
				newsHtml +='<div class="col-xs-7 hepin_l">'+json[i].pro+'</div><div class="col-xs-4"></div>';
			}
			newsHtml +='</div><br />';
			newsHtml +='<div class="row hepin"><div class="col-xs-4 hepin_l">我的电话：</div><div class="col-xs-8 hepin_l">'+json[0].upjone+'</div><div class="col-xs-5"></div></div>';
			newsHtml +='</div>';
			newsHtml +='</div>';
			newsHtml +='</a>';
			newsHtml +='</div>';
			$("#newsPan").append(newsHtml);
		});
	});
	
</script>
</html>