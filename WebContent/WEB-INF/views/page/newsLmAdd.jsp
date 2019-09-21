<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="../common/head.jsp"%>
<div class="page-header">
	<h1>
		控制台
		<small>
			<i class="icon-double-angle-right"></i>
			添加用户
		</small>
	</h1>
</div><!-- /.page-header -->
<div class="row">
	<div class="col-xs-12">
		<!-- PAGE CONTENT BEGINS -->
		<form class="form-horizontal" id="stuForm" role="form">
			<div class="form-group" style=" display: none;">
			<!-- <div class="form-group"> -->
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> ID </label>

				<div class="col-sm-9">
					<input type="hidden" name="lmid" id="lmid" value="${NewsLm.lmid}" placeholder="lmid" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 栏目名称 </label>

				<div class="col-sm-9">
					<input type="text" name="lmname" id="lmname" value="${NewsLm.lmname}" placeholder="lmname" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group" style=" display: none;">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 创建时间 </label>

				<div class="col-sm-9">
					<input type="hidden" name="lmtime" id="lmtime" value="${NewsLm.lmtime}" placeholder="lmtime" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-4"> 栏目封面 </label>

				<div class="col-sm-9">
					<input type="text" name="lmimg" id="lmimg" value="${NewsLm.lmimg}" placeholder="lmimg" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-4"> url链接 </label>

				<div class="col-sm-9">
					<input type="text" name="urllink" id="urllink" value="${NewsLm.urllink}" placeholder="urllink" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>

			<div class="clearfix form-actions">
				<div class="col-md-offset-3 col-md-9">
					<button class="btn btn-info" id="subBtn" type="button">
						<i class="icon-ok bigger-110"></i>
						保存
					</button>

					<button class="btn" type="reset" style="margin-left:9rem;">
						<i class="icon-undo bigger-110"></i>
						还原
					</button>
				</div>
			</div>
			
			<div class="hr hr-24"></div>

			<div class="space-24"></div>
			
		</form>
	</div><!-- /.col -->
</div><!-- /.row -->
<%@include file="../common/js.jsp"%>

<script type="text/javascript">
$(function(){
	$("#stuForm").loadCombox();

	$("#subBtn").click(function(){
		var jsonFroms = getForm("#stuForm");
		$.post("${jpath}/usl/addNewsLms",jsonFroms,function(data){
			console.log(data);
			var json = $.parseJSON(data);
			alert(json.resMsg);
		});
	});
});
</script>

<%@include file="../common/footer.jsp"%>
