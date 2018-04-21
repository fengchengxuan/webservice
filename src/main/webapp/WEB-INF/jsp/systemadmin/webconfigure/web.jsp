<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>网站基本设置</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/website.css" type="text/css">
     <link rel="stylesheet" href="${ctx}/static/front/css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="${ctx}/static/background/css/top.css">
    <style>
        .list1{
            background:  #3eb7f3;
        }
    </style>
</head>
<script type="text/javascript" src="${ctx}/static/background/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="${ctx}/static/background/js/pd/Determine.js"></script>
<body ng-init="sysa=false;basea=false;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="../../../../static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <a href="${ctx}/admin/administrator"> <span>系统管理</span></a>
            <span>></span>
            <span>网站设置</span>
        </div>
        <div class="inner">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;网站设置</div>
            <div class="nei">
                <form action="" method="post" autocomplete="off">
                    <div class="in">
                        <div class="in-static">静态首页设置</div>
                        <input type="text" placeholder="例如：www.fengcheng7080.com.php  改  www.fengcheng7080.com" name="statics">
                        <span class="note">设置确定不可修改</span>
                    </div>
                    <div class="in"><div class="in-active">动态首页设置</div>
                        <input type="text" placeholder="例如：www.fengcheng7080.com.php  改  www.fengcheng7080.com" name="active">
                        <span class="note">设置确定不可修改</span>
                    </div>
                    <div class="in"><div class="in-sign">网站名称</div>
                        <input type="text" placeholder="例如：广西峰程璇网络科技有限公司" name="definition">
                        <span class="note">设置确定可次修改点击保存即可</span>
                    </div>
                    <div class="in"><div class="in-num">备&nbsp;案&nbsp;号</div>
                        <input type="text" placeholder="例如：桂fkd856" name="certificate">
                        <span class="note">设置确定可次修改点击保存即可</span>
                    </div>
                    <div class="in"><div class="in-web">网站版权</div>
                        <input type="text" placeholder="例如：例如：© 2003-2017 FengCheng7080.com  版权所有" name="copyright">
                        <span class="note">设置确定可次修改点击保存即可</span>
                    </div>
                    <div class="in"><div class="in-mst">网站所有者</div>
                        <input type="text" placeholder="例如：广西峰程璇网络科技有限公司拥有最终解释权" name="owner">
                        <span class="note">设置确定可次修改点击保存即可</span>
                    </div>
                    <div class="btnbox">
                        <button class="save">保存更改</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>