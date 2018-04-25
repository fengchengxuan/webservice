<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>全部订单</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
<style>
    #ddoli12 {
        position: absolute;
        left: 0;
    }
    .list23{
        background: #3eb7f3;
    }
    td{text-align: center}thead tr{font-size: 12px}
                             .draftartbox form{
                                 position: relative;
                                 left:-95px;
                             }
     .artable{
     width:979px;
     }
/*弹框*/
.modal .draftartbox input ,.modal .draftartbox select,.modal .draftartbox textarea{
    margin-left: 15px;
}

.modal .draftartbox input,.modal .draftartbox textarea,.draftartbox select{
    border: 1px solid #ccc;
}
.modal .draftartbox textarea{
    max-width:341px;
    max-height:89px;
    width:341px;
    height:89px;
}
.modal .draftartbox input{
    width: 342px;
    height: 28px;
    color: #666;
    position: relative;
}
.modal .draftartbox select{
    width:115px;
    height: 25px;
}
.modal p{
    color: red;
    font-size: 10px;
    margin: 5px 0 0 33px;

    position: relative;
    left: 31px;
    top:1px;
}
.modal .draftartbox span{
    text-align:justify;
    text-align-last:justify;
}
#Selected>span,#Selected1>span,#Selected2>span,#Selected3>span{
    padding: 0 34px 0 10px;
background: url(${ctx}/static/background/images/Arrow.jpg) no-repeat scroll right center transparent;
}




.modal .draftartbox span{
    line-height:0;
    width: 102px;
    text-align: right;
    display: block;
    margin-top: 15px;
}
.modal .draftartbox-left{
    width: 232px;
    height: 30px;
    display: block;
    float: left;
}
.modal select{
    margin-left: 0;
    border-radius: 0;
    -webkit-appearance: none;
    background: url(${ctx}/static/background/images/Arrow.jpg) no-repeat scroll right center transparent;
}
    #Selected12{
        height: 43px;
        line-height: 43px;
        cursor: pointer;
        text-align: center;
        font-size: 14px;
        border-left:1px solid #2090cc;
    }
    #ddoli12{
        position: absolute;
        left: 0;
        top: 43px;
    }
    #ddoli12 ul {
        border: 1px solid #ccc;
        border-top: none;
    }
    #ddoli12 ul li{
        cursor: pointer;
        width: 160px;
        height: 30px;
        line-height: 30px;
        text-align: center;
        background: #ffffff;
        color: #666;
        font-size: 14px;
        border-top: 1px solid #ccc;
        font-weight: 100;
    }
    #ddoli12 ul li:hover{
        background: #24a1ee;
        color: #ffffff;
    }
#Selected,#Selected1,#Selected2,#Selected3{
    height: 43px;
    line-height: 43px;
    cursor: pointer;
    text-align: center;
    font-size: 14px;
}
#Selected span,#Selected1 span
,#Selected2 span,#Selected3 span
{
    background: url(${ctx}/static/background/images/Arrow.jpg) no-repeat scroll right center transparent;
}
#ddoli,#ddoli1,
#ddoli2,#ddoli3
{
    position: relative;
    left: 28px;
    top: -21px;
}
#ddoli ul ,#ddoli1 ul,
#ddoli2 ul ,#ddoli3 ul
{
    border: 1px solid #ccc;
    border-top: none;
}
#ddoli ul li,#ddoli1 ul li,
#ddoli2 ul li,#ddoli3 ul li
{
    border-right: 1px solid #ccc;
    cursor: pointer;
    width: 115px;
    height: 30px;
    line-height: 30px;
    text-align: center;
    background: #ffffff;
    color: #666;
    font-size: 14px;
    border-top: 1px solid #ccc;
    font-weight: 100;
}
#ddoli ul li:hover,#ddoli1 ul li:hover,
#ddoli3 ul li:hover,#ddoli2 ul li:hover
{
    background: #24a1ee;
    color: #ffffff;
}
.contener .admlistbox{
    height: auto;
    padding-bottom: 25px;
}
.modal .draftartbox div{
    margin-left: 90px;
    margin-top: 8px;
}
    .select_model{
        position: relative;
    }
