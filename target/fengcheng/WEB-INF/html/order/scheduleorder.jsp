<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/taglib.jsp" %>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>确认订单</title>
    <link rel="stylesheet" href="${ctx}/static/front/payorder/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/payorder/css/order.css" type="text/css">
    <style>
        .footer .content .top{
            height: 10px;
        }
        .logn-show {
            position: fixed;
            display: none;
            width: 100%;
            height: 800px;
            background: transparent;
        }

        .logn-hid {
            cursor: pointer;
            position: relative;
            left: 486px;
            top: -20px;
        }

        .logn-show1 {
            width: 500px;
            height: 210px;
            background: #fff;
            box-shadow: 1px 1px 1px 1px #999999;
            padding: 20px 20px 0 0;
            margin: 280px auto 0 auto;
        }

        .ocontainer table th, td {
            text-align: center;
            height: 30px;
        }

        .mcontainer {
            width: 100%;
            /*margin: 0 auto;*/
            height: 1536px;
        }

        .ocontainer .firm {
            width: 1200px;
            height: auto;
            padding-bottom: 50px;
            padding-bottom: 155px;
        }

        /*#f6f6f6*/
        tr:nth-of-type(even) {
            background: #e3e3e3;
        }

        tr:nth-of-type(even) td:nth-of-type(even) {
            background: #ebebeb;
        }

        .nameslm {
            background: #F53292;
        }

        .nameslm .slma {
            color: white;
        }

        hr {
            width: 900px;
            height: 2px;
            margin-left: 60px;
            border: none;
            background: #eeeeee;
        }

        li {
            float: left;
        }

        .firmtable .th1 {
            width: 360px;
            text-align: center;
        }

        .firmtable .th4 {
            width: 150px;
        }

        .firmtable .th5 {
            width: 170px;
        }

        .firmtable .th3 {
            width: 150px;
        }

        .firmtable .th2 {
            width: 150px;
        }

        .tr-tdz {
            text-align: left;

            text-indent: 52px;
        }

        .firm .lastbox .right button {
            position: relative;
            left: -10px;
        }

        .ocontainer table {
            border-collapse: collapse;
            margin-left: 25px;
        }

        .firm .lastbox .right button {
            margin-top: 2px;
        }
        .bot-text{
            padding: 0 0 0 20px;
            color: #666;
        }
        .bot-text ,.bot-text a{
            text-decoration: none;
            font-size: 20px;
            line-height: 36px;
        }

    </style>
</head>
<body>

<%--注册--%>
<div id="logn-show" class="logn-show">
    <div class="logn-show1">
        <div id="logn-hid" class="logn-hid" onclick="lognhid()">
            <img src="${ctx}/static/background/images/admbutton.png" alt="">
        </div>
        <div class="bot-text">
            很抱歉您不能进行下一步操作，您还不是峰程7080会员，您现在需要进行
            <a href="${ctx}/register" target="_blank" style="color: #f12722;">注册</a>
            或
            <a href="${ctx}/login" target="_blank" style="color: #196deb;">登录</a>
            会员账号即可进行支付操作。
        </div>
    </div>
</div>


<%--实名认证--%>
<div  class="logn-show">
    <div class="logn-show1">
        <div  class="logn-hid" onclick="lognhid()">
            <img src="${ctx}/static/background/images/admbutton.png" alt="">
        </div>
        <div class="bot-text">
            为确保您账户的安全及正常使用，依《网络安全法》相关要求，6月1日起会员账户需绑定手机及
            <a href="${ctx}/via" target="_blank" style="color: #f12722;">
            实名认证
            </a>
            。如您还未绑定及实名认证，请尽快完成，感谢您的理解及支持！
        </div>
    </div>
</div>


