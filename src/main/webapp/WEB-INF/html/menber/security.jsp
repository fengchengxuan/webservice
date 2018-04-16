<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>密保设置</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/menber.css" type="text/css">
    <style>
        .mcontainer{
            width: 1210px;
            margin: 0 auto;
            height: 1536px;
        }
        .mse{
            background: #F53292;
        }
        .mse .slma{
            color: white;
        }
    </style>
</head>
<body ng-init="i=false;t=true;w=true;f=true;g=true;h=true">
<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer" id="nava">
        <jsp:include page="/static/front/comm/left.jsp"/>
        <div class="security-main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;会员中心&nbsp;>&nbsp;账号档案&nbsp;>&nbsp;密码设置</span>
            </div>
            <div class="security-setting">
                <div class="sec-set">
                    <div class="ss-item">
                        <span class="setn" >原始密保问题</span>
                        <label>
                        <select name="" id="oldQuestion">
                            <option value="0">广西峰程璇网络科技有限公司的网址是多少？</option>
                            <option value="1">您的出生日期是多少?</option>
                            <option value="2">对您影响最大的人的名字是什么?</option>
                            <option value="3">您的启蒙老师的名字是什么?</option>
                            <option value="4">您的母亲的名字是什么?</option>
                        </select>
                        </label>
                    </div>
                    <div class="ss-item">
                        <span class="setn">原始问题答案</span>
                        <input type="text" placeholder="" id="oldAnswer">
                    </div>
                    <div class="ss-item">
                        <span class="setn">设置新的密保问题</span>
                        <label>
                        <select name="" id="newQuestion">
                        <select name="" id="oldQuestion">
                            <option value="0">广西峰程璇网络科技有限公司的网址是多少？</option>
                            <option value="1">您的出生日期是多少?</option>
                            <option value="2">对您影响最大的人的名字是什么?</option>
                            <option value="3">您的启蒙老师的名字是什么?</option>
                            <option value="4">您的母亲的名字是什么?</option>
                        </select>
                        </label>
                    </div>
                    <div class="ss-item">
                        <span class="setn">设置问题答案</span>
                        <input type="text" id="newAnswer" placeholder="">
                    </div>
                    <div class="ss-item">
                        <span class="setn">确认问题答案</span>
                        <input type="text" id="reAnswer" placeholder="">
                    </div>
                </div>
                <div class="btnbox">
                    <button class="save" style="cursor: pointer">更新保存</button>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/static/front/comm/footer.jsp"/>
</div>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
<script type="text/javascript">
    var oldAnswer="";
    var oldQusertion="";
    $(document).ready(function(){
        $.ajax({
            url : ctx+'/showQuestion',
            type : 'POST',
            dataType : 'json',
            success : function(data) {
                var obj=data.entity;
                if(obj!=null){
                    oldAnswer=obj.answer;
                    oldQusertion=obj.question;
                    $("#oldQuestion").val(obj.question);
                    $("#oldAnswer").val(obj.answer);
                }
            } })
    })
    $(".save").click(function () {
        if($("#newAnswer").val()!=$("#reAnswer").val()){//问题答案
            alert("答案不一致")
            return;
        }
        if($("#newAnswer").val()==$("#oldAnswer").val()){//问题
            alert("新旧答案不能一致");
            return;
        }
        if( oldAnswer!="" && oldAnswer!= $("#oldAnswer").val()){//
          alert("旧答案不正确");
        }
        $.ajax({
            url : ctx+'/saveQuestion',
            type : 'POST',
            data:"question="+$("#newQuestion").val()+"&answer="+$("#newAnswer").val()+ "&confirmAnswer="+$("#reAnswer").val(),
            dataType : 'json',
            success : function(data) {
               if( data.ok){
                   alert("成功")
               }else{
                   alert("失败")
               }
            } })
    })
</script>
</body>
</html>