</style>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=false;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=false;allordera=false;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
<div class="contentbox">
    <div class="top">
        <img src="${ctx}/static/background/images/FZ.png" alt="">
        <span>当前位置</span>
        <span>></span>
        <span>订单管理</span>
        <span>></span>
        <span>我的全部订单</span>
        <span>></span>
        <span>全部订单</span>
    </div>
    <div class="inner" style="height: auto;padding-bottom: 30px">
        <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;全部订单</div>
        <div class="draftart-top">
            <button class="keywords">关键词</button>
            <input style="width: 269px" type="text" placeholder="例如：APP，网站建设，网络营销，网络推广">
            <button class="key-search">搜索</button>
            <button class="search-title">标题搜索</button>
            <input style="width: 283px" type="text" placeholder="网站建设/程序及功能定制研发/APP研发与定制">
            <button class="title-search">搜索</button>
        </div>
        <div class="draftartbox">
            <table class="artable">
                <thead>
                <tr>
                <th style="width: 62px;">序号</th>
                <th style="width: 134px;border-left: 1px solid #24a1e4">编号
                </th>
                <th style="width: 160px;border-left: 1px solid #24a1e4">订单标题</th>
                <th style="width: 162px;border-left: 1px solid #24a1e4">
                <div class="select_model">
                    <div class="ddo" id="Selected12"><span>创建订单时间</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                    <div style="display: none" id="ddoli12">
                        <ul>
                            <li style="border-top: none">创建订单时间</li>
                            <li>订单付款时间</li>
                        </ul>
                    </div>
        </div>
                </th>
                <th style="width: 126px;border-left: 1px solid #24a1e4">产品原价</th>
                <%--<th style="width: 105px;border-left: 1px solid #24a1e4">折扣/优惠券</th>--%>
                <th style="width: 113px;border-left: 1px solid #24a1e4">订单实付金额</th>
                <th style="width: 113px;border-left: 1px solid #24a1e4">订单状态</th>
                <th style="width: 109px;border-left: 1px solid #24a1e4;border-right: 1px solid #24a1e4;">备注</th>
                </tr>
                </thead>
            </table>
<table id="showOrder" >
                <tr style="height: 10px;"><td></td></tr>
                <tr>
                    <td style="width: 62px;"><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                    <td style="width: 81px;">FC001</td>
                    <td style="width:147px;color: #1994d3;font-size: 14px" title="网站建设/程序及功能定制研发/APP研发与定制">网站建设/程序及功能...</td>
                    <td style="width: 162px;"></td>
                    <td style="width: 100px;"></td>
                    <td style="width: 105px;"></td>
                    <td style="width: 113px;"></td>
                    <td style="width: 103px;"></td>
                    <td style="width: 109px;"></td>
                </tr>
                <tr>
                    <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                    <td>FC001</td>
                    <td style="width:147px;color: #1d87e9" >体验版-网站建设</td>
                    <td>2017年7月1日10：36</td>
                    <td>￥00：00</td>
                    <td style="color: red">￥00：00</td>
                    <td>￥00：00</td>
                    <td style="color: red">退款</td>
                    <td style="color: #1d87e9">尽快安排发货</td>
                </tr>
                <tr>
                    <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;2</td>
                    <td>FC002</td>
                    <td style="width:147px;color: #1994d3;font-size: 14px" title="网站建设/程序及功能定制研发/APP研发与定制">网站建设/程序及功能...</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #1d87e9" >体验版-手机网站</td>
                    <td>2017年7月1日10：36</td>
                    <td>￥00：00</td>
                    <td style="color: red">￥00：00</td>
                    <td>￥00：00</td>
                    <td style="color: red">退款</td>
                    <td style="color: #1d87e9">尽快安排发货</td>
                </tr>
