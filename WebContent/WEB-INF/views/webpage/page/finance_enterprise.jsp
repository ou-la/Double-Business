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
	<title>金融机构（企业）</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/main.css">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/duijie_qiye.css">
</head>
<body>
	<div class="container" style="background-color: #F86941;color: #ffffff;">
	   <div class="row title">
	      <div class="col-xs-2">
	      	<a href="#" id="fanhui"><img src="${jpath}/static/imgs/fanhui_1.png"></a>
	      </div>
	      <div class="col-xs-8">金融机构</div>
	      <div class="col-xs-2">
	      </div>
	   </div>
	</div>
	
	 <c:forEach var="cy" items="${cyList}" varStatus="cyStruts">
		<div class="container" style="margin-top: 2rem;">
			<a href="#">
			   	<div class="row bian" id="${cy.typeid}">
			    	<div class="col-xs-4 lft_img">
			      		<img src="${jpath}/static/imgs/wowo.png"">
			      	</div>
					<div class="col-xs-8 row_line">
						<div class="row hepin">
							${cy.companytype}
						</div><br>
						<div id="zxc" class="row hepin" <c:if test="${cy.isOk != 1}">style="display:none;"</c:if>>
							${cy.companyname}
						</div>
					</div>
		   		</div>
	   		</a>
		</div>
	</c:forEach>
	
</body>
<script type="text/javascript">
	$("#fanhui").click(function(){
		window.location.href="${jpath}/webpage/homepage";
	})
	$(".bian").click(function(){
		var typeID=$(this).attr("id");
		loadNews(typeID);
	});
	function loadNews(typeid){
		location.href="${jpath}/webpageJrJg/comtypeinfo?typeid="+typeid;
	};		
</script>
</html>