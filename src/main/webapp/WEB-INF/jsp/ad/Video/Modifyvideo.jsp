<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>修改视频</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="${ctx}/static/background/css/top.css">
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/column.css" type="text/css">
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=false;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=false;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox" style="height: 100%;">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>广告管理</span>
            <span>></span>
            <span>视频广告</span>
            <span>></span>
            <span>修改视频</span>
        </div>
        <!-- 内部内容 -->

        <div class="inner inner-1" style=" width: 980px;height:100%;background-color: white;padding: 0 0 30px 0;">
            <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;修改视频</div>
            <form action="" method="post">
            <!--焦点一-->
            <div class="focusvideo">修改视频</div>
            <div class="title-tb">
                <span class="title-tb-1">Title 图片标题</span>
                <input type="text" value="" placeholder="">
                <span class="title-tb-2">图片标题可自定义</span></div>

            <div class="title-tb">
                <span class="title-tb-1">KeyWords 图片关键词</span>
                <input type="text" value="" placeholder="">
                <span class="title-tb-2">图片关键词可自定义</span></div>

            <div class="title-tb">
                <span class="title-tb-1">Description 图片描述</span>
                <textarea placeholder=""></textarea>
                <span class="title-tb-2 text2">图片描述可自定义</span></div>

            <div class="title-tb">
                <span class="title-tb-1">图片上传/图片地址</span>
                <input type="text" value="" placeholder="">
                <span class="title-tb-2">可直接复制地址粘贴即可</span>
                <div>
                    <img src="${ctx}/static/background/images/sp.png">
                    <input type="file" name="" class="a-upload" title="选择上传的图片">
                </div>
            </div>

            <div class="title-tb bplj">
                <span class="title-tb-1">图片链接</span>
                <input type="text" value="" placeholder="">
                <span class="title-tb-2">可自定义图片链接地址</span>
                <div><img src=""></div>
            </div>

            <div class="title-tb">
                <button class="button1">保存</button>
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
