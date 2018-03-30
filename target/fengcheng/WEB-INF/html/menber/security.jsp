<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>密保设置</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/menber.css" type="text/css">
    <style>
        .mcontainer{
            width: 1210px;
            margin: 0 auto;
            height: 1536px;
        }
        .mse{
            background: #F53292;
        }
        .mse .slma{
            color: white;
        }
    </style>
</head>
<body ng-init="i=false;t=true;w=true;f=true;g=true;h=true">
<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer" id="nava">
        <jsp:include page="/static/front/comm/left.jsp"/>
        <div class="security-main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;会员中心&nbsp;>&nbsp;账号档案&nbsp;>&nbsp;密码设置</span>
            </div>
            <div class="security-setting">
                <div class="sec-set">
                    <div class="ss-item">
                        <span class="setn">原始密保问题</span>
                        <label>
                        <select name="" >
                            <option value="">广西峰程璇网络科技有限公司的网址是多少？</option>
                            <option value="">您的出生日期是多少?</option>
                            <option value="">对您影响最大的人的名字是什么/</option>
                            <option value="">您的启蒙老师的名字是什么?</option>
                            <option value="">您的母亲的名字是什么?</option>
                        </select>
                        </label>
                    </div>
                    <div class="ss-item">
                        <span class="setn">原始问题答案</span>
                        <input type="text" placeholder="">
                    </div>
                    <div class="ss-item">
                        <span class="setn">设置新的密保问题</span>
                        <label>
                        <select name="" id="">
                            <option value="">
                                您的出生日期是多少？
                            </option>
                            <option value="">广西峰程璇网络科技有限公司的网址是多少？</option>
                            <option value="">您的生日是?</option>
                            <option value="">对您影响最大的人的名字是什么/</option>
                            <option value="">您的启蒙老师的名字是什么?</option>
                            <option value="">您的母亲的名字是什么?</option>
                        </select>
                        </label>
                    </div>
                    <div class="ss-item">
                        <span class="setn">设置问题答案</span>
                        <input type="text" placeholder="">
                    </div>
                    <div class="ss-item">
                        <span class="setn">确认问题答案</span>
                        <input type="text" placeholder="">
                    </div>
                </div>
                <div class="btnbox">
                    <button class="save" style="cursor: pointer">更新保存</button>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/static/front/comm/footer.jsp"/>
</div>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
</body>
</html>