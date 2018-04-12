<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>修改关键词</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/column1.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/keyword.css" type="text/css">
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=false;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox" style="height: 100%;">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>关键词管理</span>
            <span>></span>
            <span>修改关键词</span>
        </div>
        <!-- 内部内容 -->
        <div class="inner inner-1" style=" width: 980px;height:100%;background-color: white;padding: 0 0 30px 0;">
            <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;修改关键词</div>
            <!--关键词名称-->
            <form action="" method="post">
            <div class="title-tb">
                <span class="title-tb-1">关键词</span>
                <input type="text" placeholder="">
                <span class="title-tb-2">可修改关键词名称</span>
            </div>
            <!--自定义标题-->
            <div class="title-tb bt-gjc">
                <span class="title-tb-1">内链接</span>
                <textarea placeholder=""></textarea>
                <span class="title-tb-2 title-tb-2-1">可自定义关键词标题</span></div>

            <!--设置-->
            <div class="title-tb">
                <span class="title-tb-1"><span class="ztsz">设</span>置</span>
                <label>
                <select class="title-tb-3">
                    <option>自动添加</option>
                    <option>手动添加</option>
                </select>
                </label>
                <span class="title-tb-2">可修改关键词设置</span>
            </div>
            <!--状态-->
            <div class="title-tb">
                <span class="title-tb-1"><span class="ztsz">状</span>态</span>
                <label>
                <select class="title-tb-3">
                    <option>正常</option>
                    <option>删除</option>
                </select>
                </label>
                <span class="title-tb-2">可修改设置</span>
            </div>
            <!--操作人-->
            <div class="title-tb">
                <span class="title-tb-1">操作人</span>
                <label>
                <select class="title-tb-3">
                    <option>系统管理员</option>
                    <option>运营管理员</option>
                    <option>普通管理员</option>
                    <option>编辑管理员</option>
                </select>
                </label>
                <span class="title-tb-2">可修改</span>
            </div>


            <div class="title-tb">
                <button class="button1">提交</button>
                <button class="button" type="reset">取消</button>
            </div>
            </form>
        </div>


    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>
