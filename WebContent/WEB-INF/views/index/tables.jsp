<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="../common/head.jsp"%>
<div class="page-header">
	<h1>
		Students
		<small>
			<i class="icon-double-angle-right"></i>
			 管理
		</small>
	</h1>
</div><!-- /.page-header -->
<div class="row">
	<div class="col-xs-12">
		<div class="table-responsive">
			<table id="sample-table-1" class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th class="center" style="text-align:center;">
							<label>
								<input type="checkbox" class="ace" id="ckb"  value="0" />
								<span class="lbl"></span>
							</label>
						</th>
						<th style="text-align:center;">ID</th>
						<th style="text-align:center;">姓名</th>
						<th style="text-align:center;">电话号码</th>
						<th style="text-align:center;">年龄</th>
						<th style="text-align:center;">性别</th>
						<th style="text-align:center;">操作</th>
					</tr>
				</thead>

				<tbody id="tbody">
					
				</tbody>
			</table>
		</div><!-- /.table-responsive -->
	</div><!-- /span -->
</div><!-- /row -->
<div class="modal-footer no-margin-top" id="fy" style="display:none;">
	<button class="btn btn-app btn-inverse btn-xs pull-left" id="add" type="button">
		<i class="icon-edit bigger-230"></i>
		添加
	</button>
	<button class="btn btn-app btn-danger btn-xs pull-left" id="delAll" type="button">
		<i class="icon-trash bigger-200"></i>
		批量删除
	</button>
	
	<ul class="pagination pull-right no-margin" style="padding-top: 35px;">
		
	</ul>
</div>
<%@include file="../common/js.jsp"%>