<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div style="height: 50px"></div>
    <div class="mcontainer">

        <div class="ocontainer">
            <div class="way">首页&nbsp;>&nbsp;您从我们这里得到什么&nbsp;>&nbsp;网站建设/程序/APP研发与定制</div>
            <div class="schedule"><img src="${ctx}/static/front/images/schedule.png" alt=""></div>
            <div class="firm">
                <div style="height: 20px"></div>
                <table class="firmtable">
                    <thead>
                    <tr>
                        <th class="th1">产品名称</th>
                        <th class="th2">购买数量</th>
                        <th class="th3">服务标准</th>
                        <th class="th4">购买时长</th>
                        <th class="th5">折扣/优惠金额</th>
                        <th class="th6" style="width: 170px">订单金额</th>
                    </tr>

                    </thead>
                    <tbody id="showList">
                    <tr style="margin-left: 40px">
                        <td>网站建设/程序/APP研发与定制-网站建设</td>
                        <td>1</td>
                        <td>方案三</td>
                        <td>3年</td>
                        <td class="red">¥50.00</td>
                        <td class="red">¥1615.00</td>
                    </tr>
                    <tr style=" clear: both;margin-left: 40px;">
                        <td style="width: 266px;font-size: 12px;color: red;">
                            <input type="checkbox">&nbsp;赠送5篇品牌新闻稿+赠送5篇产品新闻稿
                            <input type="checkbox">&nbsp;域名2个
                            <input type="checkbox">&nbsp;赠送优惠卷50元请联系客服经理修改价格
                        </td>
                    </tr>
                    </tbody>
                </table>
                <!--<div style="height: 35px"></div>-->
                <%--<div class="gifts">--%>
                <%--<div><input type="checkbox">&nbsp;赠送5篇品牌新闻稿+赠送5篇产品新闻稿</div>--%>
                <%--<div><input type="checkbox">&nbsp;域名2个</div>--%>
                <%--<div><input type="checkbox">&nbsp;赠送优惠卷50元请联系客服经理修改价格</div>--%>
                <%--</div>--%>
                <div class="lastbox">
                    <div class="reminder">重要提醒：每个帐号只能设置一个有效的发票抬头进行使用。<br>发票抬头在 用户中心-发票管理中设置</div>
                    <div class="right">
                        <div style="margin:0 0 0 266px;color: red;font-size: 12px" id="qindagou"></div>
                        <button><a href="javascript:void(null)" onclick="goPay()">去支付</a></button>
                        <div class="count">
                            <span class="title">订单金额&nbsp;：&nbsp;</span>
                            <span class="num">¥</span>
                        </div>
                        <div class="agreement"><input id="agreement" type="checkbox"><a href="">&nbsp;&nbsp;我已阅读，理解并接受www.fengcheng7080.com网站合作协议）</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/static/front/comm/footer.jsp"/>
</div>
<script src="${ctx}/static/front/js/angular.min.js"></script>
<script type="text/javascript">
    var price;
    var list = [];
    var num;
    var title;

    $(document).ready(function () {
        $.ajax({
            url: ctx + '/Product/findPay',
            type: 'POST',
            async: true,
            cache: false,
            dataType: 'json',
            success: function (data) {
                if (data != null) {
                    price = data.price;
                    list = data.inofEntityList;
                    givenFree = data.givenfreeList;
                    num = data.num;
                    title = data.proTitle;
                    showList(title, list, givenFree);
                    $(".num").text("¥" + price);
                }
            }
        })
    })

    function showList(title, list, givenFree) {
        $("#showList").empty();
        for (var i = 0; i < list.length; i++) {
            var row = " <tr style='height: 48px;'>" +
                "<td style='font-size: 14px'>" + title + "-" + list[i].demand + "</td>" +
                "<td style='font-size: 14px'>" + num + "</td>" +
                "<td style='font-size: 14px'>" + list[i].service + "</td>" +
                "<td style='font-size: 14px'>" + list[i].timeValue + "</td>";
            if (list[i].preferential == null || list[i].preferential == "") {//优惠金额判断
                row = row + "<td style='font-size: 14px'>¥0</td>";
            } else {
                row = row + "<td style='font-size: 14px'>¥" + (list[i].preferential * num) + "</td>";
            }
            row = row + "<td style='font-size: 14px'>¥" + (list[i].servicePrice - list[i].preferential) * num + "</td>" +
                "</tr>";
            var row2 = "<tr>";
            for (var j = 0; j < givenFree.length; j++) {//赠送
                if (list[i].id == givenFree[j].proInfo) {
                    row2 = row2 + "<td style='color: red;background: #fff;height: 22px' class='tr-tdz'><input type=\"checkbox\" >&nbsp;" + givenFree[j].type + "</td>" +
                        "<tr>"
                }
            }
            row2 = row2 + "</tr>";
            $("#showList").append(row);
            $("#showList").append(row2);
            $("#showList").find("input[type='checkbox']").prop("checked", true);
        }
    }

    var userName = '${sessionScope.userName}';

    function goPay() {//支付页面
        <%--if(confirm("为确保您账户的安全及正常使用，依《网络安全法》相关要求，6月1日起会员账户需绑定手机及实名认证。如您还未绑定及实名认证，请尽快完成，感谢您的理解及支持！")){--%>
        <%--window.location.href="${ctx}/vips";--%>
        <%--}else{--%>
        <%--};--%>
        if ($('#agreement').is(':checked')) {
            if (userName == null || userName == "") {
                document.getElementById('logn-show').style.display = "block";
                return false;
            }
            window.location.href = "${ctx}/payorder";
        } else {

            $("#qindagou").html("请勾选网站协议").css("color", 'red');

        }
    }

    function lognhid() {
        document.getElementById('logn-show').style.display = "none";
    }

</script>


</body>
</html>
