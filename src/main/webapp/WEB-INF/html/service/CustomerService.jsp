<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp" %>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>投诉与建议</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/realname.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/modal.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/tabfile.css" type="text/css">
    <!--本页样式-->
    <link rel="stylesheet" href="${ctx}/static/front/css/Customer.css" type="text/css">
    <style>
        .ctul .slm {
            background: #F53292;
        }

        .tab-mk textarea {
            position: relative;
            top: -40px;
            left: 175px;
        }

        .bill {
            background: none;
        }

        .bill a.slma {
            color: #333333;
        }
    </style>

</head>
<body ng-init="i=false;t=true;w=true;f=true;g=true;h=true">
<div style="background-color: #ededed" id="nava">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer">
        <jsp:include page="/static/front/comm/left.jsp"/>
        <div class="rName-main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;会员中心&nbsp;>&nbsp;直达客服经理&nbsp;>&nbsp;投诉/建议/客服中心</span>
            </div>

            <div class="poption">
                <div class="tab" role="tabpanel">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab"
                                                                  data-toggle="tab">投诉</a></li>
                        <li role="presentation"><a href="#Section2" aria-controls="profile" role="tab"
                                                   data-toggle="tab">建议</a></li>
                        <li role="presentation"><a href="#Section3" aria-controls="messages" role="tab"
                                                   data-toggle="tab">客服中心</a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content tabs">
                        <div role="tabpanel" class="tab-pane fade in active" id="Section1">
                            <div class="right-top"><img src="${ctx}/static/front/images/lisa.png" alt=""><span
                                    data-toggle="modal" data-target="#myModa110">我要投诉</span></div>
                            <table>
                                <thead>
                                <tr>
                                    <th class="th1">投诉编号</th>
                                    <th class="th2">时间</th>
                                    <th class="th3">投诉方</th>
                                    <th class="th4">投诉理由</th>
                                    <th class="th5">处理结果</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="tr1">
                                    <td>tousu0012</td>
                                    <td>2017年5月26日15：23：00</td>
                                    <td>负责阳光教育集国网站建设的
                                        负责人李胜
                                    </td>
                                    <td>没有规定方案三进行网站规划
                                        及架构不符合我们企业及品定
                                        位，要求重新制作并在及时与
                                        我们沟通再定稿方案
                                    </td>
                                    <td>系统管理员同意投
                                        诉方提现的要求
                                    </td>
                                </tr>
                                <tr class="tr2">
                                    <td>tousu0012</td>
                                    <td>2017年5月26日15：23：00</td>
                                    <td>负责阳光教育集国网站建设的
                                        负责人李胜
                                    </td>
                                    <td>没有规定方案三进行网站规划
                                        及架构不符合我们企业及品定
                                        位，要求重新制作并在及时与
                                        我们沟通再定稿方案
                                    </td>
                                    <td>系统管理员同意投
                                        诉方提现的要求
                                    </td>
                                </tr>
                                <tr class="tr1">
                                    <td>tousu0012</td>
                                    <td>2017年5月26日15：23：00</td>
                                    <td>负责阳光教育集国网站建设的
                                        负责人李胜
                                    </td>
                                    <td>没有规定方案三进行网站规划
                                        及架构不符合我们企业及品定
                                        位，要求重新制作并在及时与
                                        我们沟通再定稿方案
                                    </td>
                                    <td>系统管理员同意投
                                        诉方提现的要求
                                    </td>
                                </tr>
                                <tr class="tr2">
                                    <td>tousu0012</td>
                                    <td>2017年5月26日15：23：00</td>
                                    <td>负责阳光教育集国网站建设的
                                        负责人李胜
                                    </td>
                                    <td>没有规定方案三进行网站规划
                                        及架构不符合我们企业及品定
                                        位，要求重新制作并在及时与
                                        我们沟通再定稿方案
                                    </td>
                                    <td>系统管理员同意投
                                        诉方提现的要求
                                    </td>
                                </tr>

                                </tbody>
                            </table>

                            <!--</div>-->
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="Section2">
                            <div class="right-top"><img src="${ctx}/static/front/images/lisa.png" alt=""><span
                                    data-toggle="modal" data-target="#myModa111">我要提建议</span></div>
                            <table>
                                <thead>
                                <tr>
                                    <th class="th1">投诉编号</th>
                                    <th class="th2">时间</th>
                                    <th class="th3">投诉方</th>
                                    <th class="th4">投诉理由</th>
                                    <th class="th5">处理结果</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="tr1">
                                    <td>tousu0012</td>
                                    <td>2017年5月26日15：23：00</td>
                                    <td>广西峰程璇网络科技有限公司</td>
                                    <td>在跟客户解释网站建设时不要
                                        不懂可以简单或通俗易懂。
                                    </td>
                                    <td>统管理员已采
                                        纳谢谢建议
                                    </td>
                                </tr>
                                <tr class="tr2">
                                    <td>tousu0012</td>
                                    <td>2017年5月26日15：23：00</td>
                                    <td>广西峰程璇网络科技有限公司</td>
                                    <td>在跟客户解释网站建设时不要
                                        不懂可以简单或通俗易懂。
                                    </td>
                                    <td>统管理员已采
                                        纳谢谢建议
                                    </td>
                                </tr>
                                <tr class="tr1">
                                    <td>tousu0012</td>
                                    <td>2017年5月26日15：23：00</td>
                                    <td>广西峰程璇网络科技有限公司</td>
                                    <td>在跟客户解释网站建设时不要
                                        不懂可以简单或通俗易懂。
                                    </td>
                                    <td>统管理员已采
                                        纳谢谢建议
                                    </td>
                                </tr>
                                <tr class="tr2">
                                    <td>tousu0012</td>
                                    <td>2017年5月26日15：23：00</td>
                                    <td>广西峰程璇网络科技有限公司</td>
                                    <td>在跟客户解释网站建设时不要
                                        不懂可以简单或通俗易懂。
                                    </td>
                                    <td>统管理员已采
                                        纳谢谢建议
                                    </td>
                                </tr>


                                </tbody>
                            </table>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="Section3">

                            <div style="padding: 15px 0 ">
                                <div class="tab-Section3-jpg"><img src="${ctx}/static/front/images/man.png" alt="">
                                </div>
                                <div class="tab-Section3-box">
                                    <div><img src="${ctx}/static/front/images/text1.png" alt=""></div>

                                    <p><span>峰程mf01</span> <span>峰程mf01</span> <span>峰程mf01</span></p>
                                    <p><span>峰程mf01</span> <span>峰程mf01</span> <span>峰程mf01</span></p>
                                </div>
                            </div>
                            <div style="padding: 15px 0 ">
                                <div class="tab-Section3-jpg"><img src="${ctx}/static/front/images/jman.png" alt="">
                                </div>
                                <div class="tab-Section3-box">
                                    <div><img src="${ctx}/static/front/images/text2.png" alt=""></div>

                                    <p><span>峰程mf01</span> <span>峰程mf01</span> <span>峰程mf01</span></p>
                                    <p><span>峰程mf01</span> <span>峰程mf01</span> <span>峰程mf01</span></p>
                                </div>
                            </div>
                            <div style="padding: 15px 0 ">
                                <div class="tab-Section3-jpg"><img src="${ctx}/static/front/images/wman.png" alt="">
                                </div>
                                <div class="tab-Section3-box">
                                    <div><img src="${ctx}/static/front/images/text3.png" alt=""></div>

                                    <p><span>峰程mf01</span> <span>峰程mf01</span> <span>峰程mf01</span></p>
                                    <p><span>峰程mf01</span> <span>峰程mf01</span> <span>峰程mf01</span></p>
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
    $(function () {
        $.ajax({
            url: "${ctx}/csv/Complain",
            data: "",
            type: 'POST',
            async: true,
            cache: false,
            dataType: 'json',
            success: function (data) {
                if (data != null && data != "") {
                    for (var i = 0; i < data.length; i++) {
                        //alert(data[i].maker);
                        var row = "<tr class=\"tr1\">" +
                            "<td>"+data[i].no+"</td>" +
                            "<td>"+data[i].time+"</td>" +
                            "<td>"+data[i].maker+"</td>" +
                            "<td>"+data[i].reason+"</td>" +
                            "<td>"+data[i].result+"</td>" +
                            " </tr>";
                        $("#Section1").append(row);
                    }
                }
            }
        })
    })
