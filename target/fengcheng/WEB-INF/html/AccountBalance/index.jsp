<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>账户余额</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/realname.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/account.css" type="text/css">
    <style>
        .mcontainer{  width: 1210px;  margin: 0 auto;  height: 1536px;  }
        .abalance .slma{  color: white;  }
        .abalance{
            background: #F53292;
        }
        .rName-choose{  height: 435px;  }
    </style>
</head>
<body ng-init="i=false;t=true;w=true;f=true;g=true;h=true">
<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer" id="nava">
        <jsp:include page="/static/front/comm/left.jsp"/>
        <div class="rName-main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;会员中心&nbsp;>&nbsp;账号档案&nbsp;>&nbsp;账户余额</span>
            </div>
            <div class="rName-choose">
                <div class="rName-img">
                    <div class="img"></div>
                    <div class="txt">温馨提示</div>
                </div>
                <div class="rName-text">
                    <div style="height: 25px"></div>
                    如域名管理/虚拟主机/云服务器/VPS主机到期或者付费订单到期，账户余额可自动续费，同时方便会员购买及续费。
                </div>
                <hr>
                <div class="rName-choose-btn">
                    <div>根据您的需求选择以下账户管理项目</div>
                    <button style="margin-left: 55px"><a href="${ctx}/deposit" style="cursor: pointer;color: white;font-size: 16px">充值</a></button>
                    <button style="margin-left: 50px"><a href="${ctx}/refund" style="cursor: pointer;color: white;font-size: 16px">退款</a></button>
                    <button style="margin-left: 50px"><a href="${ctx}/withdraw" style="cursor: pointer;color: white;font-size: 16px">提现</a></button>
                    <button style="margin-left: 50px"><a href="${ctx}/info" style="cursor: pointer;color: white;font-size: 16px">余额明细</a></button>
                </div>
                <div style="height: 50px"></div>
                <hr>
                <div class="account"><span class="account-t">现金余额</span>&nbsp;&nbsp;&nbsp;<span class="account-n">¥1655.00</span></div>
            </div>
        </div>
    </div>
    <jsp:include page="/static/front/comm/footer.jsp"/>
</div>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
</body>
</html>