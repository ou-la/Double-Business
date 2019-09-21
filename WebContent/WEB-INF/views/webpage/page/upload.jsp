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
	<title>产品上传</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
   	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<script src="${jpath}/js/plugins.js"></script>
   	<meta name="viewport" content="initial-scale=1,maximum-scale=1, minimum-scale=1">
   	<link rel="stylesheet" type="text/css" href="${jpath}/static/css/shangchuan.css">
	<script type="text/javascript">
 	 function del(_this) {
        var _this_img = $(_this);
        _this_img.parent().remove();
    }
    $(function() {
        var file = $("#xFile");
        $("#xx").click(function() {
            file.click();
        });
        file[0].addEventListener('change', function() {
            var file = this.files[0];
            var reader = new FileReader();
            reader.readAsDataURL(file);
            reader.onload = function(e) {
                var newUrl = this.result;
                var img_str = '<div class="mainPic">';
                img_str += '<img height="100px" src="' + newUrl + '" />';
                img_str += '<img onclick="del(this)" class="del_btn" src="imgs/del2.png" />';
                img_str += '</div>';
                $("#xx").after(img_str);
            };
        });
    });
	</script>
</head>
<body style="background-image: url(${jpath}/static/imgs/bluebg.png);">
	<div class="container">
	   	<div class="row title">
	     	<div class="col-xs-2">
	     		<a href="#" id="fanhui"><img src="${jpath}/static/imgs/fanhui.png"></a>	
	     	</div>
	     	<div class="col-xs-8">产品上传</div>
	     	<div class="col-xs-2"></div>
	   	</div>
	   	<span style="clear: both;"></span>
	</div>
	<div class="container">
		<div class="board">
			<form id="stuForm" role="form">
				<div class="container text" style="width: 90%;">
					<div class="form-group" style="display:none;">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> ID </label>
		
						<div class="col-sm-9">
							<input type="hidden" name="proid" id="proid" value="${Cp.proid}" placeholder="proid" class="col-xs-10 col-sm-5" />
						</div>
					</div>
			   		<div class="row text-a">
				     	<div class="col-xs-12">产品简介</div>
			  		</div>
			   		<div class="row text-b">
				     	<div class="col-xs-4">产品名称：</div>
						<div class="col-xs-8">
							<input  type="text" name="protitle" id="protitle" value="${Cp.protitle}" placeholder="产品名称"  />
				     	</div>
			  		</div>
			   		<div class="row text-b">
				     	<div class="col-xs-4">产品金额：</div>
						<div class="col-xs-8">
							<input type="text" name="" placeholder="请输入产品金额" />
				     	</div>
			  		</div>
			   		<div class="row text-b">
				     	<div class="col-xs-4">办理条件：</div>
				     	<div class="col-xs-8">
				     		<textarea placeholder="请输入办理条件"></textarea>
				     	</div>
			  		</div>
			   		<div class="row text-b">
				     	<div class="col-xs-4">办理流程：</div>
				     	<div class="col-xs-8">
				     		<textarea placeholder="请输入办理流程"></textarea>
				     	</div>
			  		</div>
			   		<div class="row text-b">
				     	<div class="col-xs-4">办理简介：</div>
				     	<div class="col-xs-8">
				     		<textarea placeholder="请输入办理简介"></textarea>
				     	</div>
			  		</div>
			  	</div>
		
			  	<div class="container text" style="width: 90%;margin-top: 0;">
			   		<div class="row text-a">
				     	<div class="col-xs-12">关于我们</div>
			  		</div>
			   		<div class="row text-b">
				     	<div class="col-xs-4">公司规模：</div>
						<div class="col-xs-8">
							<input type="text" name="" placeholder="请输入公司规模" />
				     	</div>
			  		</div>
			   		<div class="row text-b">
				     	<div class="col-xs-4">金融机构：</div>
						<div class="col-xs-8">
							<input type="text" name="" placeholder="请输入金融机构" />
				     	</div>
			  		</div>
			   		<div class="row text-b">
				     	<div class="col-xs-4">融资周期：</div>
						<div class="col-xs-8">
							<input type="text" name="" placeholder="请输入融资周期" />
				     	</div>
			  		</div>
			   		<div class="row text-b">
				     	<div class="col-xs-4">联系部门：</div>
						<div class="col-xs-8">
							<input type="text" name="" placeholder="请输入联系部门" />
				     	</div>
			  		</div>
			   		<div class="row text-b">
				     	<div class="col-xs-4">联系电话：</div>
						<div class="col-xs-8">
							<input type="text" name="callme" id="callme" value="${Cp.callme}" placeholder="请输入联系电话" />
				     	</div>
			  		</div>
			   		<div class="row text-b">
				     	<div class="col-xs-4">发布时间：</div>
						<div class="col-xs-8">
							<input type="text" name="" placeholder="请输入发布时间" />
				     	</div>
			  		</div>
			  	</div>
			  	<div class="container text" style="width: 90%;margin-top: 0;">
			   		<div class="row text-a">
				     	<div class="col-xs-12">图片上传</div>
			  		</div>
			   		<div class="row text-b" style="width: 90%;">
				     	<div class="col-xs-12">
				     		<div class="row" style="margin: 0;">
					     		<div class="col-xs-4">上传图片</div>
						     		<div class="col-xs-8">
					     				<div id="xx">
					     					<img src="${jpath}/static/imgs/tjtp.png">
					     				</div>
						     		</div>
					     			<input id="xFile" accept="image/*" style="display:none" type="file"  />
					     		</div>
				     		</div>
				     	</div>
			  		</div>
			  		<div class="container text" style="width: 90%;margin-top: 0;">
				   		<div class="row text-b">
					     	<div class="col-xs-5 dd">
								<button type="button" id="btn" style="background-color: #225892;" />
									保存预览
								</button>
					     	</div>
					     	<div class="col-xs-2 dd">
					     	</div>
					     	<div class="col-xs-5 dd">
								<button type="button" id="subBtn" style="background-color: #F86941"/>
									发布
								</button>
					     	</div>
				  		</div>
			  		</div>
			  	</div>
	  		</form>
	  	</div>
  	</div>
</div>
<script type="text/javascript">
	$(function(){
		$("#subBtn").click(function(){
			var jsonFroms = getForm("#stuForm");
			$.post("${jpath}/webpage/uploadAjax",jsonFroms,function(data){
				var json = $.parseJSON(data);
				location.href="${jpath}/indexpage";
			});
		});
	});
	$("#fanhui").click(function(){
		window.location.href="${jpath}/webpage/homepage";
	});
</script>
</body>

</html>