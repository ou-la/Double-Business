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
	<title>帮助中心</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/main.css">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/help_center.css">
</head>
<body>
	<div class="container" style="background-color: #F86941;color: #fff;">
   		<div class="row title">
		 	<div class="col-xs-2">
		  		<a href="#" id="fanhui"><img src="${jpath}/static/imgs/fanhui_1.png"></a>
		  	</div>
		  	<div class="col-xs-8">帮助中心</div>
		  	<div class="col-xs-2">
		  		<a href="#"><img src="${jpath}/static/imgs/mulu.png"></a>
		  	</div>
		</div>
	</div>

	<div class="container help_o" style="background-image: url(${jpath}/static/imgs/fly.jpg);height: 30rem;">
	    <div class="row help_t">
	      	<div class="col-xs-12 help_t_o">
	      		<p style="background-color: #E7CE97;">财经</p>
	      	</div>
	      	<div class="col-xs-12 help_t_t">
	      		厉以宁：名企就怕算老账 后任官员不认前人承诺
	      	</div>
	      	<div class="col-xs-6 help_t_w help_t_w_l">
	      		来源：财经新闻
	      	</div>
	      	<div class="col-xs-6 help_t_w help_t_w_r">
	      		2017-12-21 12：23：01
	      	</div>
	    </div>
	</div>

	<div class="container help_o" style="background-image: url(${jpath}/static/imgs/yulin.jpg);height: 40rem;">
	    <div class="row help_t">
	      	<div class="col-xs-12 help_t_o">
	      		<p style="background-color: #41ACD5;">旅行</p>
	      	</div>
	      	<div class="col-xs-12 help_t_t">
	      		周延礼：“保险+科技”是保险业发展未来
	      	</div>
			<div class="col-xs-12 help_t_f">
	      		中新网北京12月21日电（记者 王恩博）中国保监会原副主席周延礼21日在北京出席中国新闻社主办得国事论坛2017年会时表示，“保险+科技”是保险业发展得未来，将推进行业转型升级。
	      	</div>
	      	<div class="col-xs-6 help_t_w help_t_w_l">
	      		来源：中国证券报
	      	</div>
	      	<div class="col-xs-6 help_t_w help_t_w_r">
	      		2017-12-21 12：23：01
	      	</div>
	    </div>
	</div>

	<div class="container help_o" style="background-image: url(${jpath}/static/imgs/lianhome.png);height: 30rem;">
	    <div class="row help_t">
	      	<div class="col-xs-12 help_t_o">
	      		<p style="background-color: #41ACD5;">世界</p>
	      	</div>
	      	<div class="col-xs-12 help_t_t">
	      		链家董事长左晖：中国人不是最爱买房子的那群人
	      	</div>
	      	<div class="col-xs-6 help_t_w help_t_w_l">
	      		来源：中国证券报
	      	</div>
	      	<div class="col-xs-6 help_t_w help_t_w_r">
	      		2017-12-21 12：23：01
	      	</div>
	    </div>
	</div>

	<div class="container help_o" style="background-image: url(${jpath}/static/imgs/lijiacheng.png);height: 40rem;">
	    <div class="row help_t">
	      	<div class="col-xs-12 help_t_o">
	      		<p style="background-color: #EF2C1E;">香港</p>
	      	</div>
	      	<div class="col-xs-12 help_t_t">
	      		李嘉诚卖楼赚钱更快 今年下半年狂赚687亿港元
	      	</div>
			<div class="col-xs-12 help_t_f">
	      		根据12月20日香港联交所披露的公告显示，李嘉诚麾下长江实业集团有限公司的附属公司置富产业信托，正以20亿港元（2.56亿美元）出售香港一座购物中心。
	      	</div>
	      	<div class="col-xs-6 help_t_w help_t_w_l">
	      		来源：和讯网
	      	</div>
	      	<div class="col-xs-6 help_t_w help_t_w_r">
	      		2017-12-21 12：23：01
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