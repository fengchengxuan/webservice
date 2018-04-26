<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>版权所有</title>
     <link rel="stylesheet" href="${ctx}/static/front/css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="${ctx}/static/background/css/top.css">
    <link rel="stylesheet" href="${ctx}/static/background/css/copyright.css" type="text/css">
    <style>
        .list38{
            background: #3eb7f3;
        }
    </style>
</head>
<script type="text/javascript" src="${ctx}/static/background/js/jquery-3.2.1.js"></script>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=false;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>页脚管理</span>
            <span>></span>
            <span>版权所有</span>
        </div>
        <div class="inner">
            <div class="title"><span style="position: relative;left: 15px">版权所有</span></div>
            <div style="width: 218px;height: 595px;/*background: red;*/float: left;margin-top:48px; ">
                <div class="tt title-1" style="">网 站 名 称</div>

                <div class="kw title-1" style="margin-top: 35px;letter-spacing: 4.9px"> 备 案 号</div>

                <div class="dp title-1" style="margin-top: 35px;">网 站 版 权</div>

                <div class="dp title-1" style="margin-top: 35px;letter-spacing: 2px">网站所有者</div>
            </div>
            <div style="height: 362px;" class="contener-input">
                <input type="text" placeholder="" name="webname"  style="margin-top:30px;height: 35px" id="webname"><span> &nbsp;可修改</span>
                <input type="text" placeholder="" name="icp"  style="margin-top:30px;height: 35px" id="icp"> <span> &nbsp;可修改</span>
                <input type="text" placeholder="" name="copyrighted"  style="margin-top:30px;height: 35px" id="copyrighted"><span> &nbsp;可修改</span>
                <input type="text" placeholder="" name="master"  style="margin-top:30px;height: 35px" id="master"><span> &nbsp;可修改</span>
                           </div>
            <button style="width: 91px;height: 36px;color:#fff;background: #24a1e4;font-size: 18px;text-align: center;line-height: 36px;border-radius: 6px;float: left;position: relative;margin-left:21%;border:0; cursor: pointer  " class="sub" >保存</button>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/static/background/js/pd/copyright.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $.ajax({
            url: ctx +'/copyright/showInfo',
            type: 'POST',
            dataType: "json",
            cache: false,
            success: function (data) {
                if (data.flag) {
                    var copyright = data.message;
                    $("#webname").val(copyright.webname);
                    $("#icp").val(copyright.icp);
                    $("#copyrighted").val(copyright.copyrighted);
                    $("#master").val(copyright.master);
                }
            }
        })
    });
</script>
</body>
</html>