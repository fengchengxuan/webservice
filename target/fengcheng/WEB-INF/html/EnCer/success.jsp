<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>企业认证</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/realname.css" type="text/css">
    <style>
        .mcontainer{
            width: 1210px;
            margin: 0 auto;
            height: 1536px;
        }
        .nameslm .slma{
            color: white;
        }
        .nameslm{
            background: #F53292;
        }
        hr{
            width: 900px;
            height: 2px;
            margin-left: 60px;
            border: none;
            background: #eeeeee;
        }
        .rName-main .rName-choose{
            height: 510px;
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
                <span>首页&nbsp;>&nbsp;会员中心&nbsp;>&nbsp;账号档案&nbsp;>&nbsp;实名认证</span>
            </div>
            <div class="rName-choose">
                <div class="rName-img">
                    <div class="img"></div>
                    <div class="txt">温馨提示</div>
                </div>
                <div class="rName-text">
                    在您实名认证后，会对您账号归属有很大影响。例如，企业使用的帐号做个人实名认证后，遇到人员变动、交接账号、账号欠费或归属纠纷时，可能会对个人/企业都产生不好影响或带来经济损失，后续可能也会影响您提现或者获取发票。（我们会严格保护及加密您的相关信息不会外泄）
                </div>
                <hr>
                <div class="success">
                    <div class="success-txt"><img src="${ctx}/static/front/images/correct.png" alt=""><span>恭喜您已成功通过支付快捷个人认证！</span></div>
                    <div class="success-way">认证途径&nbsp;:&nbsp;支付宝快捷认证</div>
                    <div class="success-name">企业名称&nbsp;:&nbsp;广西霸龙汇科技有限公司</div>
                    <div class="success-number">认证支付宝账号&nbsp;:&nbsp;balonghulke@homt.com</div>
                </div>
                <div class="success-img">
                    <a href="" rel="nofollow"><img src="${ctx}/static/front/images/success.png" alt=""></a>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/static/front/comm/footer.jsp"/>
</div>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
</body>
</html>