<%--3--%>
                <tr>
                    <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;3</td>
                    <td>FC003</td>
                    <td style="width:147px;color: #1994d3;font-size: 14px" title="网站建设/程序及功能定制研发/APP研发与定制">网站建设/程序及功能...</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #1d87e9" title="体验版-程序及功能定制研发">体验版-程序及功能...</td>
                    <td>2017年7月1日10：36</td>
                    <td>￥00：00</td>
                    <td style="color: red">￥00：00</td>
                    <td>￥00：00</td>
                    <td style="color: red">退款</td>
                    <td style="color: #1d87e9">尽快安排发货</td>
                </tr>

                <tr>
                    <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;4</td>
                    <td>FC004</td>
                    <td style="width:147px;color: #1994d3;font-size: 14px" title="网站建设/程序及功能定制研发/APP研发与定制">网站建设/程序及功能...</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #1d87e9" >基础版-网站建设</td>
                    <td>2017年7月1日10：36</td>
                    <td>￥666：666</td>
                    <td style="color: red">￥66：666</td>
                    <td >￥600：600</td>
                    <td style="color: red">退款</td>
                    <td style="color: #1d87e9">尽快安排发货</td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #1d87e9" title="加强版-程序及功能定制研发">加强版-程序及功能...</td>
                    <td>2017年7月1日10：36</td>
                    <td>￥666：666</td>
                    <td style="color: red">￥66：666</td>
                    <td >￥600：600</td>
                    <td style="color: red">退款</td>
                    <td style="color: #1d87e9">尽快安排发货</td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #1d87e9" >加强版-APP研发与定制</td>
                    <td>2017年7月1日10：36</td>
                    <td>￥666：666</td>
                    <td style="color: red">￥66：666</td>
                    <td >￥600：00</td>
                    <td style="color: red">退款</td>
                    <td style="color: #1d87e9">尽快安排发货</td>
                </tr>
                <%--5--%>
                <tr>
                    <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;5</td>
                    <td>FC005</td>
                    <td style="width:147px;color: #1994d3;font-size: 14px" >网络营销</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
<%--6--%>
 </table>

            
            <div>
                <input type="checkbox" style="margin-left: 20px;" id="clickId"onclick="clickAll()">
               <span style="margin:0 10px;" >全选</span>
                <span><a href="javascript:void(null)" onclick="deleteOrder()">删除</a></span>
            </div>
            
            <div class="darbtnbox">
                <button class="thisfresh orderShow-mod-add"  id="addOrder" >添加</button>
                <button class="allfresh orderShow-mod-alter" >修改</button>
            </div>
            <div class="darpages">
                <input type="hidden" id="currentPage"/>
                <span id="totalNum">共10ye</span>&nbsp;
                &nbsp;
                <span id="oldPage"><a href =javascript:void(null)>上一页</a></span>
                <span id="nextPage"><a href =javascript:void(null)>下一页</a></span>
            </div>
        </div>
    </div>
</div>
    </div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#Selected12").click(function(){
            if("block" == $("#ddoli12").css("display")){
                $("#ddoli12").hide();
            }else{
                $("#ddoli12").show();
            }
        });

        $("#ddoli12>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected12>span").html($(this).html());
                $("#ddoli12").hide();
            });
        });

        $("#Selected12").blur(function(){
            $("#ddoli12").hide();
        });

    });
