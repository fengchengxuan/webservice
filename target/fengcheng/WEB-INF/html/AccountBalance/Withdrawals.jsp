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
            </div>
            <div class="poption">
                <div class="tab" role="tabpanel">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation"><a href="${ctx}/deposit" aria-controls="home" role="tab">充值</a></li>
                        <li role="presentation"><a href="${ctx}/refund" aria-controls="profile" role="tab">退款</a></li>
                        <li role="presentation" class="active"><a href="${ctx}/withdraw" aria-controls="messages" role="tab" data-toggle="tab">提现</a></li>
                        <li role="presentation"><a href="${ctx}/info" aria-controls="messages" role="tab">余额明细</a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content tabs">
                        <div role="tabpanel" class="tab-pane fade in active" id="Section3">
                            <div class="account" style="float: left"><span class="account-t">现金余额</span>&nbsp;&nbsp;&nbsp;<span class="account-n">¥00.00</span></div>
                            <div class="account" style="float: right;margin-right: 100px"><span class="account-t">可提现余额</span>&nbsp;&nbsp;&nbsp;<span class="account-n">¥00.00</span></div>
                            <div style="height: 57px"></div>
                            <hr>
                            <div>
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active2"><a href="#application" aria-controls="home" role="tab" data-toggle="tab">申请提现</a></li>
                                    <li role="presentation"><a href="${ctx}/wsuccess" aria-controls="profile" role="tab">成功提现</a></li>
                                    <li role="presentation"><a href="${ctx}/wlist" aria-controls="profile" role="tab">提现记录</a></li>
                                </ul>
                                <div class="tab-content tabs">
                                    <div class="tab-pane fade in active" id="application">
                                        <div class="thisPlatform">
                                            <div class="TPitem">
                                                <span class="tpi-name">提现金额</span>
                                                <input type="text" placeholder="">
                                            </div>
                                            <div  class="TPitem">
                                                <span class="tpi-name">提现银行卡类型</span>
                                                <input type="text" placeholder="">
                                            </div>
                                            <div  class="TPitem">
                                                <span class="tpi-name">提现银行卡号</span>
                                                <input type="text" placeholder="">
                                            </div>
                                            <div  class="TPitem">
                                                <span class="tpi-name">银行卡账户姓名</span>
                                                <input type="text" placeholder="">
                                            </div>
                                            <div  class="TPitem">
                                                <span class="tpi-name">验证码</span>
                                                <input type="text" id="input" placeholder="">
                                                <input type="button" id="checkCode" class="code" style="cursor: pointer" onclick="createCode()" />
                                            </div>
                                            <div  class="TPitem">
                                                <span class="tpi-name">手机号码</span>
                                                <input type="text" placeholder="">
                                                <button class="get" style="cursor: pointer">获取校验码</button>
                                            </div>
                                            <div  class="TPitem">
                                                <span class="tpi-name">手机验证码</span>
                                                <input type="text" placeholder="">
                                                <span style="display: block;float: right;width: 186px;height: 33px;line-height: 15px;margin-right: 38px">为了保证您账户余额提现安全，请您输入图片中验证码及短信验证码</span>
                                            </div>
                                                <div class="btnbox" style="margin-top: 40px">
                                                    <button class="save" onclick="validate()" style="cursor: pointer">确认提现</button>
                                                    <button class="cancel" style="cursor: pointer">取消提现</button>
                                                </div>
                                        </div>
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
<script type="text/javascript">
    var code; //在全局定义验证码
    //产生验证码
    window.onload = function() {
        createCode();
        var showss = document.getElementById('success');
        var showh = document.getElementById('history');
        showss.style.display = 'none';
        showh.style.display = 'none';
    };

    function createCode() {
        code = "";
        var codeLength = 4; //验证码的长度
        var checkCode = document.getElementById("checkCode");
        var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
                'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //随机数
        for(var i = 0; i < codeLength; i++) { //循环操作
            var charIndex = Math.floor(Math.random() * 36); //取得随机数的索引
            code += random[charIndex]; //根据索引取得随机数加到code上
        }
        checkCode.value = code; //把code值赋给验证码
    }
    //校验验证码
    function validate() {
        var showss = document.getElementById('success');
        var showh = document.getElementById('history');
        showss.style.display = 'block';
        showh.style.display = 'block';
        var inputCode = document.getElementById("input").value.toUpperCase(); //取得输入的验证码并转化为大写
        if(inputCode.length <= 0) { //若输入的验证码长度为0
            alert("请输入验证码！"); //则弹出请输入验证码
        } else if(inputCode != code) { //若输入的验证码与产生的验证码不一致时
            alert("验证码输入错误！"); //则弹出验证码输入错误
            createCode(); //刷新验证码
        } else { //输入正确时
            alert("^-^"); //弹出^-^
        }
    }
</script>
</body>
</html>