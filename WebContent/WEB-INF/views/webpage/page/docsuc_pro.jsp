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
	<title>对接成功项目</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/main.css">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/docsuc_pro.css">
</head>
<body>
	<div class="container" style="background-color: #F86941;color: #fff;">
   		<div class="row title">
		 	<div class="col-xs-2">
		  		<a href="#" id="fanhui"><img src="${jpath}/static/imgs/fanhui_1.png"></a>
		  	</div>
		  	<div class="col-xs-8">对接成功项目</div>
		  	<div class="col-xs-2">
		  	</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-xs-12 tt">
				<ul id="myTab" class="nav nav-tabs">
					<li class="active">
					    <a href="#xiangmu" data-toggle="tab" class="rr">
					       项目 
					    </a>
					</li>
					<li><a href="#chanpin" data-toggle="tab" class="rr">产品</a></li>
					<li><a href="#qiye" data-toggle="tab" class="rr">企业</a></li>
					<li><a href="#jigou" data-toggle="tab" class="rr">机构</a></li>
					<li><a href="#rongzi" data-toggle="tab" class="rr">融资</a></li>
				</ul>
			</div>
			<div id="myTabContent" class="tab-content col-xs-12">
				<div class="tab-pane fade in active" id="xiangmu">
				    <div class="wen wen_t">对接成功项目</div>
				    <div class="wen wen_b"><p>231</p>个</div>
				    <img src="${jpath}/static/imgs/card.png">

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/huaxi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">华西集团</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/zhongliang.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">中粮集团邮箱公司</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

				    <div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/wowo.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">wowo便利超市</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/hongqi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">红旗连锁</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc" style="margin-bottom: 1rem;">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/huaxi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">华西集团</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>
				</div>
				
				<div class="tab-pane fade in" id="chanpin">
				    <div class="wen wen_t">融资产品服务</div>
				    <div class="wen wen_b"><p>101</p>个</div>
				    <img src="${jpath}/static/imgs/card.png">

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/huaxi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">华西集团</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/zhongliang.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">中粮集团邮箱公司</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

				    <div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/wowo.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">wowo便利超市</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/hongqi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">红旗连锁</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc" style="margin-bottom: 1rem;">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/huaxi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">华西集团</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>
				</div>
				
				<div class="tab-pane fade in" id="qiye">
				    <div class="wen wen_t">注册企业会员</div>
				    <div class="wen wen_b"><p>999</p>人</div>
				    <img src="${jpath}/static/imgs/card.png">

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/huaxi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">华西集团</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/zhongliang.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">中粮集团邮箱公司</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

				    <div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/wowo.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">wowo便利超市</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/hongqi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">红旗连锁</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc" style="margin-bottom: 1rem;">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/huaxi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">华西集团</div>
						      	<div class="col-xs-5 hepin_r">45人</div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>
				</div>
				
				<div class="tab-pane fade in" id="jigou">
				    <div class="wen wen_t">注册金融机构</div>
				    <div class="wen wen_b"><p>320</p>个</div>
				    <img src="${jpath}/static/imgs/card.png">

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/huaxi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">华西集团</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/zhongliang.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">中粮集团邮箱公司</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

				    <div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/wowo.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">wowo便利超市</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/hongqi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">红旗连锁</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc" style="margin-bottom: 1rem;">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/huaxi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">华西集团</div>
						      	<div class="col-xs-5"></div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>
				</div>
				
				<div class="tab-pane fade in" id="rongzi">
				    <div class="wen wen_t">融资金额</div>
				    <div class="wen wen_b"><p>500,0000</p>元</div>
				    <img src="${jpath}/static/imgs/card.png">

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/huaxi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
						      	<div class="col-xs-7 hepin_l">华西集团</div>
						      	<div class="col-xs-5 hepin_r">500万元</div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/zhongliang.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">中粮集团邮箱公司</div>
						      	<div class="col-xs-5 hepin_r">500万元</div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

				    <div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/wowo.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">wowo便利超市</div>
						      	<div class="col-xs-5 hepin_r">500万元</div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/hongqi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">红旗连锁</div>
						      	<div class="col-xs-5 hepin_r">500万元</div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>

					<div class="container nnc" style="margin-bottom: 1rem;">
						<a href="#">
					   	<div class="row bian">
					      <div class="col-xs-4 lft_img">
					      	<img src="${jpath}/static/imgs/huaxi.png"">
					      </div>
					      <div class="col-xs-8">
					      	<div class="row hepin">
					      		<div class="col-xs-7 hepin_l">华西集团</div>
						      	<div class="col-xs-5 hepin_r">500万元</div>
					      	</div>
					      	<div class="row youai">
					      		和平友爱自由民主和平友爱自由民主和平友爱自由民主和平友爱自由民主
					      	</div>
					      	<div class="row ziyou">
					      		2018-9-29 11:29:30
					      	</div>
					      </div>      
				   		</div>
				   		</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$("#fanhui").click(function(){
		window.location.href="${jpath}/webpage/homepage";
	});
</script>
</html>