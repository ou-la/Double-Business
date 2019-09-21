<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="../common/head.jsp"%>
<div class="page-header">
	<h1>
		用户
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
								<input type="checkbox" class="ace" id="ckb" val="o" />
								<span class="lbl"></span>
							</label>
						</th>
						<th style="text-align:center;">ID</th>
						<th style="text-align:center;">用户姓名</th>
						<th style="text-align:center;">电话号码</th>
						<th style="text-align:center;">用户分类编号</th>
						<th style="text-align:center;">企业名称</th>
						<th style="text-align:center;">用户积分</th>
						<th style="text-align:center;">附件编号</th>
						<th style="text-align:center;">用户资质附件</th>
						<th style="text-align:center;">登录编号</th>
						<th style="text-align:center;">操作</th>
					</tr>
				</thead>

				<tbody style="text-align:center;">
					
				</tbody>
			</table>
			<div style="margin-top:-90px;">
				<button class="btn btn-app btn-inverse btn-xs pull-left" id="add" type="button">
					<i class="icon-edit bigger-230"></i>
					添加
				</button>
				<button class="btn btn-app btn-danger btn-xs pull-left" id="delAll" type="button" >
					<i class="icon-trash bigger-200"></i>
					批量删除
				</button>
			</div>
		</div><!-- /.table-responsive -->
	</div><!-- /span -->
</div><!-- /row -->

<%@include file="../common/js.jsp"%>
<script type="text/javascript">
function editThis(uid){
	location.href="${jpath}/us/updateUser?uid="+uid;
}
function delThis(uid){
	$.post("${jpath}/us/delus",{uid:uid},function(data){
		var json = $.parseJSON(data);
		alert(json.resMsg);
	});
}

$(function(){
	var cloM = [{
					name:'uid',
					cl:function(index,val){
						return '<label><input type="checkbox" class="ace" name="test" value="'+val.uid+'" /><span class="lbl"></span></label>';
					}
				},
				{
					name:'uid',
				},
				{
					name:'uname',
				},
				{
					name:'upjone',
				},
				{
					name:'utypeid',
				},
				{
					name:'qiyeid',
				},
				{
					name:'ujifen',
				},
				{
					name:'ufjid',
				},
				{
					name:'ufj',
				},
				{
					name:'loginid',
				},
				{
					name:'uid',
					
					cl:function(index,val){
						return '<div class="visible-md visible-lg hidden-sm hidden-xs btn-group"><button class="btn btn-xs btn-info" onclick="editThis(\''+val.uid+'\')"><i class="icon-edit bigger-120"></i></button><button class="btn btn-xs btn-danger" onclick="delThis(\''+val.uid+'\')"><i class="icon-trash bigger-120"></i></button></div>';
					}
				}];
	var params = {pageNum:1,pageSize:4};
	$("#sample-table-1").loadTbl(cloM,params,"${jpath}/us/findUser",true);
	
	
	$("#add").click(function(){
		location.href="${jpath}/us/addUser?uid=";
	});
	//全选 and 取消
	//先获得控制全选反选的input标签
    var inputAll = document.getElementById("ckb");
    //获得tbody
   // var tbody = document.getElementById("tbody");
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
});

//批量删除
$("#delAll").click(function(){
	var idl=new Array();
	$("input[type='checkbox']").each(function(index,e){
	 	if($(this).is(':checked')==true){
	 		idl[index]=$(this).val();
	 	}
	})
	var str=idl.toString();
	$.post("${jpath}/us/delAll",{uid:str},function(data){
		alert(data);
		var json = $.parseJSON(data);
		alert(json.resMsg);
		if(json.resMsg="成功"){
			//loadTbl(1,4);
			$("").removeAttr("checked");
		}
	});
});
</script>
<%@include file="../common/footer.jsp"%>
