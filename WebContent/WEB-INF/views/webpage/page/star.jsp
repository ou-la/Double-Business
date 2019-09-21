<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="jpath" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="utf-8">    
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
var check = 0;//该变量是记录当前选择的评分
var time = 0;//该变量是统计用户评价的次数，这个是我的业务要求统计的（改变评分不超过三次），可以忽略
 
/*over()是鼠标移过事件的处理方法*/
function over(param){
    if(param == 1){
        $("#star1").attr("src","${jpath}/static/imgs/star_2.png");//第一颗星星亮起来，下面以此类推
        $("#message").html("很差");//设置提示语，下面以此类推
    }else if(param == 2){
        $("#star1").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star2").attr("src","${jpath}/static/imgs/star_2.png");
        $("#message").html("比较差");
    }else if(param == 3){
        $("#star1").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star2").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star3").attr("src","${jpath}/static/imgs/star_2.png");
        $("#message").html("一般");
    }else if(param == 4){
        $("#star1").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star2").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star3").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star4").attr("src","${jpath}/static/imgs/star_2.png");
        $("#message").html("比较好");
    }else if(param == 5){
        $("#star1").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star2").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star3").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star4").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star5").attr("src","${jpath}/static/imgs/star_2.png");
        $("#message").html("很好");
    }
}
/*out 方法是鼠标移除事件的处理方法，当鼠标移出时，恢复到我的打分情况*/
function out(){
    if(check == 1){//打分是1，设置第一颗星星亮，其他星星暗，其他情况以此类推
        $("#star1").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star2").attr("src","${jpath}/static/imgs/star_1.png");
        $("#star3").attr("src","${jpath}/static/imgs/star_1.png");
        $("#star4").attr("src","${jpath}/static/imgs/star_1.png");
        $("#star5").attr("src","${jpath}/static/imgs/star_1.png");
        $("#message").html("");
    }else if(check == 2){
        $("#star1").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star2").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star3").attr("src","${jpath}/static/imgs/star_1.png");
        $("#star4").attr("src","${jpath}/static/imgs/star_1.png");
        $("#star5").attr("src","${jpath}/static/imgs/star_1.png");
        $("#message").html("");
    }else if(check == 3){
        $("#star1").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star2").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star3").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star4").attr("src","${jpath}/static/imgs/star_1.png");
        $("#star5").attr("src","${jpath}/static/imgs/star_1.png");
        $("#message").html("");
    }else if(check == 4){
        $("#star1").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star2").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star3").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star4").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star5").attr("src","${jpath}/static/imgs/star_1.png");
        $("#message").html("");
    }else if(check == 5){
        $("#star1").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star2").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star3").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star4").attr("src","${jpath}/static/imgs/star_2.png");
        $("#star5").attr("src","${jpath}/static/imgs/star_2.png");
        $("#message").html("");
    }else if(check == 0){
        $("#star1").attr("src","${jpath}/static/imgs/star_1.png");
        $("#star2").attr("src","${jpath}/static/imgs/star_1.png");
        $("#star3").attr("src","${jpath}/static/imgs/star_1.png");
        $("#star4").attr("src","${jpath}/static/imgs/star_1.png");
        $("#star5").attr("src","${jpath}/static/imgs/star_1.png");
        $("#message").html("");
    }
}
/*click()点击事件处理，记录打分*/
function click(param){
    time++;//记录打分次数
    check = param;//记录当前打分
    out();//设置星星数
}
</script>
</head>
<body>
    <div>
        <a href="javascript:click(1)"><img src="${jpath}/static/imgs/star_1.png" id="star1" onMouseOver="over(1)" onMouseOut="out(1)"/></a>
        <a href="javascript:click(2)"><img src="${jpath}/static/imgs/star_1.png" id="star2" onMouseOver="over(2)" onMouseOut="out(2)" /></a>
        <a href="javascript:click(3)"><img src="${jpath}/static/imgs/star_1.png" id="star3" onMouseOver="over(3)" onMouseOut="out(3)" /></a>
        <a href="javascript:click(4)"><img src="${jpath}/static/imgs/star_1.png" id="star4" onMouseOver="over(4)" onMouseOut="out(4)"/></a>
        <a href="javascript:click(5)"><img src="${jpath}/static/imgs/star_1.png" id="star5" onMouseOver="over(5)" onMouseOut="out(5)"/></a>
        <span id="message"></span>
    </div>
</body>

</html>