var  orderList;
var totalNum;
$(document).ready(function (){
   $("#currentPage").val(1);
    $.ajax({
        url : '${ctx}/order/showAll',
        type : 'POST',
        async:true,
        cache:false,
        dataType : 'json',
        success : function(data) {
            if (data != null && data != ""){
                orderList=data.orderList;
                totalNum=data.totalNum;
                $("#totalNum").text("共"+totalNum+"页");
                showObj(orderList,totalNum,$("#currentPage").val());

            }
        }
    })
    })
    function showObj(data,totalNum,currentPage){
        $("#showOrder").empty();
        $("#showOrder").append("<tr style=\"width: 980px;height: 5px\"></tr>");
        var i=(currentPage-1)*20;
    if(totalNum==currentPage){
        for( i;i<data.length;i++) {
            var j=i+1;
            var row = "<tr>" +
                "<td style=\"width: 70px;\"><input type=\"checkbox\" value=\""+data[i].id+"\" style=\"position: relative;top: 2px;\" placeholder=\"\">&nbsp;&nbsp;&nbsp;"+j+"</td>" +
                "<td style=\"width: 90px;\">"+data[i].code+"</td>" +
                "<td style=\"width:161px;color: #1d87e9\" >"+data[i].title+"</td>" +
                "<td style=\"width:182px;\">"+data[i].createDate+"</td>" +
                "<td style=\"width:106px;\">￥"+ data[i].price+"</td>" +
                // "<td style=\"width: 108px;color: red\">￥"+data[i].disCount+"</td>" +
                "<td style=\"width: 135px;\">￥"+data[i].total+"</td>" +
                "<td style=\"width: 105px;color: red\">"+data[i].state+"</td>" +
                "<td style=\"width: 113px;color: #1d87e9\">尽快安排发货</td></tr>";
            $("#showOrder").append(row);
        }
    }else if(totalNum!=currentPage && totalNum>currentPage){
        var end=i+20;
        for( i;i<end;i++) {
            var j=i+1;
            var row = "<tr>" +
                "<td style=\"width: 70px;\"><input type=\"checkbox\" value=\""+data[i].id+"\" style=\"position: relative;top: 2px;\" placeholder=\"\">&nbsp;&nbsp;&nbsp;"+j+"</td>" +
                "<td style=\"width: 90px;\">"+data[i].code+"</td>" +
                "<td style=\"width:161px;color: #1d87e9\" >"+data[i].title+"</td>" +
                "<td style=\"width:182px;\">"+data[i].createDate+"</td>" +
                "<td style=\"width:106px;\">￥"+ data[i].price+"</td>" +
                // "<td style=\"width: 108px;color: red\">￥"+data[i].disCount+"</td>" +
                "<td style=\"width: 135px;\">￥"+data[i].total+"</td>" +
                "<td style=\"width: 105px;color: red\">"+data[i].state+"</td>" +
                "<td style=\"width: 113px;color: #1d87e9\">尽快安排发货</td></tr>";
            $("#showOrder").append(row);
        }
    }
        for(var j=1;j<=$("#show").find("tr").length ;j++){
            if(j%2!=0){
                $("#show").find("tr:eq("+j+")").css("background-color","#cccccc");
            }else{
                $("#show").find("tr:eq("+j+")").css("background-color","#fffaff");
            }
        }
       // alert($(".darpages").find(".page").val());
        $("#nextPage").before("<span class=\"page\">" + currentPage + "</sqan>");
        $(".page").css("color","red");
    }
