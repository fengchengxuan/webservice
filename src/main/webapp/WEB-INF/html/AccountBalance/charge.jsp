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
        #Section1{  height: 560px;  }
        .account{  margin: 15px 0 0 80px;  }
        hr{width: 825px}
    </style>
</head>
<body>
<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer" id="nava">
        <jsp:include page="/static/front/comm/left.jsp"/>
        <div class="rName-main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;<a src="${ctx}/vips">会员中心</a>&nbsp;>&nbsp;账号档案&nbsp;>&nbsp;账户余额</span>
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
                        <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab">充值</a></li>
                        <li role="presentation"><a href="${ctx}/refund" aria-controls="profile" role="tab">退款</a></li>
                        <li role="presentation"><a href="${ctx}/withdraw" aria-controls="messages" role="tab">提现</a></li>
                        <li role="presentation"><a href="${ctx}/info" aria-controls="messages" role="tab">余额明细</a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content tabs">
                        <div role="tabpanel" class="tab-pane fade in active" id="Section1">
                            <div class="account"><span class="account-t">现金余额</span>&nbsp;&nbsp;&nbsp;<span class="account-n">¥1655.00</span></div>
                            <div style="height: 15px"></div>
                            <hr>
                            <div class="Rechargelist">
                                <div class="Rechargelist-title">根据您充值的方便请您选着合适自己的充值类型</div>
                                <ul>
                                    <li><a href="">个人银行</a></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_01.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_02.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_03.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_04.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_05.png" alt=""></li>
                                </ul>
                                <ul>
                                    <li><a href="">企业银行</a></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_01.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_02.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_03.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_04.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_05.png" alt=""></li>
                                </ul>
                                <ul>
                                    <li><a href="">第三方支付平台</a></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_06.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_07.png" alt=""></li>
                                </ul>
                                <div class="thisPlatform">
                                    <div  class="TPitem" style="margin-top: 40px">
                                        <button style="cursor: pointer">确认</button>
                                    </div>
                                </div>
                            </div>
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