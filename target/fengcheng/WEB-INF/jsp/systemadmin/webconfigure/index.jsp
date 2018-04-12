<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>首页设置</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/web.css" type="text/css">
    <style>
        .list2{
            background:  #3eb7f3;
        }
    </style>
</head>
<script type="text/javascript" src="${ctx}/static/background/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="${ctx}/static/background/js/pd/judge.js"></script>
<body ng-init="sysa=false;basea=false;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
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
            <a href="${ctx}/admin/hyperchannel">  <span>网站基本设置</span></a>
            <span>></span>
            <a href="${ctx}/admin/homepage"><span>首页设置</span></a>
        </div>
        <div class="inner">
            <form action="" method="post" autocomplete="off">
                <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;首页设置</div>
                <div style="width: 218px;height: 595px;float: left;margin-top:48px; ">
                    <div class="tt title-1" style="letter-spacing: 5.3px;">标题（Title）</div>

                    <div class="kw title-1" style="margin-top:28px;">关键词（Key Words） </div>

                    <div class="dp title-1" style="margin-top:100px; ">描述（Description）</div>
                </div>
                <div style="width: 218px;height: 595px;float: right;margin-top:30px; ">
                    <div class="tt note1">内容长度为10 个字符，一般不超过80个字符</div>

                    <div class="kw note1" style="margin-top:28px;">内容长度22 个字符，一般不超过100个字符</div>

                    <div class="dp note1" style="margin-top:100px; ">内容长度15 个字符，一般不超过200个字符</div>
                </div>
                <div style="height: 595px;" class="contener-input">
                    <input type="text" placeholder="例如：南宁网站建设_玉林网站建设_柳州网站建设_桂林网站建设_峰程7080" name="title"  style="margin-top: 30px;">
                    <input type="text" placeholder="例如：南宁网站、玉林网站建设、柳州网站建设、桂林网站建设、梧州网站建设、百色网站建设、钦州网站建设、防城港网站建设" name="keywords"  style="margin-top:35px;">
                    <textarea placeholder="例如：广西峰程璇网络科技有限公司承接南宁网站、玉林网站建设、柳州网站建设、桂林网站建设、梧州网站建设、百色网站建设、钦州网站建设、防城港网站建设，只负责广西所有的地区网站建设。" cols="20" rows="5" name="describes"></textarea>
                </div>

                <button style="width: 91px;height: 36px;color:#fff;background: #24a1e4;font-size: 16px;text-align: center;line-height: 36px;float: left;position: relative;margin-left:120px;border:0;  " class="submit">保存</button>
            </form>
        </div>
    </div>
</div>
<jsp:include page="${ctx}/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>