//上一页
$("#oldPage").click(function () {
    var currentPage= $("#currentPage").val();  //取当前页码
    var nextPage=currentPage-1;               //上一页的数
    if(currentPage>1){
        $("#currentPage").val(nextPage);
        alert(currentPage);
      //  showObj(orderList,totalNum,$("#currentPage").val());
    }else if(currentPage==1){
        alert("这里是首页哦！！！！");
    }
});
//下一页
$("#nextPage").click(function () {
    var currentPage= $("#currentPage").val();
    var nextPage=parseInt(currentPage)+parseInt(1);
    if(currentPage<totalNum){
        $("#currentPage").val(nextPage);
        alert(nextPage)
       // showObj(orderList,totalNum,$("#currentPage").val());
    }else if(currentPage==totalNum){
        alert("已经是最后一页了。");
    }
});
function clickAll() {
    var clickFlat= $("#clickId").is(':checked');
    if(clickFlat){
        $("#showOrder").find("input[type='checkbox']").prop("checked",true);
    }else{
        $("#showOrder").find("input[type='checkbox']").prop("checked",false);
    }
}
//---------------删除
 function deleteOrder(){
     var checkboxAll=$("#showOrder").find("input[type='checkbox']:checked");
     if(checkboxAll == null || checkboxAll.length<1){
         alert("请选择一行");
         return ;
     }
     if(confirm("是否要删除勾选部分")){
         var list=[];
         var proId;
         for(var i=0;i<checkboxAll.length;i++){
             proId= checkboxAll[i].value;
             list.push(proId);
         }
         $.ajax({
             url : '${ctx}/order/deleteAll',
             type : 'POST',
             data : "orderList="+list,
             async:true,
             cache:false,
             dataType : 'json',
             success : function(data) {
                 if (data != null && data != ""){
                     alert(data[0]);
                     var url=window.location.href;
                     window.location.href=url;
                 }
             }
         });
     }
 }
    //-------------------------添加
    $(document).ready(function(){

        $("#orderHide-mod").click(function(){
            $("#order-modal").hide();
        });
        $(".orderShow-mod-add").click(function(){
            $("#order-modal").show();
            $.ajax({
                url : '${ctx}/order/findOrderId',
                type : 'POST',
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if(data!=null && data!=""){
                        $("#addCode").val(data[0].code);
                        $("#addDate").val(data[0].createDate);
                    }
                }
            })
        });

        $("#orderHide-alter").click(function () {
            $("#order-modal-alter").hide();
        })
        $(".orderShow-mod-alter").click(function () {
                var checkboxAll=$("#showOrder").find("input:checkbox:checked");
                if(checkboxAll==null || checkboxAll.length<1){
                    alert("请选择一行");
                    return ;
                }else if(checkboxAll.length>1){
                    alert("请选择一行");
                    return ;
                }
            $("#order-modal-alter").show();
            $.ajax({
                url : '${ctx}/order/findOrder',
                data:"id="+checkboxAll[0].value,
                type : 'POST',
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if(data!=null && data!=""){
                        $("#updateCode").val(data[0].code);
                        $("#updateTitle").val(data[0].title);
                        $("#updateDate").val(data[0].createDate);
                        $("#updatePrice").val(data[0].price);
                        $("#updateDisCount").val(data[0].disCount);
                        $("#updateTotal").val(data[0].total);
                        $("#Selected2").find("span").text(data[0].time)
                        $("#Selected1").find("span").text(data[0].scheme);
                        $("#updateNote").val(data[0].note);
                        return;
                    }
                    alert("您还未登录 或权限不够");
                }
            })
        })
    });
    function addSubmit(){
        if($("#addTitle").val()==null || $("#addTitle").val()=="") {
            alert("请输入标题")
            return
        };
       if($("#addPrice").val()==null||$("#addPrice").val()=="") {
            alert("请输入金额")
            return
        };
        if($("#addDisCount").val()==null||$("#addDisCount").val()=="") {
            alert("请输入优惠金额")
            return
        };
        if($("#addTotal").val()==null||$("#addTotal").val()=="") {
            alert("请输入实付金额")
            return
        };
        if($("#addNote").val()==null||$("#addNote").val()=="") {
            alert("请备注")
         return
        };
        $.ajax({
            url : '${ctx}/order/addOrder',
            data:"code="+  $("#addCode").val()+"&date="+$("#addDate").val()+"&title="+$("#addTitle").val()+
            "&note="+$("#addNote").val()+"&price="+$("#addPrice").val()+"&total="+$("#addTotal").val()+"&disCount="+$("#addDisCount").val()+
            "&time="+$(".Selected").find("span").text()+"&scheme="+$("#Selected3").find("span").text(),
            type : 'POST',
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null && data!=""){
                    alert(data[0])
                    var url=window.location.href;
                    window.location.href=url;
                }
            }
        })
    }

    $(document).ready(function () {
        $("#Selected").click(function(){
            var oldType=$($("#Selected")).text();
            if("block" == $("#ddoli").css("display")){
                $("#ddoli").hide();
            }else{
                $("#ddoli").show();
            }
        });

        $("#ddoli>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected>span").html($(this).html());
                type=$(this).html();
                $("#ddoli").hide();
                if(oldType!=type){
                    //状态显示
                    var value=state;
                    var currentPage=$("#totalNum").val();
                    var newsType=type;
                    var systemId=system;
                    reMovePage(currentPage);
                    $("#currentPage").val(1);
                    pagingSreach(value,newsType,systemId);
                }
            });
        });

        $("#Selected").blur(function(){
            $("#ddoli").hide();
        });
        $("#Selected2").click(function(){
            oldSystem=$("#Selected2").text();
            if("block" == $("#ddoli2").css("display")){
                $("#ddoli2").hide();
            }else{
                $("#ddoli2").show();
            }
        });

        $("#ddoli2>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected2>span").html($(this).html());
                system=$(this).html();
                $("#ddoli2").hide();
                if(oldSystem!=system){
                    //状态显示
                    var value=state;
                    var currentPage=$("#totalNum").val();
                    var newsType=type;
                    var systemId=system;
                    $("#currentPage").val(1);
                    pagingSreach(value,newsType,systemId);
                }
            });
        });

        $("#Selected2").blur(function(){
            $("#ddoli2").hide();
        });
        $("#Selected3").click(function(){
            oldState= $("#Selected3").text();
            if("block" == $("#ddoli3").css("display")){
                $("#ddoli3").hide();
            }else{
                $("#ddoli3").show();
            }
        });

        $("#ddoli3>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected3>span").html($(this).html());
                state=$(this).html();
                $("#ddoli3").hide();
                if(oldState!=state){
                    //状态显示
                    var value=state;
                    var currentPage=$("#totalNum").val();
                    var newsType=type;
                    var systemId=system;
                    reMovePage(currentPage);
                    $("#currentPage").val(1);
                    pagingSreach(value,newsType,systemId);
                }
            });
        });

        $("#Selected3").blur(function(){
            $("#ddoli3").hide();
        });

        $("#Selected1").click(function(){
            oldState= $("#Selected1").text();
            if("block" == $("#ddoli1").css("display")){
                $("#ddoli1").hide();
            }else{
                $("#ddoli1").show();
            }
        });

        $("#ddoli1>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected1>span").html($(this).html());
                state=$(this).html();
                $("#ddoli1").hide();
                if(oldState!=state){
                    //状态显示
                    var value=state;
                    var currentPage=$("#totalNum").val();
                    var newsType=type;
                    var systemId=system;
                    reMovePage(currentPage);
                    $("#currentPage").val(1);
                    pagingSreach(value,newsType,systemId);
                }
            });
        });

        $("#Selected1").blur(function(){
            $("#ddoli1").hide();
        });
    })

