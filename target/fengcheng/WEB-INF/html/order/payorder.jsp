<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/taglib.jsp" %>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>确认订单</title>
    <link rel="stylesheet" href="${ctx}/static/front/payorder/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/payorder/css/order.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/bootstrap.min.css" type="text/css">
    <style>
        .mcontainer {
            width: 100%;
            height: 1536px;
        }

        .nameslm {
            background: #F53292;
        }
        td{
            border-left: 1px solid #333;
            border-right: 1px solid #333;
        }
        table{
            border-bottom: 1px solid #333;
        }
        .nameslm .slma {
            color: white;
        }
        .ocontainer .oinfo{
            height: auto;
        }
        hr {
            width: 864px;
            height: 2px;
            border: none;
            background: #eeeeee;
        }
        .tab{
            width: 864px;
            margin-left: 40px;
            margin-top: 20px;
        }
        .tab .nav-tabs li{
            margin: 0;
        }
        .tab .nav-tabs li a{
            font-size: 16px;
            color: #656565;
            background: #fff;
            padding: 10px 0;
            margin-left: 30px;
            font-weight: bold;
            border-radius: 0;
            border: none;
            text-transform: uppercase;
            position: relative;
        }
        .tab .nav-tabs li a:hover{
            border-top: none;
            border-bottom: none;
        }
        .tab .nav-tabs li.active a,
        .tab .nav-tabs li.active a:hover{
            border: none;
            color: #333333;
            border-bottom: 3px solid #F53292;
        }
        .tab .tab-content{
            font-size: 13px;
            color: #999898;
            line-height: 25px;
            background: #fff;
            border-top: none;
        }
        @media only screen and (max-width: 480px){
            .tab .nav-tabs li{
                width: 100%;
                text-align: center;
            }
            .tab .nav-tabs li.active a,
            .tab .nav-tabs li.active a:after,
            .tab .nav-tabs li.active a:hover{
                border: none;
            }
        }
        .txt{
            text-indent: 4px;
            text-align: left;
        }
        .left{text-indent: 20px;
            text-align: left;
        }
        .ocontainer .oinfo {
            width: 1200px;
            margin-left: -115px;
        }.oinfotable th {
             width: 160px;
         }
    </style>
</head>