</script>
</body>
</html>


<!--模态框 投诉-->
<div class="modal fade" id="myModa110" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" style="position: absolute;left: 70px">
    <div class="modal-dialog">
        <div class="modal-content" style="width:600px;height: 400px; font-size: 14px;color: #656565">
            <div class="tab-mk"><span>建设类型</span>
                <label>
                    <select style="width: 220px;height: 40px;background: #F1F1F1;border: 1px solid #ccc;">
                        <option>客服</option>
                        <option>客服经理</option>
                        <option>项目负责人</option>
                        <option>程序员</option>
                        <option>美工</option>
                    </select>
                </label>
            </div>
            <div class="tab-mk"><span>建议方</span>
                <input type="text" placeholder=""
                       style="width: 220px;height: 40px;border: 1px solid #ccc;background: #F1F1F1">
            </div>
            <div style="width: 220px;height: 40px;border: 0" class="tab-mk">
                <span>建议理由</span>
                <textarea style="width: 300px;height: 170px;max-width: 300px;max-height: 170px;border: 1px solid #ccc"
                          placeholder=""></textarea>
            </div>


            <div style="position: absolute;top: 350px;left: 160px;">
                <button type="button"
                        style="width:160px;height: 40px;background: #00A1E5;border-radius:8px; color: #fff;border: 0;font-size: 16px">
                    提交投诉
                </button>
                <button type="button"
                        data-dismiss="modal"
                        style="width: 100px;height: 40px;border-radius:8px; color: #00A1E5;border: 0;margin-left: 15px;background: transparent;">
                    取消
                </button>
            </div>
        </div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!--模态框 建议-->