function updateSubmit(){
    $.ajax({
        url : '${ctx}/order/update',
        data:"code="+ $("#updateCode").val()+"&date="+$("#updateDate").val()+"&title="+$("#updateTitle").val()+
        "&note="+$("#updateNote").val()+"&price="+$("#updatePrice").val()+"&total="+$("#updateTotal").val()+"&disCount="+$("#updateDisCount").val()+
        "&time="+$("#Selected2").find("span").text()+"&scheme="+$("Selected1").find("span").text(),
        type : 'POST',
        async:true,
        cache:false,
        dataType : 'json',
        success : function(data) {
            if(data!=null && data!=""){
                if(data.flag) {
                    alert("修改成功")
                    var url = window.location.href;
                    window.location.href = url;
                }
            }
        }
    })
}
</script>
</body>
</html>

<!--添加订单-->

<div class="modal modal-content" id="order-modal" style="width:570px;height: 655px;padding-bottom: 20px;position: fixed;left: 30%;top: 5%;z-index:2;">
    <div >
        <button  id="orderHide-mod" style="background: transparent;color: #009F43;border: 0;position: relative;left: 534px;font-size:25px;">
            <img src="${ctx}/static/background/images/admbutton.png" alt="">
        </button>
    </div>
    <div class="modal-body" style="margin-left: 18px;padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;background: white;position: relative;z-index: 9">

        <div class="inner" style="height: auto">
            <div class="draftartbox">
                <form action="" method="post">
                    <div><span  class="draftartbox-left" >
                编号</span><input  type="text" id="addCode" readonly unselectable="on" placeholder="">
                        <p class="p">系统自行生成编号，不可自定义</p>
                    </div>
                    <div>
                <span  class="draftartbox-left" >
                订单标题</span>
                        <input type="text" id="addTitle" placeholder="">
                        <p class="p">可自定义，也可根据创建拍下的产品定义订单标题即可</p>
                    </div>
                    <div style="margin-top: 14px">
                        <span  class="draftartbox-left">创建订单时间</span>
                        <input  type="text" id="addDate" readonly unselectable="on" placeholder="">
                        <p class="p">自动默认当前创建订单系统时间</p>
                    </div>
                    <div>
                        <span class="draftartbox-left" >产品原价</span>
                        <input  id="addPrice" type="text" placeholder="" onblur="if (this.value == '') {this.value = '   2017年7月1日10：36   ';}" onfocus="if (this.value == '   2017年7月1日10：36   ') {this.value = '';}" value="   2017年7月1日10：36   ">
                        <p class="p">可自定义设置产品原价</p>
                    </div>
                    <div>
                        <span class="draftartbox-left">折扣优惠</span>
                        <input  type="text" id="addDisCount" placeholder="" onblur="if (this.value == '') {this.value = '   ￥299：68';}" onfocus="if (this.value == '   ￥299：68') {this.value = '';}" value="   ￥299：68">
                        <p class="p">可自定义设置产品折扣/优惠卷</p>
                    </div>
                    <div>
                        <span class="draftartbox-left" >订单实付款金额</span>
                        <input type="text" id="addTotal" placeholder="" style="margin-left: 16px" onblur="if (this.value == '') {this.value = '   ￥99：68';}" onfocus="if (this.value == '   ￥99：68') {this.value = '';}" value="   ￥99：68">
                        <p class="p">可自定义设置订单实付金额</p>
                    </div>
                    <div>
                        <div style="width: 0;height: 0;    position: relative;left: -89px;z-index: 4;">
                        <span class="draftartbox-left" >购买时长</span>
                        <div class="ddo Selected" id="Selected"><span style="width: 115px; height: 24px;border: 1px solid #ccc;line-height: 21px;margin-left: 28px;text-align: left">3个月</span></div>
                        <div style="display: none" class="ddoli" id="ddoli">
                            <ul>
                                <li style="border-top: none">6个月</li>
                                <li>1年</li>
                                <li>2年</li>
                                <li>3年</li>
                                <li>5年</li>
                            </ul>
                        </div>
                    </div>
                        <%--<select style="font-weight: 400;color: #666">--%>
                            <%--<option>3个月</option>--%>
                            <%--<option>6个月</option>--%>
                            <%--<option>1年</option>--%>
                            <%--<option>2年</option>--%>
                        <%--</select>--%>
                    </div>
                    <div>
                        <div style="width: 0;height: 0;    position: relative;left: -89px;">
                            <span class="draftartbox-left" >版本信息</span>
                            <div class="ddo Selected" id="Selected3"><span style=" margin-top: 47px;width: 115px; height: 24px;border: 1px solid #ccc;line-height: 21px;margin-left: 28px;text-align: left">体验版</span></div>
                            <div style="display: none" class="ddoli" id="ddoli3">
                                <ul>
                                    <li style="border-top: none">基础版</li>
                                    <li>加强版</li>
                                    <li>商业版</li>
                                    <li>定制版</li>
                                </ul>
                            </div>
                        </div>
                        <%--<select style="font-weight: 400;color: #666">--%>
                        <%--<option>3个月</option>--%>
                        <%--<option>6个月</option>--%>
                        <%--<option>1年</option>--%>
                        <%--<option>2年</option>--%>
                        <%--</select>--%>
                    </div>
                    <div style="clear: both;">
                        <span class="draftartbox-left" >订单状态</span>
                        <label>
                            <select style="font-weight: 400;color: #666">
                                <option>已付款</option>
                            </select>
                        </label>
                        <p style="position: relative;left:150px;top: -24px">不可修改</p>
                    </div>
                    <div>
                        <span class="draftartbox-left" >备注</span>
                        <textarea placeholder="" id="addNote"></textarea>
                        <p style="position: relative;left:430px;top:-40px;height: 0">拍下的用户可留言<br>对该订单的备注及<br>其它要求或注释</p>
                    </div>
                    <input type="button" name=""  onclick="addSubmit()" value="提交" style="margin:0 0 0 210px;width:100px;height: 25px;border: 0;color:#fff;background: #2196d4;" />
                    <button  style="margin:0 0 0 60px;width:100px;height: 25px;border: 0;color:#fff;background: #2196d4;">取消</button>
                </form>
            </div>

        </div>

    </div>
    <%--<div style="width: 100%;height: 100%;background: rgba(0,0,0,0.5);position: fixed;z-index: -4;left: 0;top: 0"></div>--%>
