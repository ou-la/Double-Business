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
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> ID </label>

				<div class="col-sm-9">
					<input type="text" name="uid" id="uid" value="${User.uid}" placeholder="uid" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 用户姓名 </label>

				<div class="col-sm-9">
					<input type="text" name="uname" id="uname" value="${User.uname}" placeholder="uname" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 手机号码 </label>

				<div class="col-sm-9">
					<input type="text" name="upjone" id="upjone" value="${User.upjone}" placeholder="upjone" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 用户分类 </label>

				<div class="col-sm-9">
					<input type="hidden" on_type="comboxSelect"
					name="utypeid"
					id="utypeid" 
					value="23" 
					loadUrl="${jpath}/us/select" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-4"> 企业名称 </label>

				<div class="col-sm-9">
					<input type="text" name="qiyeid" id="qiyeid" value="${User.qiyeid}" placeholder="qiyeid" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 用户资质附件 </label>

				<div class="col-sm-9">
					<input type="text" name="ufj" id="ufj" value="${User.ufj}" placeholder="ufj" class="col-xs-10 col-sm-5" />
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
		$.post("${jpath}/us/updateUsers",jsonFroms,function(data){
			console.log(data);
			var json = $.parseJSON(data);
			alert(json.resMsg);
		});
	});
});
</script>

<%@include file="../common/footer.jsp"%>
