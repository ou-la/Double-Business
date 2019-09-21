<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="../common/head.jsp"%>
<link rel="stylesheet" href="${jpath}/static/plugins/zTree/css/zTreeStyle/zTreeStyle.css" />
<link rel="stylesheet" href="${jpath}/static/plugins/webupload/css/webuploader.css" />
<link rel="stylesheet" href="${jpath}/static/plugins/webupload/style.css" />
<link rel="stylesheet" href="${jpath}/static/plugins/zTree/css/zTreeStyle/zTreeStyle.css" />
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

	<div class="col-xs-2">
		<div class="zTreeDemoBackground left">
			<ul id="treeDemo" class="ztree"></ul>
		</div>
	</div>
		<div class="col-xs-10">
		<div class="row">
			<div class="col-xs-12">
				<!-- PAGE CONTENT BEGINS -->
				<form class="form-horizontal" id="stuForm" role="form">
					<div class="form-group" style="display:none;">
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
							name="lmid"
							id="lmid" 
							value="0" 
							loadUrl="${jpath}/nsz/select" />
						</div>
					</div>
		
					<div class="space-4"></div>
					
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 新闻内容 </label>
		
						<div class="col-sm-9">
							<%-- <textarea type="text"  name="newstext" id="newstext"  value="${NewsZx.newstext}" placeholder="newstext" class="col-xs-10 col-sm-5" /></textarea> --%>
							<%-- <input type="text" name="newstext" id="newstext" value="${NewsZx.newstext}" placeholder="newstext" class="col-xs-10 col-sm-5" /> --%>
							<div class="form-group" style="margin:0 auto;" >
								<script type="text/javascript" charset="utf-8" src="${jpath}/static/plugins/UEditor/ueditor.config.js"></script>
			    				<script type="text/javascript" charset="utf-8" src="${jpath}/static/plugins/UEditor/ueditor.all.min.js"> </script>
								<script type="text/javascript" charset="utf-8" src="${jpath}/static/plugins/UEditor/lang/zh-cn/zh-cn.js"></script>
								<script id="editor" type="text/plain" style="width:500px;height:500px;"></script>
								<script type="text/javascript" name="newstext" id="newstext">
									var ue = UE.getEditor('editor');
								</script>
							</div>
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
		
							<button class="btn" type="reset" style="margin-left:6rem;">
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
	</div>
</div>

<%@include file="../common/js.jsp"%>
<script type="text/javascript" src="${jpath}/static/plugins/webupload/upload.js"></script>
<script type="text/javascript" src="${jpath}/static/plugins/webupload/dist/webuploader.js"></script>
<script type="text/javascript" src="${jpath}/static/plugins/zTree/js/jquery.ztree.all.min.js"></script>
<script type="text/javascript">

var setting = {
	async: {
		enable: true,
		url:"${jpath}/nsz/findStuTree",
		autoParam:["id", "name=n", "level=lv"],
		otherParam:{"otherParam":"zTreeAsyncTest"},
		dataFilter: filter
	},
	data:{
		key: {
			name:'lmName'
		},
		simpleData: {
			enable: true,
			idKey: "lmImg",
			pIdKey: "lmLink",
			rootPId: 0
		}
	}
};
function filter(treeId, parentNode, childNodes) {
	return childNodes.obj;
}

$(function(){
	/* $.fn.zTree.init($("#treeDemo"), setting, zNodes); */
	$.fn.zTree.init($("#treeDemo"), setting);
	
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
		var contentPar = {};
		var content = UE.getEditor('editor').getContentTxt();
		contentPar.content = content;
		var jsonFroms = getForm("#stuForm");
		var cc = contentPar.content;
		var jsonF = $.extend(contentPar,jsonFroms);
		$.post("${jpath}/nsz/addNewsZxs?newstext="+cc,jsonF,function(data){
			console.log(data);
			var json = $.parseJSON(data);
			alert(json.resMsg);
		});
	});
	
});
</script>
<%@include file="../common/footer.jsp"%>
