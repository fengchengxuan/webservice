<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>账户余额</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/realname.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/tabfile.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/account.css" type="text/css">
    <style>
        .mcontainer{
            width: 1210px;
            margin: 0 auto;
            height: 1536px;
        }
        .abalance .slma{
            color: white;
        }
        .abalance{
            background: #F53292;
        }
        a:hover{
            list-style: none;
        }
        .rName-choose .rName-text{letter-spacing: 0}
        .thisPlatform .TPitem select{  margin-left: 18px;  font-size: 14px;  color: #333333;  border: none;  width: 300px;  height: 30px;  text-indent: 9px;  background: #f3f3f3;  }
        .thisPlatform .TPitem select option{  border: none;  background: white;  text-indent: 9px;  }
        .account{  margin: 15px 0 0 80px;  }
        hr{width: 825px}
    </style>
</head>
<body>
<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer">
        <jsp:include page="/static/front/comm/left.jsp"/>
        <div class="rName-main" id="nava">
            <div class="way">
                <span>首页&nbsp;>&nbsp;<a href="${ctx}/vips">会员中心</a>&nbsp;>&nbsp;账号档案&nbsp;>&nbsp;账户余额</span>
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
            </div>
            <div class="poption">
                <div class="tab" role="tabpanel">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation"><a href="${ctx}/deposit" aria-controls="home" role="tab">充值</a></li>
                        <li role="presentation"><a href="${ctx}/refund" aria-controls="profile" role="tab">退款</a></li>
                        <li role="presentation"><a href="${ctx}/withdraw" aria-controls="messages" role="tab">提现</a></li>
                        <li role="presentation" class="active"><a href="#Section4" aria-controls="messages" role="tab" data-toggle="tab">余额明细</a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content tabs">
                        <div role="tabpanel" class="tab-pane fade in active" id="Section4">
                            <div class="account"><span class="account-t">现金余额</span>&nbsp;&nbsp;&nbsp;<span class="account-n">¥1655.00</span></div>
                            <div style="height: 15px"></div>
                            <hr>
                            <div class="balanceinfo">
                                <div class="keyword"><span>关键词</span><input type="text" placeholder=""></div>
                                <div class="btype"><span>余额类型</span>
                                    <label>
                                    <select name="" id="">
                                        <option value="">域名</option>
                                        <option value="">虚拟主机</option>
                                        <option value="">云服务器</option>
                                        <option value="">VPS主机</option>
                                        <option value="">租用/共享服务器</option>
                                    </select>
                                    </label>
                                </div>
                                <div class="btime"><span>时间</span><input type="text" placeholder=""><span>到</span><input type="text" placeholder=""></div>
                                <div class="bcount"><span>金额</span><input type="text" placeholder=""><span>-</span><input type="text" placeholder=""></div>
                                <div class="bpages"><span>每页显示</span>
                                    <label>
                                    <select name="" >
                                        <option value="">5条</option>
                                        <option value="">10条</option>
                                        <option value="">20条</option>
                                        <option value="">100条</option>
                                        <option value="">200条</option>
                                    </select>
                                    </label>
                                </div>
                            </div>
                            <table class="balanceinfotable">
                                <thead>
                                <tr>
                                <th class="th1">类型</th>
                                <th class="th2">时间</th>
                                <th class="th3">金额</th>
                                <th class="th4">余额</th>
                                <th class="th5">备注</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>域名</td>
                                    <td>2017年7月30日19：34：26</td>
                                    <td class="red">￥.1665.00</td>
                                    <td class="red">￥.1665.00</td>
                                    <td>余额支付</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
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