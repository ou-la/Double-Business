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
	<title>关于我们</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/aboutus.css">
</head>
<body style="min-width:320px;">
	<div class="container">
	   <div class="row title">
	      <div class="col-xs-2">
	      	<a href="#" id="fanhui"><img src="${jpath}/static/imgs/fanhui.png"></a>
	      </div>
	      <div class="col-xs-8">关于我们</div>
	      <div class="col-xs-2">
	      	<a href="#"><img src="${jpath}/static/imgs/plus.png"></a>
	      </div>
	   </div>
	</div>
	<div class="gempty"></div>
	<div class="container">
		<div class="row">
	    	<div class="col-xs-3 con">
	      		<ul id="myTab" class="nav nav-tabs">
	      			<li style="height: 4rem;width: 100%;"></li>
	      			<c:forEach var="au" items="${auList}" varStatus="auStruts">
				    	<li class=" 
				    		<c:if test="${lmStruts.index==0}">
				    			active
				    		</c:if>">
				        	<a href="javascript:void(0)" data-toggle="tab" id="${au.id}" class="aa">
				        		<img src="${jpath}/static/imgs/jianjie.png">
				            	${au.auname}
				        	</a>
				    	</li>
			    	</c:forEach>
				</ul>
	    	</div>
	    	<div class="col-xs-1 sanjiao">
	    		<div class="org" id="org_1" ><img src="${jpath}/static/imgs/org.png"></div>
	    	</div>
	      	<div class="col-xs-8 bblu">
	      		<div id="myTabContent" class="tab-content">
			   		<div class="tab-pane fade in active" id="newsPan">
			   			
			    	</div>
	      		</div>
	      		<div class="zzz">
	      			<div class="container">
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
	      		</div>   
	  		</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	function loadNews(id){
		$.post("${jpath}/webpageAboutus/findAjax",{pageNum:1,pageSize:5,id:id},function(data){
			var jsonArr = $.parseJSON(data);
			var json = jsonArr.obj.results;
			$("#newsPan").html("");
			var newsHtml = "";
			for(var i = 0;i<json.length;i++){
				newsHtml +='<div id="txt_cen"><a>'+json[i].auname+'</a></div>';
				newsHtml +='<a class="mi_a">'+json[i].autxt+'</a>';
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