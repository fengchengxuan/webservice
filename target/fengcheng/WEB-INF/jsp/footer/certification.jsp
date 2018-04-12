<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>第三方认证</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/certification.css" type="text/css">
    <style>
        .list37{
            background: #3eb7f3;
        }
    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=false;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox" style="height: 100%;">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>广告管理</span>
            <span>></span>
            <span>页脚管理</span>
            <span>></span>
            <span>第三方认证</span>
        </div>
        <!-- 内部内容 -->

        <div class="inner inner-1" style=" width: 980px;height:100%;background-color: white;padding: 0 0 30px 0;">

            <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;第三方认证</div>

 <div class="footer-button">
            <div class="footer-title" style="float: left">第三方权威机构认证</div>
            <button class="add">添加</button>
            <button>删除</button>
</div>

            <div class="offfooter-content">
                <input type="checkbox" class="ft-checkbox" placeholder="" ng-checked="a" style="margin-left:90px">
                <span>名称</span>
                <input type="text" placeholder="" class="nametv">
                <span>链接</span>
                <input type="text" placeholder="" class="atv">
                <span>图片</span>
<div style="position: relative;top: -45px;left: 770px;">
                <img src="${ctx}/static/background/images/TP.png" style="width: 54px;height: 49px;position: relative;right: 65px">
                <input type="file" name=""   class="a-upload" title="选择上传的图片" style="width: 54px;height: 49px;">
</div>
            </div>

            <div class="offfooter-content">
                <input type="checkbox" placeholder="" class="ft-checkbox" ng-checked="a" style="margin-left:90px">
                <span>名称</span>
                <input type="text" placeholder="" class="nametv">
                <span>链接</span>
                <input type="text" placeholder="" class="atv">
                <span>图片</span>
<div style="position: relative;top: -45px;left: 770px;">
                <img src="${ctx}/static/background/images/TP.png" style="width: 54px;height: 49px;position: relative;right: 65px">
                <input type="file" name=""   class="a-upload" title="选择上传的图片" style="width: 54px;height: 49px;">
</div>
            </div>

            <div class="offfooter-content">
                <input type="checkbox" placeholder="" class="ft-checkbox" ng-checked="a" style="margin-left:90px">
                <span>名称</span>
                <input type="text" placeholder="" class="nametv">
                <span>链接</span>
                <input type="text" placeholder="" class="atv">
                <span>图片</span>
<div style="position: relative;top: -45px;left: 770px;">
                <img src="${ctx}/static/background/images/TP.png" style="width: 54px;height: 49px;position: relative;right: 65px">
                <input type="file" name=""   class="a-upload" title="选择上传的图片" style="width: 54px;height: 49px;" >
</div>
            </div>
            <div class="offfooter-content">
                <input type="checkbox" class="ft-checkbox" placeholder="" ng-checked="a" style="margin-left:90px">
                <span>名称</span>
                <input type="text" placeholder="" class="nametv">
                <span>链接</span>
                <input type="text" placeholder="" class="atv">
                <span>图片</span>
<div style="position: relative;top: -45px;left: 770px;">
                <img src="${ctx}/static/background/images/TP.png" style="width: 54px;height: 49px;position: relative;right: 65px">
                <input type="file" name=""   class="a-upload" title="选择上传的图片" style="width: 54px;height: 49px;" >
</div>
            </div>

            <input type="checkbox" placeholder="" class="ft-checkbox quanxuan" ng-model="a" style="margin-left:90px"><span class="" > &nbsp;全选</span>
            <br><br>
            <br><br>


            <div class="footer-button">
                <div class="footer-title" style="float: left">监督检测权威机构认证</div>
                <button class="add">添加</button>
                <button>删除</button>
            </div>

            <div class="offfooter-content">
                <input type="checkbox" placeholder="" class="ft-checkbox" ng-checked="m" style="margin-left:90px">
                <span>名称</span>
                <input type="text" placeholder="" class="nametv">
                <span>链接</span>
                <input type="text" placeholder="" class="atv">
                <span>图片</span>
                <div style="position: relative;top: -45px;left: 770px;">
                    <img src="${ctx}/static/background/images/TP.png" style="width: 54px;height: 49px;position: relative;right: 65px">
                    <input type="file" name=""   class="a-upload" title="选择上传的图片" style="width: 54px;height: 49px;" >
                </div>
            </div>

            <div class="offfooter-content">
                <input type="checkbox" placeholder="" class="ft-checkbox" ng-checked="m" style="margin-left:90px">
                <span>名称</span>
                <input type="text" placeholder="" class="nametv">
                <span>链接</span>
                <input type="text" placeholder="" class="atv">
                <span>图片</span>
                <div style="position: relative;top: -45px;left: 770px;">
                    <img src="${ctx}/static/background/images/TP.png" style="width: 54px;height: 49px;position: relative;right: 65px">
                    <input type="file" name=""   class="a-upload" title="选择上传的图片" style="width: 54px;height: 49px;" >
                </div>
            </div>

            <div class="offfooter-content">
                <input type="checkbox" class="ft-checkbox" placeholder="" ng-checked="m" style="margin-left:90px">
                <span>名称</span>
                <input type="text" placeholder="" class="nametv">
                <span>链接</span>
                <input type="text" placeholder="" class="atv">
                <span>图片</span>
                <div style="position: relative;top: -45px;left: 770px;">
                    <img src="${ctx}/static/background/images/TP.png" style="width: 54px;height: 49px;position: relative;right: 65px">
                    <input type="file" name=""   class="a-upload" title="选择上传的图片" style="width: 54px;height: 49px;" >
                </div>
            </div>
            <div class="offfooter-content">
                <input type="checkbox" placeholder="" class="ft-checkbox"  ng-checked="m" style="margin-left:90px">
                <span>名称</span>
                <input type="text" placeholder="" class="nametv">
                <span>链接</span>
                <input type="text" placeholder="" class="atv">
                <span>图片</span>
                <div style="position: relative;top: -45px;left: 770px;">
                    <img src="${ctx}/static/background/images/TP.png" style="width: 54px;height: 49px;position: relative;right: 65px">
                    <input type="file" name=""   class="a-upload" title="选择上传的图片" style="width: 54px;height: 49px;" >
                </div>
            </div>

            <input placeholder="" class="ft-checkbox quanxuan" type="checkbox" ng-model="m" style="margin-left:90px"><span class=""> &nbsp;全选</span>
            <br><br>
            <br><br>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>