</div>


<!--修改订单-->
<div class="modal modal-content" id="order-modal-alter" style="width:593px;height: 655px;padding-bottom: 20px;position: fixed;left: 30%;top: 5%;z-index:2;">
    <div >
        <button  id="orderHide-alter" style="background: transparent;color: #009F43;border: 0;position: relative;left: 558px;font-size:25px;">
            <img src="${ctx}/static/background/images/admbutton.png" alt="">
        </button>
    </div>
    <div class="modal-body" style="margin-left: 18px;padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;background: white;position: relative;z-index: 9">

        <div class="inner" style="height: auto">
            <div class="draftartbox">
                <form action="" method="post">
                    <div><span  class="draftartbox-left" >
                编号</span><input  id="updateCode" type="text"  readonly unselectable="on" value="" placeholder="">
                        <p class="p">系统自行生成编号，不可自定义</p>
                    </div>
                    <div>
                <span  class="draftartbox-left" >
                订单标题</span>
                        <input type="text" id="updateTitle" placeholder="">
                        <p class="p">可自定义，也可根据创建拍下的产品定义订单标题即可</p>
                    </div>
                    <div style="margin-top: 14px">
                        <span  class="draftartbox-left">创建订单时间</span>
                        <input  type="text" id="updateDate"  readonly unselectable="on" value="" placeholder="">
                        <p class="p">自动默认当前创建订单系统时间</p>
                    </div>
                    <div>
                        <span class="draftartbox-left" >产品原价</span>
                        <input   type="text" placeholder="" id="updatePrice">
                        <p class="p">可自定义设置产品原价</p>
                    </div>
                    <div>
                        <span class="draftartbox-left">折扣优惠</span>
                        <input  type="text"  placeholder="" id="updateDisCount">
                        <p class="p">可自定义设置产品折扣/优惠卷</p>
                    </div>
                    <div>
                        <span class="draftartbox-left" >订单实付款金额</span>
                        <input type="text" id="updateTotal" placeholder="" style="margin-left: 16px" >
                        <p class="p">可自定义设置订单实付金额</p>
                    </div>
                    <div>
                        <div style="width: 0;height: 0;    position: relative;left: -89px;">
                            <span class="draftartbox-left" >购买时长</span>
                            <div class="ddo Selected" id="Selected2"><span style="width: 115px; height: 24px;border: 1px solid #ccc;line-height: 21px;margin-left: 28px;">3个月</span></div>
                            <div style="display: none" class="ddoli" id="ddoli2">
                                <ul>
                                    <li style="border-top: none">6个月</li>
                                    <li>1年</li>
                                    <li>2年</li>
                                    <li>3年</li>
                                    <li>5年</li>
                                </ul>
                            </div>
                        </div>

                    </div>
                    <div>
                        <div style="width: 0;height: 0;    position: relative;left: -89px;z-index: 4;">
                            <span class="draftartbox-left" >版本信息</span>
                            <div class="ddo Selected" id="Selected1"><span style="margin-top: 47px;width: 115px; height: 24px;border: 1px solid #ccc;line-height: 21px;margin-left: 28px;">体验版</span></div>
                            <div style="display: none" class="ddoli" id="ddoli1">
                                <ul>
                                    <li style="border-top: none">基础版</li>
                                    <li>加强版</li>
                                    <li>商业版</li>
                                    <li>定制版</li>
                                </ul>
                            </div>
                        </div>
                        <%--<select style="font-weight: 400;color: #666">--%>
                        <%--<option>3个月</option>--%>
                        <%--<option>6个月</option>--%>
                        <%--<option>1年</option>--%>
                        <%--<option>2年</option>--%>
                        <%--</select>--%>
                    </div>
                    <div style="clear: both;">
                        <span class="draftartbox-left" >订单状态</span>
                        <label>
                            <select style="font-weight: 400;color: #666">
                                <option>已付款</option>
                            </select>
                        </label>
                        <p style="position: relative;left:150px;top: -24px">不可修改</p>
                    </div>
                    <div>
                        <span class="draftartbox-left" >备注</span>
                        <textarea placeholder="" id="updateNote"></textarea>
                        <p style="position: relative;left:430px;top:-40px;height: 0">拍下的用户可留言对该<br>订单的备注及其它要求<br>或注释说明</p>
                    </div>
                    <input type="button" name=""  onclick="updateSubmit()" value="提交" style="margin:0 0 0 210px;width:100px;height: 25px;border: 0;color:#fff;background: #2196d4;" />
                    <button  style="margin:0 0 0 60px;width:100px;height: 25px;border: 0;color:#fff;background: #2196d4;">取消</button>
                </form>
            </div>

        </div>

    </div>
</div>