<body>
<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div style="height: 50px"></div>
    <div class="mcontainer">
        <div class="ocontainer">
            <div class="way">首页&nbsp;>&nbsp;您从我们这里得到什么&nbsp;>&nbsp;网站建设/程序/APP研发与定制</div>
            <div class="schedule"><img src="${ctx}/static/front/images/schedule-02.png" alt=""></div>
            <div class="oinfo">
                <div style="height: 20px"></div>
                <table class="oinfotable">
                    <thead>
                    <tr>
                        <th>订单编辑号</th>
                        <th class="th2">订单详情</th>
                        <th>服务标准</th>
                        <th>购买时长</th>
                        <th>数量</th>
                        <th>折扣/优惠金额</th>
                        <th>订单金额</th>
                        <th>订单时间</th>
                    </tr>

                    </thead>
                    <tbody id="order">


                    <tr>
                        <td rowspan="5">fc00002</td>
                        <td >
                            网站建设/程序及功能/微信小程序/APP研发与定制
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>

                    </tr>
                    <tr>
                        <td style="border-top:1px dashed #656565; ">网站建设</td>
                        <td style="border-top:1px dashed #656565; ">基础版</td>
                        <td style="border-top:1px dashed #656565; ">1年</td>
                        <td style="border-top:1px dashed #656565; ">1</td>
                        <td style="color: red;border-top:1px dashed #656565; ">￥50.00</td>
                        <td style="color: red;border-top:1px dashed #656565; ">￥1615.00</td>
                        <td style="border-top:1px dashed #656565; ">2017年5月22日14：36：23</td>
                    </tr>
                    <tr>
                        <td style="border-top:1px dashed #656565;">程序及功能/微信小程序</td>
                        <td style="border-top:1px dashed #656565;">加强版</td>
                        <td style="border-top:1px dashed #656565;">1年</td>
                        <td style="border-top:1px dashed #656565;">1</td>
                        <td style="color: red;border-top:1px dashed #656565;">￥150.00</td>
                        <td style="color: red;border-top:1px dashed #656565;">￥3615.00</td>
                        <td style="border-top:1px dashed #656565;">2017年5月22日14：36：23</td>
                    </tr>
                    <tr>
                        <td style="border-top:1px dashed #656565;">APP研发与定制</td>
                        <td style="border-top:1px dashed #656565;">商业版</td>
                        <td style="border-top:1px dashed #656565;">1年</td>
                        <td style="border-top:1px dashed #656565;">1</td>
                        <td style="color: red;border-top:1px dashed #656565;">￥250.00</td>
                        <td style="color: red;border-top:1px dashed #656565;">￥9615.00</td>
                        <td style="border-top:1px dashed #656565;">2017年5月22日14：36：23</td>
                    </tr>
                    <tr style="border-bottom:1px dashed #656565;">
                        <td style="border-top:1px dashed #656565;">
                            <div>
                                <div style="float: left;margin-top: 12px;font-size: 14px;color: red">
                                    <img src="${ctx}/static/front/images/s.png" alt="" style="width: 33px">
                                </div>
                                <div style="float: right;width: 123px;height: 220px;">
                                    <p>1、注册APP版权，并根据系统升级要求，一年内升级2个版本。</p>
                                    <p>2、上传目前各大应用APP市场及商店，并保持每一个上传应用市场及应用商店有10000个下载量。</p>
                                    <p>3、技术服务及指导APP使用为期二年。</p>
                                </div>
                            </div>
                        </td>
                        <td style="border-top:1px dashed #656565;"></td>
                        <td style="border-top:1px dashed #656565;"></td>
                        <td style="border-top:1px dashed #656565;"></td>
                        <td style="border-top:1px dashed #656565;"></td>
                        <td style="border-top:1px dashed #656565;"></td>
                        <td style="border-top:1px dashed #656565;"></td>
                    </tr>




                    </tbody>
                </table>
                <div class="ctitle">
                    <span class="cblank">根据您付款方便请您选择适合自己的支付方式</span>
                    <span class="cred">（提示：您的订单还没有付款，支付成功后订单才能生效）</span>
                </div>
                <div class="tab" role="tabpanel">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#On_line" aria-controls="home" role="tab" data-toggle="tab">在线支付</a></li>
                        <li role="presentation"><a href="#balance" aria-controls="profile" role="tab" data-toggle="tab" style="margin-left: 60px;">账户余额支付</a></li>
                        <li role="presentation"><a href="#Line" aria-controls="messages" role="tab" data-toggle="tab" style="margin-left: 60px;">线下支付</a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content tabs">
                        <div role="tabpanel" class="tab-pane fade in active" id="On_line">
                            <div class="account">
                                <span class="account-t">应付余额</span>&nbsp;：&nbsp;&nbsp;
                                <span class="account-n">¥0</span>
                            </div>
                            <hr>
                            <div class="chtxt">根据您付款方便请您选择适合自己的支付类型</div>
                            <div class="banks">
                                <ul class="bankul">
                                    <li><a href="">个人银行</a></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_01.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_02.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_03.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_04.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_05.png" alt=""></li>
                                </ul>
                                <ul class="bankul" style="margin-left: 95px">
                                    <li><a href="">企业银行</a></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_01.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_02.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_03.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_04.png" alt=""></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_05.png" alt=""></li>
                                </ul>
                                <ul class="bankul" style="margin-left: 95px">
                                    <li><a href="">第三方支付平台</a></li>
                                    <li><input name="bank" type="radio" placeholder=""><a href="${ctx}/alipay" style="border:0;"><img src="${ctx}/static/front/images/bank_06.png" alt=""></a></li>
                                    <li><input name="bank" type="radio" placeholder=""><img src="${ctx}/static/front/images/bank_07.png" alt=""></li>
                                </ul>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="balance">
                            <div class="bcontent">
                                <div style="height: 72px;width: 100%">
                                    <div class="account" style="float: left">
                                        <span class="account-t">应付余额</span>&nbsp;：&nbsp;&nbsp;
                                        <span class="account-n"></span>
                                    </div>
                                    <div class="notice" style="float: left">
                                        <img src="${ctx}/static/front/images/notice.png" alt="" style="float: left">
                                        <div style="float: left;height: 41px">
                                            <span class="nored">&nbsp;&nbsp;账户余额不足 </span>
                                            <span class="none">，建议您选择在线支付方式，或 </span>
                                            <a href="" class="noblue">立即充值</a>
                                            <br>
                                            <span class="nored">【重要提示】</span>
                                            <span class="none">充值成功后，系统不会自动结算该订单。您登录会员中心，对未付款订单进行结算。</span>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="Line">
                            <div style="height: 300px">
                                <div style="height: 72px;width: 100%">
                                    <div class="account" style="float: left">
                                        <span class="account-t">应付余额</span>&nbsp;：&nbsp;&nbsp;
                                        <span class="account-n"></span>
                                    </div>
                                    <div class="Prompt">
                                        <span class="pred">温馨提示：</span>
                                        <span class="none">受银行处理时间影响，采用线下汇款方式到账会有延迟，强烈建议<br>采用支付宝、微信或个人网银及企业网银即时到账。</span>
                                    </div>
                                </div>

                                <hr>
                                <div class="flow">
                                    <div class="flow-title">线下汇款结算流程</div>
                                    <div class="first">
                                        <span class="step">第一步</span>&nbsp;
                                        <span class="txt">通过专属账号进行线下汇款充值</span>&nbsp;
                                        <a href="" class="blue">[了解线下如何支付]</a>
                                    </div>
                                    <div class="second">
                                        <span class="step">第二步</span>&nbsp;
                                        <span class="txt">款项到达账户余额后，对未支付订单进行支付 </span>&nbsp;
                                        <a href="" class="blue">[联系线下支付客服经理]</a>
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
<script src="${ctx}/static/front/js/angular.min.js"></script>
<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/bootstrap.min.js" type="text/javascript"></script>

