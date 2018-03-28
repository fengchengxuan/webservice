<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>过滤咨询</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/advicefilter.css" type="text/css">
    <style>
        .list18{
            background: #3eb7f3;
        }
        .inner-2 li{
            font-size: 14px;
        }
        .select_model{
            height: 42px;
            position: relative;
        }
        .Selected{
            height: 43px;
            line-height: 43px;
            cursor: pointer;
            text-align: center;
            font-size: 14px;
            border-left:1px solid #2090cc;
        }
        .ddoli{
            position: absolute;
            left: 0;
            top: 44px;
        }
        .ddoli ul {
            /*width: 105px;*/
            border: 1px solid #ccc;
            border-top: none;
        }
        .ddoli ul li{
            cursor: pointer;
            height: 30px;
            line-height: 30px;
            text-align: center;
            background: #ffffff;
            color: #666;
            font-size: 14px;
            border-top: 1px solid #ccc;
            /*font-weight: 100;*/
        }
        #ddoli ul li{
            width: 192px;
        }
        #ddoli2 ul li{
            width: 118px;
        }
        .ddoli ul li:hover{
            background: #24a1ee;
            color: #ffffff;
        }
        .contener .admlistbox{
            height: auto;
            padding-bottom: 25px;
        }
    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=false;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=false;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox" style="height: 1200px;">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>内容管理</span>
            <span>></span>
            <span>咨询管理</span>
            <span>></span>
            <span>过滤咨询</span>
        </div>
        <!-- 内部内容 -->
        <div class="inner inner-1" style=" width: 980px;height: 70px;
            background-color: white;">
            <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;过滤咨询</div>

        </div>
        <div class="inner inner-2" style=" width: 980px;height: 1300px;
            background-color: white;position: relative;top: -10px">
            <ul style="color:white;">
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #1993d4;width: 90px;">序号</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #1993d4;border-left: 1px solid #1b7aad;width:91px">用户</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #1993d4;border-left: 1px solid #1b7aad;width:144px">咨询类型</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #1993d4;border-left: 1px solid #1b7aad;width:197px">咨询问题过虑敏感词</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background:#1993d4;border-left: 1px solid #1b7aad;width:144px">设置动作</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background:#1993d4;border-left: 1px solid #1b7aad;width:194px">
                    <div class="select_model">
                        <div class="Selected" id="Selected"><span>处理人</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli">
                            <ul>
                                <li style="border-top: none">系统管理员</li>
                                <li>运营管理员</li>
                                <li>普通管理员</li>
                                <li>编辑管理员</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background:#1993d4;border-left: 1px solid #1b7aad;width:120px">
                    <div class="select_model">
                        <div class="Selected" id="Selected2"><span>过滤状态</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli2">
                            <ul>
                                <li style="border-top: none">已处理</li>
                                <li>未处理</li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>

            <div style="width: 980px;height: 360px;">
                <ul>
                    <li style="width: 980px;height: 42px;background: red;display: block"></li>
                </ul>
                <table style="border: 0;margin: 0;padding: 0;text-align: center;font-family: '微软雅黑',sans-serif;font-size: 12px;" id="Ulist">

                    <tr style="width: 980px;">
                        <td style="width: 45px;"><input type="checkbox" placeholder="" name="subBox" readonly ng-checked="m" ></td>
                        <td style="width: 45px;">1</td>
                        <td style="width: 92px;">来宾户</td>
                        <td style="width:145px">售前</td>
                        <td style="width:198px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                        <td style="width:145px">拦截</td>
                        <td style="width:208px;">系统管理员</td>
                        <td style="width:103px">已处理</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 45px;"><input type="checkbox" placeholder="" name="subBox" readonly ng-checked="m" ></td>
                        <td style="width: 45px;">1</td>
                        <!--<td style="width: 95px">FC001</td>-->
                        <td style="width: 92px;">来宾户</td>
                        <td style="width:145px">售前</td>
                        <td style="width:198px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                        <td style="width:145px">拦截</td>
                        <td style="width:208px;">系统管理员</td>
                        <td style="width:103px">已处理</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 45px;"><input type="checkbox" placeholder="" name="subBox" readonly ng-checked="m" ></td>
                        <td style="width: 45px;">1</td>
                        <!--<td style="width: 95px">FC001</td>-->
                        <td style="width: 92px;">来宾户</td>
                        <td style="width:145px">售前</td>
                        <td style="width:198px"><input type="text" placeholder="" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;" title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                        <td style="width:145px">拦截</td>
                        <td style="width:208px;">系统管理员</td>
                        <td style="width:103px">已处理</td>
                    </tr>
                </table>
                <div>
                    <div style="float: left;line-height: 36px;margin-left: 14px;"><input type="checkbox" placeholder="" class="checkAll" ng-model="m"></div>
                    <div style="float: left;line-height: 36px;margin-left: 10px;" class="checkAll"> 全选  &nbsp;删除</div>
                </div>
            </div>
            <div style="position: relative;left:300px;top:650px;font-size: 16px;font-family:'黑体',sans-serif;color:#fff;">
                <p style="color:#333;position: relative;top: 20px;left: 80px;font-size:13px;font-family: '黑体',sans-serif">共2页&nbsp; 1&nbsp; 2&nbsp; 上一页&nbsp; 下一页</p>
            </div>
        </div>

    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#Selected").click(function(){
            if("block" == $("#ddoli").css("display")){
                $("#ddoli").hide();
            }else{
                $("#ddoli").show();
            }
        });

        $("#ddoli>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected>span").html($(this).html());
                $("#ddoli").hide();
            });
        });

        $("#Selected").blur(function(){
            $("#ddoli").hide();
        });
        $("#Selected2").click(function(){
            if("block" == $("#ddoli2").css("display")){
                $("#ddoli2").hide();
            }else{
                $("#ddoli2").show();
            }
        });

        $("#ddoli2>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected2>span").html($(this).html());
                $("#ddoli2").hide();
            });
        });

        $("#Selected2").blur(function(){
            $("#ddoli2").hide();
        });
    })
</script>
</body>
</html>