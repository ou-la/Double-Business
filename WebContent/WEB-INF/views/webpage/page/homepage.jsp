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
	<title>主页</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/homepage.css">
</head>
<body>
	<div class="container">
	   <div class="row title">
	      <div class="col-xs-2">
	      	<a href="#"><img src="${jpath}/static/imgs/menu.png"></a>
	      </div>
	      <div class="col-xs-8">首页</div>
	      <div class="col-xs-2">
	      	<a href="#" id="up"><img src="${jpath}/static/imgs/shizi.png"></a>
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
		    </div>
		</div>
	</div>
   <div class="five">
      <div>
      	 <a href="#" id="abouts"><img src="${jpath}/static/imgs/withus.png">
      	<p>关于我们</p></a>
      </div>
      <div>
      	 <a href="#" id="newszx"><img src="${jpath}/static/imgs/news.png">
      	<p>新闻资讯</p></a>
      </div>
      <div>
      	<a href="#" id="chanpin_list"><img src="${jpath}/static/imgs/tuijian.png">
      	<p>推荐产品</p></a>
      </div>
      <div>
      	<a href="#" id="rzxq"><img src="${jpath}/static/imgs/exchange.png">
      	<p>融资需求</p></a>
      </div>
      <div>
      	<a href="#" id="help_center"><img src="${jpath}/static/imgs/help.png">
      	<p>帮助中心</p></a>
      </div>
   </div>
	<div class="gempty"></div>
	<div class="container">
	   <div class="row tong">
	      <div class="col-xs-3">
	      	<img src="${jpath}/static/imgs/tongzhi.jpg">
	      </div>
	      <div class="col-xs-9">
		      <div style="margin-top: 1rem;">
		      	<c:forEach var="zx" items="${zxList}" varStatus="zxStruts">
		      	<div class="tongw">
			      	<a href="#">
			      	<span>最新</span>
			      	<!-- 1.关于印发《四川省钢铁行业化解过剩产能实现脱》 -->
			      	${zx.newstitle}
			      	</a>
		      	</div>
		      	</c:forEach>
		      	<!-- <div class="tongw">
			      	<a href="#">
			      	<span>围观</span>
			      	2.国务院关于印发 降低实体经济企业成本工作方案
			      	</a>
		      	</div> -->
		      </div>
	      </div>
	   </div>
	</div>
	<div class="gempty"></div>
	<div class="container">
		<div class="row">
	      <div class="col-xs-12 content">
	      	—— &nbsp;对接查询&nbsp; ——
	      </div>
    	</div>
  	</div>
  	<div style="height: 29rem;">
	<div class="text_a">
		<div class="container">
			<div class="row">
				<div class="col-xs-1" style="padding: 0;""></div>
				<div class="col-xs-11 text_a_a">企业融资对接</div>
				<div class="row duijie_l">
					<div class="col-xs-2"></div>
					<div class="col-xs-2">
						<img src="${jpath}/static/imgs/zhucezt.png" class="pp">
					</div>
					<div  class="col-xs-8">
						<a href="#" id="zhucezt">注册状态</a>
					</div>
					<div class="col-xs-2"></div>
					<div class="col-xs-2">
						<img src="${jpath}/static/imgs/xyjifen.png" class="pp">
					</div>
					<div  class="col-xs-8">
						<a href="#">信用积分</a>
					</div>
					<div class="col-xs-2"></div>
					<div class="col-xs-2">
						<img src="${jpath}/static/imgs/jrjigou.png" class="pp">
					</div>
					<div  class="col-xs-8">
						<a href="#" id="finance_enterprise">金融机构</a>
					</div>
					<div class="col-xs-2"></div>
					<div class="col-xs-2">
						<img src="${jpath}/static/imgs/rzcp.png" class="pp">
					</div>
					<div  class="col-xs-8">
						<a href="#" id="rzcp">融资产品</a>
					</div>
					<div class="col-xs-2"></div>
					<div class="col-xs-2">
						<img src="${jpath}/static/imgs/shzt.png" class="pp">
					</div>
					<div  class="col-xs-8">
						<a href="#" id="shenhe">审核状态</a>
					</div>
					<div class="col-xs-2"></div>
					<div class="col-xs-2">
						<img src="${jpath}/static/imgs/djjg.png" class="pp">
					</div>
					<div  class="col-xs-8">
						<a href="#" id="butt_result">对接结果</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="text_b">
		<div class="container">
			<div class="row">
				<div class="col-xs-1" style="padding: 0;""></div>
				<div class="col-xs-11 text_b_b">金融机构对接</div>
				<div class="row duijie_l">
					<div class="col-xs-2"></div>
					<div class="col-xs-2">
						<img src="${jpath}/static/imgs/zczt1.png" class="pp">
					</div>
					<div  class="col-xs-8">
						<a href="#" id="zhuceztT">注册状态</a>
					</div><div class="col-xs-2"></div>
					<div class="col-xs-2">
						<img src="${jpath}/static/imgs/djjf1.png" class="pp">
					</div>
					<div  class="col-xs-8">
						<a href="#">对接积分</a>
					</div><div class="col-xs-2"></div>
					<div class="col-xs-2">
						<img src="${jpath}/static/imgs/shzt.png" class="pp">
					</div>
					<div  class="col-xs-8">
						<a href="#">审核状态</a>
					</div><div class="col-xs-2"></div>
					<div class="col-xs-2">
						<img src="${jpath}/static/imgs/djqy.png" class="pp">
					</div>
					<div  class="col-xs-8">
						<a href="#" id="butt_enterprise">对接企业</a>
					</div><div class="col-xs-2"></div>
					<div class="col-xs-2">
						<img src="${jpath}/static/imgs/djjg.png" class="pp">
					</div>
					<div  class="col-xs-8">
						<a href="#" id="butt_result_bank">对接结果</a>
					</div><div class="col-xs-2"></div>
					<div class="col-xs-2"></div>
					<div  class="col-xs-8"></div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<div class="gempty"></div>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ul id="myTab" class="nav nav-tabs">
					<li class="active">
					    <a href="#home" data-toggle="tab">
					       最新政策 
					    </a>
					</li>
					<li><a href="#ios" data-toggle="tab">融资统计</a></li>
				</ul>
				<div id="myTabContent" class="tab-content">
					<div class="tab-pane fade in active" id="home">
					    <div class="col-xs-12 tab_pic">
					    	<div class="col-xs-4">
					    		<a href="#"><img src="${jpath}/static/imgs/guojia.png" id="guojia"><p>国家政策</p></a>
					    	</div>
					    	<div class="col-xs-4">
					    		<a href="#"><img src="${jpath}/static/imgs/bendi.png" id="bendi"><p>本地政策</p></a>
					    	</div>
					    	<div class="col-xs-4">
					    		<a href="#"><img src="${jpath}/static/imgs/hot.png" id="hot"><p>热门项目</p></a>
					    	</div>
					    	<div class="col-xs-4">
					    		<a href="#"><img src="${jpath}/static/imgs/jzhisi.png" id="jzhengce"><p>金融政策</p></a>
					    	</div>
					    	<div class="col-xs-4">
					    		<a href="#"><img src="${jpath}/static/imgs/jzhisi.png" id="jzhisi"><p>金融知识</p></a>
					    	</div>
					    </div>
					</div>
					<div class="tab-pane fade" id="ios">
					    <div class="col-xs-12 tab_pic">
					    	<div class="col-xs-4">
					    		<a href="#"><img src="${jpath}/static/imgs/guojia.png" id="guojiaT"><p>国家政策</p></a>
					    	</div>
					    	<div class="col-xs-4">
					    		<a href="#"><img src="${jpath}/static/imgs/bendi.png" id="bendiT"><p>本地政策</p></a>
					    	</div>
					    	<div class="col-xs-4">
					    		<a href="#"><img src="${jpath}/static/imgs/hot.png" id="hotT"><p>热门项目</p></a>
					    	</div>
					    	<div class="col-xs-4">
					    		<a href="#"><img src="${jpath}/static/imgs/jzhisi.png" id="jzhengceT"><p>金融政策</p></a>
					    	</div>
					    	<div class="col-xs-4">
					    		<a href="#"><img src="${jpath}/static/imgs/jzhisi.png" id="jzhisiT"><p>金融知识</p></a>
					    	</div>
					    </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="gempty"></div>
	<div class="container">
	   <div class="row bottom">
	      <div class="col-xs-6"><a href="#"  id="xiaqu"><img src="${jpath}/static/imgs/xiaqu.png"></a></div>
	      <div class="col-xs-6"><a href="#"  id="shuqiu"><img src="${jpath}/static/imgs/shuqiu.png"></a></div>
	      <div class="col-xs-6"><a href="#"  id="xinyong"><img src="${jpath}/static/imgs/xinyong.png"></a></div>
	      <div class="col-xs-6"><a href="#"  id="fuwu"><img src="${jpath}/static/imgs/fuwu.png"></a></div>
    	</div>
 	</div>
</body>
<%@include file="../js/js.jsp"%>
</html>