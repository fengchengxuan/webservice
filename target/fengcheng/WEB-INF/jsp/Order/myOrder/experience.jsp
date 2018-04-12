<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>

<head>
    <meta charset="UTF-8">
    <title>体验跳转</title>
    <style>
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



        .page b {
            font-weight: 400;
            cursor: pointer;
        }
        .experience ul{
            width: 700px;
            margin: 0 auto;
            overflow: hidden;
            margin-top: 30px;
        }
        .experience ul li{
            float: left;
            width: 300px;
            margin-bottom: 35px;

        }
        .experience ul li:nth-child(odd){
            margin-right: 30px;

        }
        .experience ul span{
            display: inline-block;
            width: 80px;
            vertical-align: top;
            margin-top: 10px;
            margin-right: 10px;
        }
        .experience ul b{
            display: inline-block;
            width: 200px;
            height: 40px;
            text-align: center;
            line-height: 40px;
            border: 1px solid #999999;
            border-radius:4px ;
        }
        .experience .experience_li{
            width: 630px;
        }
        .experience .experience_li b{
            width: 530px;
            height:106px ;
        }
        .apply_btn{
            text-align: center;
        }
        .apply_btn div{
            display: inline-block;
            width: 160px;
            height: 37px;
            border-radius:4px ;
            background-color: #1994D3;
            color: #FFFFFF;
            line-height: 37px;
            text-align: center;
            margin-right: 30px;

        }
    </style>
</head>

<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=false;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=false;allordera=false;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <div>
        <div><jsp:include page="/WEB-INF/jsp/comm/left.jsp"/></div>
    </div>
    <div class="contentbox" style="height: 900px">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>订单管理</span>
            <span>></span>
            <span>我的全部订单</span>
            <span>></span>
            <span>免费申请</span>
        </div>
        <div class="inner" style="height: 1126px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;体验跳转</div>
            <div class="experience">
                <ul>
                    <li>
                        <span>用户名</span>
                        <b id="user"></b>
                    </li>
                    <li>
                        <span>公司类型</span>
                        <b id="companyType"></b>
                    </li>
                    <li>
                        <span>申请人类型</span>
                        <b id="application"></b>
                    </li>
                    <li>
                        <span>公司名称</span>
                        <b id="company"></b>
                    </li>
                    <li>
                        <span>经营地址</span>
                        <b id="address"></b>
                    </li>
                    <li>
                        <span>固定电话</span>
                        <b id="fHpone"></b>
                    </li>
                    <li>
                        <span>手机电话</span>
                        <b id="mHpone"></b>
                    </li>
                    <li>
                        <span>邮箱</span>
                        <b id="email"></b>
                    </li>
                    <li>
                        <span>公司网址</span>
                        <b id="website"></b>
                    </li>
                    <li>
                        <span>QQ/微信</span>
                        <b id="userQQ"></b>
                    </li>
                    <li class="experience_li">
                        <span>免费体验及服务时间</span>
                        <b id="appContent"></b>
                    </li>
                </ul>


            </div>
            <div class="apply_btn">
                <div id="adopt">审核通过</div>
                <div id="refuse">审核未通过</div>
            </div>

        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        var applyId='${param.id}';
        if(applyId!=null &&applyId!=""){
            $.ajax({
                url : '${ctx}/apply/showApplyInfo',
                type : 'POST',
                data : "id="+applyId,
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if(data!=null && data!=""){
                       $("#user").text(data.userName);
                       $("#companyType").text(data.companyType);
                       $("#application").text(data.application);
                       $("#company").text(data.company);
                        $("#fHpone").text(data.fHpone);
                        $("#mHpone").text(data.mHpone);
                        $("#email").text(data.email);
                        $("#website").text(data.website);
                        $("#userQQ").text(data.userQQ);
                        $("#appContent").text(data.appContent);
                        $("#address").text(data.address)
                    }
                }
            })
        }
    });
    $("#adopt").click(function () {//通过
        var submit= $(this).text();
        changeStatus(submit)
    });
    $("#refuse").click(function () {//未通过
        var submit=$(this).text();
        changeStatus(submit)
    });
    //审批
    function changeStatus(submit) {
     var  id= '${param.id}';
     var status='${param.status}';
        if(status!="申请中"){
         alert("已经审核过了,不能重复审核");
         window.location.href="${ctx}/admin/allApply";
         return ;
        }
    if(id==null||id==""){
         alert("没有申请信息");
     return;
     }
        $.ajax({
            url : '${ctx}/apply/upStatus',
            type : 'POST',
            data : "id="+id+"&status="+submit,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                    alert(data[0]);
                    window.location.href="${ctx}/admin/allApply"
            }
    })
        }
</script>
</body>
</html>