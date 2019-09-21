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
	<title>融资产品（企业）</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/main.css">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/chanpin_list.css">
   	<script type="text/javascript">
   		$(function(){
   			$(".org>.col-xs-12").click(function(){
   				var _this = $(this);
   				$(".org").find(".col-xs-12").each(function(index,e){
   					$(e).removeClass("chou_jue");
   				});
   				_this.addClass("chou_jue");
   			});
   		})
   	</script>
</head>
<body>
	<div class="container" style="background-color: #F86941;color: #fff;">
	   <div class="row title">
	      <div class="col-xs-2">
	      	<a href="#" id="fanhui"><img src="${jpath}/static/imgs/fanhui_1.png"></a>
	      </div>
	      <div class="col-xs-8">融资产品</div>
	      <div class="col-xs-2">
	      	<a href="#"><img src="${jpath}/static/imgs/shizi.png"></a>
	      </div>
	   </div>
	</div>

	<div class="container aaaayou">
	   <div class="row up">
			<div class="col-xs-3">
				<div class="row org" >
				<c:forEach var="cp" items="${cpList}" varStatus="cpStruts">
					<div class="col-xs-12 aa 
						<c:if test="${cpStruts.index==0}">
						chou_jue
						</c:if>" id="${cp.typeid}">
						${cp.protype}
					</div>
				</c:forEach>
				</div>
			</div>
			<div class="col-xs-9">
				<div class="row chanpin_f  active" id="newsPan">
					
				</div>
			</div>
	   </div>
	</div>
</body>
<script type="text/javascript">
	function loadNews(typeid){
		$.post("${jpath}/webpageCpTj/findAjax",{pageNum:1,pageSize:10,typeid:typeid},function(data){
			var jsonArr = $.parseJSON(data);
			var json = jsonArr.obj.results;
			$("#newsPan").html("");
			var newsHtml = "";
			for(var i = 0;i<json.length;i++){
				if(json[i].prostate == "T"){
					newsHtml +='<div class="col-xs-6 chanpin_f_f chanpin_f_t">';
					newsHtml +='<div class="c_l">'+json[i].rzmoney+'</div>';
					newsHtml +='<div class="c_r">'+json[i].protitle+'</div>';
					newsHtml +='</div>';
					newsHtml +='<div class="col-xs-6 chanpin_f_f chanpin_f_o">';
					newsHtml +='<div class="font_col">公司规模：'+json[i].companysize+'</div>';
					newsHtml +='<div class="font_col">融资周期：'+json[i].rzcycle+'</div>';
					newsHtml +='<div class="font_col">联系电话：'+json[i].callme+'</div>';
					newsHtml +='</div>';
					newsHtml +='<div class="col-xs-12 font_col font_col_b">贷款倒计时：'+json[i].timelimit+'</div>';
				}
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