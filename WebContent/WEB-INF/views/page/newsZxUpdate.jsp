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
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> ID </label>

				<div class="col-sm-9">
					<input type="text" name="newsid" id="newsid" value="${NewsZx.newsid}" placeholder="newsid" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 新闻标题 </label>

				<div class="col-sm-9">
					<input type="text" name="newstitle" id="newstitle" value="${NewsZx.newstitle}" placeholder="newstitle" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			
			<%-- <div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 新闻栏目编号 </label>

				<div class="col-sm-9">
					<input type="text" name="lmid" id="lmid" value="${NewsZx.lmid}" placeholder="newstext" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div> --%>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-4"> 发布人 </label>

				<div class="col-sm-9">
					<input type="text" name="username" id="username" value="${NewsZx.username}" placeholder="username" class="col-xs-10 col-sm-5" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 新闻栏目编号 </label>

				<div class="col-sm-9">
					<input type="hidden" on_type="comboxSelect"
					name="newsid"
					id="newsid" 
					value="0" 
					loadUrl="${jpath}/nsz/select" />
				</div>
			</div>

			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 新闻内容 </label>

				<div class="col-sm-9">
					<textarea type="text"  name="newstext" id="newstext"  value="${NewsZx.newstext}" placeholder="newstext" class="col-xs-10 col-sm-5" /></textarea>
					<%-- <input type="text" name="newstext" id="newstext" value="${NewsZx.newstext}" placeholder="newstext" class="col-xs-10 col-sm-5" /> --%>
				</div>
			</div>

			<div class="space-4"></div>
					
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 附件 </label>
						<div class="col-sm-9">
							<table id="sample-table-1" class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th style="text-align:center;">新闻资讯标题</th>
										<th style="text-align:center;">图片名称</th>
										<th style="text-align:center;">上传时间</th>
										<th style="text-align:center;">操作</th>
									</tr>
								</thead>
								<tbody style="text-align:center;">
								</tbody>
							</table>
						</div>
					</div>
		
					<div class="space-4"></div>

			<div class="space-4"></div>

			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 封面图片 </label>
				<div class="col-sm-4">
					<input type="hidden" name="fjId" id="fjId" />
					<div id="wrapper">
				        <div id="container">
				            <!--头部，相册选择和格式选择-->
				            <div id="uploader">
				                <div class="queueList">
				                	<!-- <img src="http://pic5.photophoto.cn/20071207/0033034142319193_b.jpg"  style="width:110px;height:110px;position:absolute;" /> -->
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
<script type="text/javascript" src="${jpath}/static/plugins/webupload/upload.js"></script>
<script type="text/javascript" src="${jpath}/static/plugins/webupload/dist/webuploader.js"></script>
<script type="text/javascript">
$(function(){
	var cloM = [{
		name:'newstitle',
	},
	{
		name:'fjname',
	},
	{
		name:'fjtime',
	},{
		name:'id',
		
		cl:function(index,val){
			return '<div class="visible-md visible-lg hidden-sm hidden-xs btn-group"><button class="btn btn-xs btn-info" onclick="editThis(\''+val.id+'\')"><i class="icon-edit bigger-120"></i></button><button class="btn btn-xs btn-danger" onclick="delThis(\''+val.id+'\')"><i class="icon-trash bigger-120"></i></button></div>';
		}
	}];
	var thisId = $("#newsid").val();
	$("#sample-table-1").loadTbl(cloM,{newsid:thisId},"${jpath}/nsz/findByFj",false);
	
	$("#stuForm").loadCombox();
	
	$("#subBtn").click(function(){
		var jsonFroms = getForm("#stuForm");
		$.post("${jpath}/nsz/updateNewsZx",jsonFroms,function(data){
			console.log(data);
			var json = $.parseJSON(data);
			alert(json.resMsg);
		});
	});
});
</script>
<%@include file="../common/footer.jsp"%>
