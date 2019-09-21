<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="../common/head.jsp"%>
<link rel="stylesheet" href="${jpath}/static/plugins/webupload/css/webuploader.css" />
<link rel="stylesheet" href="${jpath}/static/plugins/webupload/style.css" />
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
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> ID </label>

				<div class="col-sm-9">
					<input type="hidden" name="uid" id="uid" value="${User.uid}" placeholder="uid" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
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
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 用户资质附件 </label>
				
				<div class="col-sm-5">
					<div id="wrapper" style="margin-left:-1px;">
				        <div id="container">
				            <!--头部，相册选择和格式选择-->
							<input type="hidden" name="" id="" value="" placeholder="" class="col-xs-10 col-sm-5" />
				            <div id="uploader">
				                <div class="queueList">
				                    <div id="dndArea" class="placeholder">
				                        <div id="filePicker"></div>
				                        <p>或将照片拖到这里，单次最多可选300张</p>
				                    </div>
				                </div>
				                <div class="statusBar" style="display:none;">
				                    <div class="progress">
				                        <span class="text">0%</span>
				                        <span class="percentage"></span>
				                    </div><div class="info"></div>
				                    <div class="btns">
				                        <div id="filePicker2"></div><div class="uploadBtn">开始上传</div>
				                    </div>
				                </div>
				            </div>
				        </div>
				    </div>
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
<script type="text/javascript" src="${jpath}/static/plugins/webupload/dist/webuploader.js"></script>
<%-- <script type="text/javascript" src="${jpath}/static/plugins/webupload/upload.js"></script> --%>
<script type="text/javascript">
$(function(){
	$("#stuForm").loadCombox();
	
	$("#subBtn").click(function(){
		var jsonFroms = getForm("#stuForm");
		$.post("${jpath}/us/addUsers",jsonFroms,function(data){
			console.log(data);
			var json = $.parseJSON(data);
			alert(json.resMsg);
		});
	});
});
</script>
<%@include file="../common/footer.jsp"%>
