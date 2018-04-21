<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>会员中心</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/menber.css" type="text/css">
    <style>
        .mcontainer{
            width: 1210px;
            margin: 0 auto;
            height: 1536px;
        }
    </style>
</head>
<body>
<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer" id="nava">
        <jsp:include page="/static/front/comm/left.jsp"/>
        <div class="main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;<a href="${ctx}/vips">会员中心</a></span>
            </div>
            <div class="order">
                <div></div>
                <button class="sds"></button>
                <ul>
                    <li class="free"><a href="${ctx}/freeorder">免费体验订单</a>
                        <ul class="tul">
                            <li class="tlm"><a style="margin: 0;" href="">已申请</a></li>
                            <li class="tlm"><a style="margin: 0;" href="">取消申请</a></li>
                            <li class="tlm"><a style="margin: 0;" href="">通过申请</a></li>
                        </ul>
                    </li>
                    <li class="pay"><a href="${ctx}/saleorder">付费订单</a>
                        <ul class="tul">
                            <li class="tlm"><a style="margin: 0;" href="">未付款订单</a></li>
                            <li class="tlm"><a style="margin: 0;" href="">已支付订单</a></li>
                            <li class="tlm"><a style="margin: 0;" href="">退款订单</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="yxyv">
                <div></div>
                <button class="sds"></button>
                <ul>
                    <li><a href="">域名管理</a></li>
                    <li><a href="">虚拟主机</a></li>
                    <li><a href="">云服务器</a></li>
                    <li><a href="">VPS主机</a></li>
                </ul>
            </div>
            <div class="cus">
                <div></div>
                <button class="sds"></button>
                <ul>
                    <li class="test"><a href="">试客申请免费体验</a>
                        <ul class="tul">
                            <li class="tlm"><a style="margin: 0" href="">开放500名免费体验名额</a></li>
                            <li class="tlm"><a style="margin: 0" href="">试客免费体验名额</a></li>
                            <li class="tlm"><a style="margin: 0" href="">网络广告体验名额</a></li>
                        </ul>
                    </li>
                    <li class="ocm"><a href="">主营业务范围</a>
                        <ul class="tul">
                            <li class="tlm" style="width: 210px"><a style="margin: 0;width: 210px" href="">网站建设/程序/APP研发与定制</a></li>
                            <li class="tlm"><a style="margin: 0" href="">网络计划与制定</a></li>
                            <li class="tlm"><a style="margin: 0" href="">网络营销</a></li>
                            <li class="tlm"><a style="margin: 0" href="">网络推广</a></li>
                            <li class="tlm"><a style="margin: 0" href="">网络文案</a></li>
                            <li class="tlm"><a style="margin: 0" href="">视频制作与推广</a></li>
                            <li class="tlm"><a style="margin: 0" href="">搜索优化</a></li>
                            <li class="tlm"><a style="margin: 0" href="">网络媒体</a></li>
                            <li class="tlm"><a style="margin: 0" href="">词条/百科</a></li>
                            <li class="tlm"><a style="margin: 0" href="">网络运营</a></li>
                            <li class="tlm"><a style="margin: 0" href="">数据统计</a></li>
                            <li class="tlm"><a style="margin: 0;width: 210px" href="">网络传媒及线上线下各类广告投放</a></li>
                        </ul>
                    </li>
                    <li><a href="${ctx}/csv">投诉/建议/客服中心</a></li>
                </ul>
            </div>
        </div>
    </div>
    <jsp:include page="/static/front/comm/footer.jsp"/>
</div>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
</body>
</html>