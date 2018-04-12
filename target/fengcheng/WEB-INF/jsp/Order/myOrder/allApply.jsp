<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>体验申请</title>
    <style>
        .list25{
            background: #3eb7f3;
        }
        .draftartbox div {
            margin-left: 166px;
            margin-top: 18px;
        }

        .draftartbox input,
        .draftartbox textarea,
        .draftartbox select {
            border-radius: 6px;
            border: 1px solid #ccc;
            margin-left: 18px;
        }

        .draftartbox textarea {
            max-width: 341px;
            max-height: 89px;
            width: 341px;
            height: 89px;
        }

        .draftartbox input {
            width: 342px;
            height: 28px;
            color: #666;
        }

        .draftartbox select {
            width: 115px;
            height: 25px;
        }

        p {
            color: red;
            font-size: 10px;
            margin: 5px 0 0 33px;
            position: relative;
            left: 488px;
            top: -30px;
        }

        .draftartbox span {
            width: 122px;
        }

        .application .search {
            float: left;
        }

        .application .search_box {
            display: block;
            width: 930px;
            margin: 20px 0 20px 0;
            overflow: hidden
        }

        .application .search span,
        .application .search button {
            display: inline-block;
            width: 70px;
            height: 40px;
            background-color: #1994D3;
            border-radius: 4px;
            color: #FFFFFF;
            line-height: 40px;
            text-align: center;
            border: none;
        }

        .application .search input {
            display: inline-block;
            width: 260px;
            height: 38px;
            border-radius: 4px;
            margin: 0 20px 0 20px;
            border: 1px solid #999999;
        }

        .application .list_head {
            height: 45px;
            background-color: #1993d4;
        }

        .application .list_head span {
            width: 156px;
            height: 45px;
            line-height: 45px;
            text-align: center;
            color: #FFFFFF;
        }
        .application .list_head>span{
            display: block;
            float: left;
        }

        .application .list_body li span {
            display: inline-block;
            width: 156px;
            text-align: center;
        }

        .application .list_body li:nth-child(odd) {
            background-color: #F5F5F5;
            height: 36px;
            line-height: 36px;
        }

        .application .list_body li:nth-child(even) {
            background-color: #FFFFFF;
            height: 50px;
            line-height: 50px;
        }

        .application .page {
            margin-top: 20px;
            text-align: center;
        }

        .application .page button {
            border: none;
        }

        .application .page span {
            display: inline-block;
            margin-left: 5px;
        }

        .application .page span.on {
            color: red;
        }

        .application .page b {
            font-weight: 400;
            cursor: pointer;
        }

        .pup {
            width: 100%;
            height: 100%;
            position: fixed;
            top: 0;
            background-color: #000;
            background: rgba(0, 0, 0, 0.5);
            text-align: center
        }
        .pup .pup_title{
            background-color: #02a044;
            height: 40px;
            width: 750px;
            position: absolute;
            top: 50%;
            left: 50%;
            margin: 0 auto;
            line-height: 40px;
            color: white;
        }
        select{

            margin-left: 0;
            border-radius: 0;
            -webkit-appearance: none;
        }
        .list_head select{
            display: inline-block;
            width: 90px;
            height: 43px;
            line-height: 45px;
            text-align: center;
            color: #FFFFFF;
            border: 0;
            margin-left: 35px;
        }
        .list_head select option{
            text-align: center;
        }
        .select_model{
            float: left;
            width: 90px;
            height: 42px;
            position: relative;
        }
        .Selected{
            height: 43px;
            line-height: 43px;
            cursor: pointer;
            text-align: center;
            font-size: 14px;
        }
        .ddoli{
            position: absolute;
            left: 0;
            top: 44px;
        }
        .ddoli ul {
            border: 1px solid #ccc;
            border-top: none;
        }
        .ddoli ul li{
            cursor: pointer;
            height: 30px;
            line-height: 30px;
            text-align: center;
            background: #ffffff;
            color: #666;
            font-size: 14px;
            border-top: 1px solid #ccc;
        }
        #ddoli ul li{
            width: 160px;
        }
        .ddoli ul li:hover{
            background: #24a1ee;
            color: #ffffff;
        }
        .contener .admlistbox{
            height: auto;
            padding-bottom: 25px;
        }
    </style>
</head>

<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=false;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=false;allordera=false;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
   <div><jsp:include page="/WEB-INF/jsp/comm/left.jsp"/></div>
