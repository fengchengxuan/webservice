<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>免费体验订单</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/order.css" type="text/css">
    <style>
        .mcontainer{
            width: 1210px;
            margin: 0 auto;
            height: 1536px;
        }
        .limfty .slma{
            color: #fff;
        }
        .limfty{
            background: #F53292;
        }
        a:hover{
            list-style: none;
        }
    </style>
</head>
<body>
<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer" id="nava">
        <jsp:include page="/static/front/comm/left.jsp"/>
        <div class="free-main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;会员中心&nbsp;>&nbsp;我的订单&nbsp;>&nbsp;免费体验订单</span>
            </div>
            <div class="freebox">
                <div style="height: 15px"></div>
                <table class="freetable">
                    <thead>
                    <tr>
                        <th class="th1">产品名称</th>
                        <th class="th2">购买数量</th>
                        <th class="th3">服务标准</th>
                        <th class="th4">购买时长</th>
                        <th class="th5">折扣/优惠</th>
                        <th class="th6">订单金额</th>
                        <th class="th7">订单时间</th>
                        <th class="th8">
                            <label>
                                <select name="" >
                                    <option value="">付款状态</option>
                                    <option value="">未付款</option>
                                    <option value="">已付款</option>
                                    <option value="">退款申请</option>
                                </select>
                            </label>
                        </th>
                        <th class="th9">
                            <label>
                                <select name="" >
                                    <option value="">审核状态</option>
                                    <option value="">已申请</option>
                                    <option value="">通过审核</option>
                                    <option value="">未审核</option>
                                </select>
                            </label>
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="tr1">
                        <td>网站建设</td>
                        <td>1</td>
                        <td>免费体验</td>
                        <td>1年</td>
                        <td>¥550.00</td>
                        <td>¥550.00</td>
                        <td>2017年5月26日<br>12：00:45</td>
                        <td>未付款</td>
                        <td>已申请</td>
                    </tr>
                    <tr class="tr2">
                        <td>网站建设</td>
                        <td>1</td>
                        <td>免费体验</td>
                        <td>1年</td>
                        <td>¥550.00</td>
                        <td>¥550.00</td>
                        <td>2017年5月26日<br>12：00:45</td>
                        <td>未付款</td>
                        <td>已申请</td>
                    </tr>
                    </tbody>
                </table>
                <div class="all">当页共计20条信息</div>
                <div class="pages">
                    <span id="totalNum"></span>
                    <span id="oldPage">上一页</span>
                    <span id="currentPage"></span>
                    <span id="nextPage">下一页</span>
                    <span><a href="${ctx}/vip">返回</a></span>
                </div>
                <div style="height: 15px"></div>
            </div>
        </div>
    </div>
    <jsp:include page="/static/front/comm/footer.jsp"/>
</div>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>