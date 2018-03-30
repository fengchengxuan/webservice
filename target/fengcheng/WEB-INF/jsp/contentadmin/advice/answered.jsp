<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>已答咨询</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/navstyle.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/advice.css" type="text/css">
    <style>
        .list16{
            background: #3eb7f3;
        }
        .inner li{font-size: 14px;
            background: #1893d3;
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
            width: 64px;
        }
        #ddoli2 ul li{
            width: 93px;
        }
        #ddoli3 ul li{
            width: 98px;
        }
        #ddoli4 ul li{
            width: 113px;
        }
        #ddoli5 ul li{
            width: 140px;
        }
        #ddoli6 ul li{
            width: 116px;
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
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>内容管理</span>
            <span>></span>
            <span>咨询管理</span>
            <span>></span>
            <span>已答咨询</span>
        </div>
        <!-- 内部内容 -->
        <div class="inner inner-1" style=" width: 980px;height: 70px;
            background-color: white;">
            <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;已答咨询</div>
        </div>

        <div class="inner inner-2" style=" width: 980px;height: 1100px;
            background-color: white;position: relative;top: -10px">
            <ul style="color:white;">
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;width: 47px;">序号</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:50px;">编号</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:66px">
                    <div class="select_model">
                        <div class="Selected" id="Selected"><span>用户</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli">
                            <ul>
                                <li style="border-top: none">用户</li>
                                <li>来宾户</li>
                                <li>会员户</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:95px">
                    <div class="select_model">
                        <div class="Selected" id="Selected2"><span>咨询类型</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli2">
                            <ul>
                                <li style="border-top: none">售前</li>
                                <li>售后</li>
                                <li>保障</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:112px">咨询问题</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:142px">
                    <div class="select_model">
                        <div class="Selected" id="Selected5"><span>咨询时间</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli5">
                            <ul>
                                <li style="border-top: none">咨询时间</li>
                                <li>回复时间</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:100px">
                    <div class="select_model">
                        <div class="Selected" id="Selected3"><span>咨询状态</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli3">
                            <ul>
                                <li style="border-top: none">已答</li>
                                <li>未答</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:115px">
                    <div class="select_model">
                        <div class="Selected" id="Selected4"><span>咨询处理人</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli4">
                            <ul>
                                <li style="border-top: none">系统管理员</li>
                                <li>运营管理员</li>
                                <li>普通管理员</li>
                                <li>编辑管理员</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:135px;font-weight: 400">已答咨询</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:118px">
                    <div class="select_model">
                        <div class="Selected" id="Selected6"><span>咨询处理结果</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli6">
                            <ul>
                                <li style="border-top: none">已处理</li>
                                <li>未处理</li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>


            <div style="width: 980px;height: 360px;">

                <table style="border: 0;margin: 0;padding: 0;text-align: center;font-family: '微软雅黑',sans-serif;font-size: 12px;" id="Ulist">
                    <tr style="width: 980px;">
                        <td style="width: 27px"><input type="checkbox" placeholder="" name="subBox" readonly ng-checked="m"></td>
                        <td style="width: 20px;">1</td>
                        <td style="width: 55px">FC001</td>
                        <td style="width: 61px">来宾户</td>
                        <td style="width:100px">售前</td>
                        <td style="width:110px"><input type="text" placeholder="" value="这个学校里的老师好吗？" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:110px;" title="这个学校里的老师好吗"  disabled="disabled" ></td>
                        <td style="width:142px">2017年7月1日10：36</td>
                        <td style="width:100px">已答</td>
                        <td style="width:112px">系统管理员</td>
                        <td style="width:144px;"><input type="text" value="学校里..." style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:60px; " title="学校里的老师们会对每一位来校新生，根据其性格及特征制定适合的专业推荐及深入引导。"  disabled="disabled" >   <span style="color: #0D63EF;font-size: 12px;">修改</span> | <span style="color: red;font-size: 12px;">删除</span></td>
                        <td style="width:109px">已处理</td>
                    </tr>
                </table>
                <div>
                    <div style="float: left;line-height: 36px;margin-left: 8px;"><input type="checkbox" placeholder="" class="checkAll" ng-model="m"></div>
                    <div style="float: left;line-height: 36px;margin-left: 12px;" class="checkAll"> 全选  &nbsp;删除</div>
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
        $("#Selected3").click(function(){
            if("block" == $("#ddoli3").css("display")){
                $("#ddoli3").hide();
            }else{
                $("#ddoli3").show();
            }
        });

        $("#ddoli3>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected3>span").html($(this).html());
                $("#ddoli3").hide();
            });
        });

        $("#Selected3").blur(function(){
            $("#ddoli3").hide();
        });
        $("#Selected4").click(function(){
            if("block" == $("#ddoli4").css("display")){
                $("#ddoli4").hide();
            }else{
                $("#ddoli4").show();
            }
        });

        $("#ddoli4>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected4>span").html($(this).html());
                $("#ddoli4").hide();
            });
        });

        $("#Selected4").blur(function(){
            $("#ddoli4").hide();
        });
        $("#Selected5").click(function(){
            if("block" == $("#ddoli5").css("display")){
                $("#ddoli5").hide();
            }else{
                $("#ddoli5").show();
            }
        });

        $("#ddoli5>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected5>span").html($(this).html());
                $("#ddoli5").hide();
            });
        });

        $("#Selected5").blur(function(){
            $("#ddoli5").hide();
        });
        $("#Selected6").click(function(){
            if("block" == $("#ddoli6").css("display")){
                $("#ddoli6").hide();
            }else{
                $("#ddoli6").show();
            }
        });

        $("#ddoli6>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected6>span").html($(this).html());
                $("#ddoli6").hide();
            });
        });

        $("#Selected6").blur(function(){
            $("#ddoli6").hide();
        });
    })
</script>
</body>
</html>