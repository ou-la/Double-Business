$.fn.extend({
	loadCombox:function(){
		this.find("input[on_type=comboxSelect]").each(function(index,_this){
			///on_type=comboxSelect
			var select_id = $(_this).attr("id");
			var select_name = $(_this).attr("name");
			var select_value = $(_this).attr("value");
			var select_loadUrl = $(_this).attr("loadUrl");
			//console.log(_this);
			var selectStr = '<select class="col-xs-10 col-sm-5" id="'+select_id+'_selects"></select>';
			$(_this).after(selectStr);
			$.post(select_loadUrl,{},function(data){
				var json = $.parseJSON(data);
				console.log(json);
				console.log(json.resMsg);
				var comboxJson = json.obj;
				var optStr='<option value="-1">请选择</option>';
				for(var i = 0;i < comboxJson.length;i++){
					if(select_value == '' || select_value == null){
						optStr += '<option value="'+comboxJson[i][''+uid+'']+'">'+comboxJson[i][''+utypeid+'']+'</option>';
					}else{
						var selected = "";
						if(select_value == comboxJson[i].uid){
							selected = 'selected = "selected"';
						}
						optStr += '<option value="'+comboxJson[i][''+select_id+'']+'"'+selected+'>'+comboxJson[i][''+select_name+'']+'</option>';
					}
					
				}
				$("#"+select_id+"_selects").append(optStr);
			});
			$("#"+select_id+"_selects").change(function(){
				var onVal = $(this).val();
				$(_this).attr("value",onVal);
			});
		});
	},
	
	loadFY:function(json,cl,params,url){
		$("#fy").remove();
		var _table_this = this;
		this.after('<div class="modal-footer no-margin-top" id="fy" style="display:none;"></div>');
		$("#fy").append('<ul class="pagination pull-right no-margin" style="padding-top: 35px;"></ul>');
		var tR = json.obj.totalRecord;
		var nowPageSizet = json.obj.pageSize;
		var nowPageNumt = json.obj.pageNum;
		var nowPageTotalt = json.obj.totalPage;
		if(tR > 0){
			$("#fy").show();
			var prevDisabled = "";
			if(nowPageNumt==1){
				prevDisabled = "disabled";
			}
			var fyli = '<li class="prev '+prevDisabled+'" id="diyiye"><a href="javascript:void(0);" onclick="">首页</a></li>';
			fyli += '<li class="prev '+prevDisabled+'" id="shangyiye"><a href="javascript:void(0);" onclick="">';
			fyli += '<i class="icon-double-angle-left"></i></a></li>'
			for(var i = 1;i<=json.obj.totalPage;i++){
				var acStr = '';
				if(json.obj.pageNum == i){
					acStr = 'active';
				}
				fyli += '<li class="dangqianye '+acStr+'" name="'+i+'"><a href="javascript:void(0);">'+i+'</a></li>';
			}
			var nextDisabled = "";
			if(nowPageNumt==json.obj.totalPage){
				nextDisabled = "disabled";
			}
			fyli += '<li class="next '+nextDisabled+'" id="xiayiye"></i><a href="javascript:void(0);" onclick="">'
			fyli += '<i class="icon-double-angle-right"></i></a></li>'
			fyli += '<li class="next '+nextDisabled+'" id="zuihouye"></i><a href="javascript:void(0);" onclick="">'
			fyli += '末页</a></li>'
			$("#fy>ul").find("li").remove();
			$("#fy>ul").append(fyli);
			
			$('#diyiye').click(function(){
				params.pageNum = 1;
				_table_this.loadTbl(cl,params,url,true);
			});
			$('#shangyiye').click(function(){
				if(params.pageNum >= 2){
					params.pageNum = params.pageNum-1;
					_table_this.loadTbl(cl,params,url,true);
				}
			});
			$('.dangqianye').click(function(){
				var i = $(this).attr("name");
				params.pageNum = i;
				_table_this.loadTbl(cl,params,url,true);
			});
			$('#xiayiye').click(function(){
				if(nowPageTotalt > params.pageNum){
					params.pageNum = params.pageNum+1;
					_table_this.loadTbl(cl,params,url,true);
				}
			});
			$('#zuihouye').click(function(){
				params.pageNum = nowPageTotalt;
				console.log(nowPageTotalt);
				_table_this.loadTbl(cl,params,url,true);
			});
		}
	},
	loadTbl:function(cl,params,url,isFY){
		var _table_this = this;
		$.post(url,params,function(data){
			var json = $.parseJSON(data);

			if(json.res=="1"){
				var jor =json.obj.results;
				if(jor == null){
					var jor =json.obj;
				}
				var tdStr = '<tr>';
				for(var i = 0;i < jor.length;i++){
					for(var j = 0;j < cl.length;j++){
						var clOne = cl[j].name;
						var clTwo = cl[j].cl;
						var tab_html = "";
						if(typeof clTwo == 'function' && clTwo != null){
							//var tab_html = clTwo(j,jor[i][""+clOne+""]);
							var tab_html = clTwo(j,jor[i]);
							
							//console.log(tab_html);
						}
						if(tab_html != ""){
							tdStr+='<td>'+tab_html+'</td>';
						}else{
							tdStr+='<td>'+jor[i][""+clOne+""]+'</td>';
						}
						
					}
					tdStr += '</tr>';
				}
				_table_this.children("tbody").eq(0).find("tr").remove();
				_table_this.children("tbody").eq(0).append(tdStr);
		
				if(isFY){
					_table_this.loadFY(json,cl,params,url);
				}
			}
		});
	}
});
function getForm(_form){
	var dataJson = "";
	var dataArr = [];
	$(_form).find(":input").each(function(index,_this){
		var iptName = $(_this).attr("name");
		if(iptName!=""&&iptName!=null){
			dataArr.push(iptName+":'"+$(_this).val()+"'");
			/* 提交按钮的运行 */
			/* $(_this).val(" "); */
		}
	});
	dataJson = "{"+dataArr.join(",")+"}";
	var jsonFroms = eval('(' + dataJson + ')');
	return jsonFroms;
}