<script type="text/javascript">
    var map="${ctx}/static/front/images/s.png";
    $(document).ready(function () {
        $("#order").empty();
        $.ajax({
            url : '${ctx}/Product/order',
            type : 'POST',
            async:true,
            cache:false,
            dataType : 'json',
            success: function(data) {
                var rowLength=1;                 //编号宽度
                var  list=data.list;
                rowLength= rowLength+ list.length;
               for(var i=0;i<list.length;i++){
                   if(list[i].givenFree!="" &&list[i].givenFree!=null){
                       rowLength++;
                   }
               }
             var row="<tr><td rowspan=\'"+ rowLength+"\'>"+data.code+"</td>"+//  编号和产品
                 "<td >"+data.proTitle+"</td><td></td>"+
                 "<td></td><td></td><td></td><td></td><td></td></tr>";
                 var row2="";//需求
                 for(var i=0;i<list.length;i++){
                     row2=row2+ "<td style=\"border-top:1px dashed #656565; \">"+list[i].demand+"</td>" +
                        "<td style=\"border-top:1px dashed #656565; \">"+list[i].service+"</td>" +
                        "<td style=\"border-top:1px dashed #656565; \">"+list[i].timeValue+"</td>" +
                        "<td style=\"border-top:1px dashed #656565; \">"+list[i].num+"</td>" +
                        "<td style=\"color: red;border-top:1px dashed #656565;\">￥"+(list[i].preferential*list[i].num)+"</td>" +
                        "<td style=\"color: red;border-top:1px dashed #656565; \">￥"+(list[i].price*list[i].num)+"</td>" +
                        "<td style=\"border-top:1px dashed #656565; \">"+data.time+"</td>" +
                        "</tr>";
                    if(list[i].givenFree!="" &&list[i].givenFree!=null){//是否有赠送
                        row2=row2+ "<tr style=\"border-bottom:1px dashed #656565;\">" +
                            " <td style=\"border-top:1px dashed #656565;\">" +
                            " <div>\n" +
                            " <div style=\"float: left;margin-top: 12px;font-size: 14px;color: red\">" +
                            " <img src=\""+map+"\" alt=\"\" style=\"width: 33px\">" +
                            " </div>" +
                            " <div style=\"float: right;width: 123px;height: auto;\">" +
                            " <p>"+list[i].givenFree+"</p>" +
                            " </div>" +
                            " </div>" +
                            " </td>" +
                            " <td style=\"border-top:1px dashed #656565;\"></td>" +
                            " <td style=\"border-top:1px dashed #656565;\"></td>" +
                            " <td style=\"border-top:1px dashed #656565;\"></td>" +
                            " <td style=\"border-top:1px dashed #656565;\"></td>" +
                            " <td style=\"border-top:1px dashed #656565;\"></td>" +
                            " <td style=\"border-top:1px dashed #656565;\"></td>" +
                            " </tr>"
                    }
                 }

                row=row+row2;
                $("#order").append(row)
                $(".account-n").text("¥" + data.price);
            }
          })
        })
</script>



</body>
</html>
