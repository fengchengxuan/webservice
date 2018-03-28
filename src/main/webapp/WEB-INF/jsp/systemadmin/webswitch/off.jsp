<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>关闭网站</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/switch.css" type="text/css">
    <style>
        .list6{
            background:  #3eb7f3;
        }
    </style>
</head>
<body ng-init="sysa=false;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <a href="${ctx}/admin/administrator">  <span>系统管理</span></a>
            <span>></span>
            <span>关闭网站</span>
        </div>
        <div class="inner">

            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;关闭网站</div>
            <div style="padding: 45px;color: #333;">
                <p style="font-size: 22px;">关闭网站</p>
                <p style="font-size: 16px">停止域名解析及绑定<br>
                    停止绑定（虚拟主机、VPS、云主机、服务器）其中一项即可。</p>
            </div>

            <div style="padding: 25px 45px 45px 45px;color: #333;">
                <p style="font-size: 22px;">技术支持</p>
                <p style="font-size: 16px">联系人名称：峰程<br>
                    联系QQ：1312003765 <br>
                    联系电话：0771-430-0785
                </p>
            </div>



        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>