<div class="contentbox" style="height: 900px">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>订单管理</span>
            <span>></span>
            <span>免费申请</span>
        </div>
        <div class="inner" style="height: 1126px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;体验申请</div>
            <div class="application">
                <div class="search_box">
                    <div class="search search_user" style="margin-right: 20px;">
                        <span>用户名</span>
                        <input type="text"  id="user" placeholder="">
                        <button onclick="codition()">搜索</button>
                    </div>
                    <div class=" search search_name">
                        <span>公司名称</span>
                        <input type="text"  id="company" placeholder="">
                        <button onclick="codition()">搜索</button>
                    </div>
                </div>
                <div class="list_box">
                    <div class="list_head">
                        <span>序号</span>
                        <span>用户名</span>
                        <span>公司名称</span>
                        <span>申请时间</span>
                        <span>编辑</span>
                        <div class="select_model">
                            <div class="Selected" id="Selected"><span>审核状态</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli">
                                <ul>
                                    <li style="border-top: none">申请中</li>
                                    <li>审核通过</li>
                                    <li>审核未通过</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <ul class="list_body" id="show"><!--显示数据-->
                    </ul>
                </div>
                <div class="page">
                    <span id="totalNum">共3页</span>
                    <b id="oldPage">上一页</b>
                    <span class="on" id="currentPage">1</span>
                    <b id="nextPage">下一页</b>
                </div>

            </div>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#Selected").click(function(){
            if("block" == $("#ddoli").css("display")){
                $("#ddoli").hide();
            }else{
                $("#ddoli").show();
            }
        });

        $("#ddoli>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected>span").html($(this).html());
                $("#ddoli").hide();
            });
        });

        $("#Selected").blur(function(){
            $("#ddoli").hide();
        });
    })
</script>
<script type="text/javascript">
    var applyList;//全部的体验申请
    $(document).ready(function () {
        $("#currentPage").text(1);
        var user=$("#user").val();
        var company=$("#company").val();
        var status=$("#applyStatus").val();
        showApply(user,company,status);
    });
    //查询数据
    function showApply(userName,company,status) {
        $.ajax({
            url : '${ctx}/apply/showApply',
            type : 'POST',
            data : "userName="+userName+"&company="+company+"&status="+status,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null && data!=""){
                   var currentPage= $("#currentPage").text();
                   var totalNum= data.totalNum;
                   var  list= data.applyList;
                   applyList=list;
                   $("#totalNum").val(totalNum);
                   $("#totalNum").text("共"+totalNum+"页");
                    showData(currentPage,totalNum,list);
                }
            }
        })
    }
    function showData(currentPage,totalNum,list) {//显示数据
        $("#currentPage").text(currentPage);
        $("#show").empty();
        var currentPage=currentPage;
        var list =list;
        var totalNum=totalNum;
        var i=(currentPage-1)*20;        //每页显示20条数据
        if(currentPage!=totalNum &&currentPage<totalNum) {       //当前页不等于总页数
            var strip=i+20;
            for (i;i < strip ; i++) {
                var j = i + 1;
                var showRow ="<li><span>"+list[i].id+"</span><span>"+list[i].userName+"</span><span>"+list[i].company+"</span>"+
                "<span>"+list[i].createTime+"</span><span><a href=\"javascript:void(null)\" onclick=\"upDate("+i+")\">详细信息</a></span>"+
                "<span>"+list[i].status+"</span></li>";
                $("#show").append(showRow);
            }
        }
        if(currentPage==totalNum){   //当前页等于总页数
            for(i;i<list.length;i++){
                var j = i + 1;
                var showRow ="<li><span>"+list[i].id+"</span> <span>"+list[i].userName+"</span> <span>"+list[i].company+"</span>"+
                "<span>"+list[i].createTime+"</span> <span><a href=\"javascript:void(null)\" onclick=\"upDate("+i+")\" >详细信息</a></span>"+
                "<span>"+list[i].status+"</span></li>";
                $("#show").append(showRow);
            }
        }
    }
    $("#applyStatus").change(function () { //更改审核
       var status=$(this).val();
        $("#currentPage").text(1);
        var user=$("#user").val();
        var company=$("#company").val();
        showApply(user,company,status);
    });
    function codition(){
        $("#currentPage").text(1);
        var status=$("#applyStatus").val();
        var user=$("#user").val();
        var company=$("#company").val();
        showApply(user,company,status);
    }
    function upDate(data){//审核页面
        window.location.href="${ctx}/admin/experience?id="+applyList[data].id+"&status="+applyList[data].status;
    }
    $("#oldPage").click(function () {
        var currentPage= $("#currentPage").text();  //取当前页码
        var totalNum=$("#totalNum").val();       //取总页码
        var nextPage=currentPage-1;               //上一页的数
        if(currentPage>1){
            $("#currentPage").text(nextPage);
            showData(nextPage,totalNum,applyList)
        }else if(currentPage==1){
            alert("这里是首页哦！！！！");
        }
    });
    //下一页
    $("#nextPage").click(function () {
        var currentPage= $("#currentPage").text();
        var totalNum=$("#totalNum").val();
        var nextPage=parseInt(currentPage)+parseInt(1);
        if(currentPage<totalNum){
            $("#currentPage").text(nextPage);
            showData(nextPage,totalNum,applyList)
        }else if(currentPage==totalNum){
            alert("已经是最后一页了。");
        }
    })
</script>
</body>

</html>