<script type="text/javascript">
function prevBtn(nowPageNum,nowPageSize){
	if(nowPageNum>1){
		loadTbl(nowPageNum-1,nowPageSize);
	}
}
function pages(i,nowPageSize){
	loadTbl(i,nowPageSize);
}
function nextBtn(nowPageNum,nowPageSize,totalPage){
	if(nowPageNum<totalPage){
		loadTbl(nowPageNum+1,nowPageSize);
	}
}
function editThis(uid){
	location.href="${jpath}/addStudent?uid="+uid;
}
function delThis(uid){
	$.post("${jpath}/manager/del",{uid:uid},function(data){
		var json = $.parseJSON(data);
		alert(json.resMsg);
		if(json.resMsg="成功"){
			loadTbl(1,4);
		}
	});
}
function loadTbl(nowPageNum,nowPageSize){
	$.post("${jpath}/manager/findUser",{pageNum:nowPageNum,pageSize:nowPageSize},function(data){
		console.log(data);
		var json = $.parseJSON(data);
		if(json.res=="1"){
			var tR = json.obj.totalRecord;
			if(tR > 0){
				$("#fy").show();
				var prevDisabled = "";
				if(nowPageNum==1){
					prevDisabled = "disabled";
				}
				var fyli = '<li class="prev '+prevDisabled+'"><a href="javascript:void(0);" onclick="prevBtn(2,'+nowPageSize+')">';
				fyli += '首页</a></li>'
				fyli += '<li class="prev '+prevDisabled+'"><a href="javascript:void(0);" onclick="prevBtn('+nowPageNum+','+nowPageSize+')">';
				fyli += '<i class="icon-double-angle-left"></i></a></li>'
				for(var i = 1;i<=json.obj.totalPage;i++){
					var acStr = '';
					if(json.obj.pageNum == i){
						acStr = 'class="active"';
					}
					if(json.obj.totalPage>=6){
						fyli += '<li '+acStr+'><a href="javascript:void(0);">...</a></li>';
					}else{
						var numPages = nowPageNum-i;
						if(numPages==3){
							fyli += '<li '+acStr+'><a href="javascript:void(0);">...</a></li>';
						}else if(numPages<=2){
							if(i<=3 || (json.obj.totalPage-i<=2)){
								fyli += '<li '+acStr+'><a href="javascript:void(0);" onclick="pages('+i+','+nowPageSize+')">'+i+'</a></li>';
							}else if(i==4){
								fyli += '<li '+acStr+'><a href="javascript:void(0);">...</a></li>';
							}
						}
					}
				}
				var nextDisabled = "";
				if(nowPageNum==json.obj.totalPage){
					nextDisabled = "disabled";
				}
				fyli += '<li class="next '+nextDisabled+'"></i><a href="javascript:void(0);" onclick="nextBtn('+nowPageNum+','+nowPageSize+','+json.obj.totalPage+')">'
				fyli += '<i class="icon-double-angle-right"></i></a></li>'
				fyli += '<li class="next '+nextDisabled+'"></i><a href="javascript:void(0);" onclick="nextBtn('+(json.obj.totalPage-1)+','+nowPageSize+','+json.obj.totalPage+')">'
				fyli += '末页</a></li>'
				$("#fy>ul").find("li").remove();
				$("#fy>ul").append(fyli);
			}
			var trStr='';
			var jor =json.obj.results;
			for(var i = 0;i<jor.length;i++){
				var sexStr = "男";
				if(jor[i].sex!="0"){
					sexStr="女";
				}
				trStr += '<tr style="text-align:center;"><td class="center"><label><input type="checkbox" class="ace" name="test" value="'+jor[i].uid+'" /><span class="lbl"></span></label></td>';
				trStr += '<td>'+jor[i].uid+'</td>';
				trStr += '<td>'+jor[i].uname+'</td>';
				trStr += '<td>'+jor[i].tel+'</td>';
				trStr += '<td>'+jor[i].age+'</td>';
				trStr += '<td><span class="label label-sm label-warning">'+sexStr+'</span></td>';
				trStr += '<td><div class="visible-md visible-lg hidden-sm hidden-xs btn-group">';
				trStr += '<button class="btn btn-xs btn-info" onclick="editThis(\''+jor[i].uid+'\')"><i class="icon-edit bigger-120"></i></button>';
				trStr += '<button class="btn btn-xs btn-danger" onclick="delThis(\''+jor[i].uid+'\')"><i class="icon-trash bigger-120"></i></button></div></td></tr>';
			}
			$("#sample-table-1>tbody").find("tr").remove();
			$("#sample-table-1>tbody").append(trStr);
		}
		
	});
	
}
$(function(){
	loadTbl(1,4);
	$("#add").click(function(){
		location.href="${jpath}/addStudent?uid=0";
	});
	
});


//全选 and 取消
//先获得控制全选反选的input标签
var inputAll = document.getElementById("ckb");
//获得tbody
//var tbody = document.getElementById("tbody");
//获得天tbody里面的子元素
var icheck = document.getElementsByName("test");
inputAll.onclick = function() {
  //遍历tbody里面的input标签，把inputAll的状态赋值给icheck
  for(var i = 0; i < icheck.length; i++) {
      icheck[i].checked = this.checked;
  }
  //取消全选
  for(var i = 0; i < icheck.length; i++) {
      //给每个子元素都绑定事件
      icheck[i].onclick = function() {
          //点击的时候在遍历icheck，看看是否有没选中的
           var flag = true;
          for(var j = 0; j < icheck.length; j++) {
              //定义一个标志来记录
              if(icheck[j].checked == false) {
                  flag = false;
                  break;
              }else{
              	flag = true;
              }
          }
          inputAll.checked=flag;
      }
  }
}

//批量删除
$("#delAll").click(function(){
	var idl=new Array();
	$("input[type='checkbox']").each(function(index){
	 	if($(this).is(':checked')==true){
	 		idl[index]=$(this).val();
			console.log("========================================2");
			console.log(idl[index]);
	 	}
	})
	var str=idl.toString();
	$.post("${jpath}/manager/delAll",{uid:str},function(data){
		alert(data);
		var json = $.parseJSON(data);
		alert(json.resMsg);
		if(json.resMsg="成功"){
			loadTbl(1,4);
			$("").removeAttr("checked");
		}
	}); 
});

</script>

<%@include file="../common/footer.jsp"%>
