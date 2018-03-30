<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>票据管理</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/realname.css" type="text/css">
    <style>
        .mcontainer{
            width: 1210px;
            margin: 0 auto;
            height: 1536px;
        }
        .bill .slma{
            color: white;
        }
        .bill{
            background: #F53292;
        }
        hr{
            width: 900px;
            height: 2px;
            margin-left: 60px;
            border: none;
            background: #eeeeee;
        }
        .rName-main .rName-choose-btn{
            width: 100%;
            margin-left: 80px;
        }
        .rName-main .rName-choose-btn div{
            margin-left: 240px;
        }
    </style>
</head>
<body ng-init="i=false;t=true;w=true;f=true;g=true;h=true">
<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer" id="nava">
        <!--<div class="tc"></div>-->
        <jsp:include page="/static/front/comm/left.jsp"/>
        <div class="rName-main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;会员中心&nbsp;>&nbsp;账号档案&nbsp;>&nbsp;票据管理</span>
            </div>
            <div class="rName-choose">
                <div class="rName-img">
                    <div class="img"></div>
                    <div class="txt">温馨提示</div>
                </div>
                <div class="rName-text">
                    <div style="height: 8px"></div>
                    增值税普通发票开给小规模纳税或者开票资料不齐全的购买人，购买人取得后不可以进行进项税额抵扣。若您还有疑问，建议联系贵司财务确认后再提交开票需求。
                </div>
                <hr>
                <div class="rName-choose-btn">
                    <div>根据您的需求选择以下票据管理项目</div>
                    <button style="margin-left: 50px"><a href="${ctx}/billtab" style="cursor: pointer;color: white;font-size: 16px">申请开发票</a></button>
                    <button style="margin-left: 50px"><a href="${ctx}/billtab" style="cursor: pointer;color: white;font-size: 16px">收发发票</a></button>
                    <button style="margin-left: 50px"><a href="${ctx}/billtab" style="cursor: pointer;color: white;font-size: 16px">发票管理</a></button>
                    <button style="margin-left: 50px"><a href="${ctx}/billtab" style="cursor: pointer;color: white;font-size: 16px">发票到哪</a></button>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/static/front/comm/footer.jsp"/>
</div>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
</body>
</html>