<div class="modal fade" id="myModa111" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" style="position: absolute;left: 70px">
    <div class="modal-dialog">
        <div class="modal-content" style="width:600px;height: 400px; font-size: 14px;color: #656565">
            <div class="tab-mk"><span>建设类型</span>
                <label>
                    <select style="width: 220px;height: 40px;background: #F1F1F1;border: 1px solid #ccc;">
                        <option>客服</option>
                        <option>客服经理</option>
                        <option>项目负责人</option>
                        <option>程序员</option>
                        <option>美工</option>
                    </select>
                </label>
            </div>
            <div class="tab-mk"><span>建议方</span>
                <input type="text" placeholder=""
                       style="width: 220px;height: 40px;border: 1px solid #ccc;background: #F1F1F1">
            </div>
            <div style="width: 220px;height: 40px;border: 0" class="tab-mk">
                <span>建议理由</span>
                <textarea style="width: 300px;height: 170px;max-width: 300px;max-height: 170px;border: 1px solid #ccc"
                          placeholder=""></textarea>
            </div>


            <div style="position: absolute;top: 350px;left: 160px;">
                <button type="button"
                        style="width:160px;height: 40px;background: #00A1E5;border-radius:8px; color: #fff;border: 0;font-size: 16px">
                    提交建议
                </button>
                <button type="button"
                        data-dismiss="modal"
                        style="width: 100px;height: 40px;border-radius:8px; color: #00A1E5;border: 0;margin-left: 15px;background: transparent;">
                    取消
                </button>
            </div>
        </div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->
</div>
<!-- /.modal -->
