<link href="${jpath}/static/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${jpath}/static/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="${jpath}/static/assets/css/ace.min.css" />
<link rel="stylesheet" href="${jpath}/static/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="${jpath}/static/assets/css/ace-skins.min.css" />
<script src="${jpath}/static/assets/js/ace-extra.min.js"></script>
<script type="text/javascript">
function setIf(_this){
	$(".nav-list").find("li").removeClass("active");
	$(_this).parent("li").addClass("active");
	var hrefStr=$(_this).attr("ifHref");
	$("#contentPage").attr("src",hrefStr);
}
</script>