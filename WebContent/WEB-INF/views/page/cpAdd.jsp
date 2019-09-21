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
			<div class="form-group" style="display:none;">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> ID </label>

				<div class="col-sm-9">
					<input type="hidden" name="proid" id="proid" value="${Cp.proid}" placeholder="proid" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 标题 </label>

				<div class="col-sm-9">
					<input type="text" name="protitle" id="protitle" value="${Cp.protitle}" placeholder="protitle" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 时限 </label>

				<div class="col-sm-9">
					<input type="text" name="timelimit" id="timelimit" value="${Cp.timelimit}" placeholder="timelimit" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 简介 </label>

				<div class="col-sm-9">
					<input type="text" name="proinfo" id="proinfo" value="${Cp.proinfo}" placeholder="proinfo" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 产品分类 </label>

				<div class="col-sm-9">
					<input type="hidden" on_type="comboxSelect"
					name="protype"
					id="protype" 
					value="10" 
					loadUrl="${jpath}/cp/select" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-4"> 流程 </label>

				<div class="col-sm-9">
					<input type="text" name="prolc" id="prolc" value="${Cp.prolc}" placeholder="prolc" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 条件 </label>

				<div class="col-sm-9">
					<input type="text" name="protj" id="protj" value="${Cp.protj}" placeholder="protj" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 联系我们 </label>

				<div class="col-sm-9">
					<input type="text" name="callme" id="callme" value="${Cp.callme}" placeholder="callmes" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 图片 </label>
				
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
		alert($("#proid").val());
		var jsonFroms = getForm("#stuForm");
		$.post("${jpath}/cp/addCp",jsonFroms,function(data){
			console.log(data);
			var json = $.parseJSON(data);
			alert(json.resMsg);
		});
	});
});
</script>
<%@include file="../common/footer.jsp"%>
