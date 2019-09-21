
var check = 0;//该变量是记录当前选择的评分
var time = 0;//该变量是统计用户评价的次数，这个是我的业务要求统计的（改变评分不超过三次），可以忽略

    /*over()是鼠标移过事件的处理方法*/
function over(param){
    if(param == 1){
        $("#star1").attr("src","../static/imgs/star_2.png");//第一颗星星亮起来，下面以此类推
        $("#message").html("很差");//设置提示语，下面以此类推
    }else if(param == 2){
        $("#star1").attr("src","../static/imgs/star_2.png");
        $("#star2").attr("src","../static/imgs/star_2.png");
        $("#message").html("比较差");
    }else if(param == 3){
        $("#star1").attr("src","../static/imgs/star_2.png");
        $("#star2").attr("src","../static/imgs/star_2.png");
        $("#star3").attr("src","../static/imgs/star_2.png");
        $("#message").html("一般");
    }else if(param == 4){
        $("#star1").attr("src","../static/imgs/star_2.png");
        $("#star2").attr("src","../static/imgs/star_2.png");
        $("#star3").attr("src","../static/imgs/star_2.png");
        $("#star4").attr("src","../static/imgs/star_2.png");
        $("#message").html("比较好");
    }else if(param == 5){
        $("#star1").attr("src","../static/imgs/star_2.png");
        $("#star2").attr("src","../static/imgs/star_2.png");
        $("#star3").attr("src","../static/imgs/star_2.png");
        $("#star4").attr("src","../static/imgs/star_2.png");
        $("#star5").attr("src","../static/imgs/star_2.png");
        $("#message").html("很好");
    }
}
    /*out 方法是鼠标移除事件的处理方法，当鼠标移出时，恢复到我的打分情况*/
function out(){
    if(check == 1){//打分是1，设置第一颗星星亮，其他星星暗，其他情况以此类推
        $("#star1").attr("src","../static/imgs/star_2.png");
        $("#star2").attr("src","../static/imgs/star_1.png");
        $("#star3").attr("src","../static/imgs/star_1.png");
        $("#star4").attr("src","../static/imgs/star_1.png");
        $("#star5").attr("src","../static/imgs/star_1.png");
        $("#message").html("");
    }else if(check == 2){
        $("#star1").attr("src","../static/imgs/star_2.png");
        $("#star2").attr("src","../static/imgs/star_2.png");
        $("#star3").attr("src","../static/imgs/star_1.png");
        $("#star4").attr("src","../static/imgs/star_1.png");
        $("#star5").attr("src","../static/imgs/star_1.png");
        $("#message").html("");
    }else if(check == 3){
        $("#star1").attr("src","../static/imgs/star_2.png");
        $("#star2").attr("src","../static/imgs/star_2.png");
        $("#star3").attr("src","../static/imgs/star_2.png");
        $("#star4").attr("src","../static/imgs/star_1.png");
        $("#star5").attr("src","../static/imgs/star_1.png");
        $("#message").html("");
    }else if(check == 4){
        $("#star1").attr("src","../static/imgs/star_2.png");
        $("#star2").attr("src","../static/imgs/star_2.png");
        $("#star3").attr("src","../static/imgs/star_2.png");
        $("#star4").attr("src","../static/imgs/star_2.png");
        $("#star5").attr("src","../static/imgs/star_1.png");
        $("#message").html("");
    }else if(check == 5){
        $("#star1").attr("src","../static/imgs/star_2.png");
        $("#star2").attr("src","../static/imgs/star_2.png");
        $("#star3").attr("src","../static/imgs/star_2.png");
        $("#star4").attr("src","../static/imgs/star_2.png");
        $("#star5").attr("src","../static/imgs/star_2.png");
        $("#message").html("");
    }else if(check == 0){
        $("#star1").attr("src","../static/imgs/star_1.png");
        $("#star2").attr("src","../static/imgs/star_1.png");
        $("#star3").attr("src","../static/imgs/star_1.png");
        $("#star4").attr("src","../static/imgs/star_1.png");
        $("#star5").attr("src","../static/imgs/star_1.png");
        $("#message").html("");
    }
}
/*click()点击事件处理，记录打分*/
function click(param){
    time++;//记录打分次数
    check = param;//记录当前打分
    out();//设置星星数
}

function ck(_this){
        if($(_this).attr('class')!="select"){
            $(_this).addClass('select');
            $(_this).removeClass('no');
        }else{
            $(_this).addClass('no');
            $(_this).removeClass('select');
        }
    }

$(function(){
    $("#tj_btn").click(function(){
        alert("提交成功");
    });
});

$(function(){
    $(".bb>img").each(function(index,item){
        $(this).click(function(){
            var clname=$(this).attr('class');
            var id=$(this).index();
            console.log($(".bb>img").not($(this)).is(".cc"));
            if($(this).is(".cc")){
                $(this).removeClass("cc");  
                console.log(id+"正在点击");
                switch(id){
                case (0):
                    console.log("选中：非常好（未选中）");
                    $(this).attr("src","../static/imgs/vgood_gry.png");
                break;
                case (1):
                    console.log("选中：好（未选中）");
                    $(this).attr("src","../static/imgs/good_gry.png");
                break;
                case (2):
                    console.log("选中：不好（未选中）");
                    $(this).attr("src","../static/imgs/notgood_gry.png");
                break;
                }
            }else if(!$(this).is(".cc") && !$(".bb>img").not($(this)).is(".cc")){
                $(this).addClass("cc");
                switch(id){
                case (0):
                    console.log("选中：非常好（选中）");
                    $(this).attr("src","../static/imgs/vgood_red.png");
                break;
                case (1):
                    console.log("选中：非常好（选中）");
                    $(this).attr("src","../static/imgs/good_red.png");
                break;
                case (2):
                    console.log("选中：非常好（选中）");
                    $(this).attr("src","../static/imgs/notgood_red.png");
                break;
                }
            }
        });
    });
});