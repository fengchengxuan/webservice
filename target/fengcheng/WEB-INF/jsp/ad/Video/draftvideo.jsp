<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>草稿视频</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <style>
        .list33{
            background: #3eb7f3;
        }
        table{
            border-collapse: collapse;
        }
        th,td{
            padding: 0;
        }
        select{
            color: white;
        }
        tr:nth-of-type(even){
            background: #F5F5F5;
            height: 40px;
            text-align: center;
        }
        tr:nth-of-type(odd){
            background: #fff;
            height: 50px;
        }
        input:nth-of-type(odd){
            border: 0;background: #fff;
        }
        .select_model{
            height: 42px;
            position: relative;
        }
        .Selected{
            height: 42px;
            line-height: 42px;
            cursor: pointer;
            text-align: center;
            font-size: 14px;
            border-left:1px solid #2090cc;
        }
        .ddoli{
            position: absolute;
            left: 0;
            top: 43px;
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
            width: 115px;
        }
        #ddoli2 ul li{
            width: 115px;
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
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=false;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=false;subjecta=true;deputynava=true">

<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>广告管理</span>
            <span>></span>
            <span>草稿视频</span>

        </div>
        <div class="inner" style="height: 1126px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;草稿视频</div>
            <div class="draftart-top">
                <button class="keywords">关键词</button>
                <input style="width: 269px" type="text" placeholder="">
                <button class="key-search">搜索</button>
                <button class="search-title">标题搜索</button>
                <input style="width: 283px" type="text" placeholder="">
                <button class="title-search">搜索</button>
            </div>
            <div class="draftartbox">
                <table class="artable">
                    <thead>
                    <tr>
                    <th style="width: 72px;">序号</th>
                    <th style="width: 198px;border-left: 1px solid #057836">订单标题</th>
                    <th style="width: 256px;border-left: 1px solid #057836">视频连接地址</th>
                    <th style="width: 117px;border-left: 1px solid #057836">
                        <div class="select_model">
                            <div class="Selected" id="Selected"><span style="font-size: 12px">视频类型</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli">
                                <ul>
                                    <li style="border-top: none">广告</li>
                                    <li>品牌</li>
                                    <li>产品</li>
                                    <li>活动</li>
                                    <li>其他</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 117px;border-left: 1px solid #057836">
                        <div class="select_model">
                            <div class="Selected" id="Selected2"><span style="font-size: 12px">视频状态</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli2">
                                <ul>
                                    <li style="border-top: none">正常</li>
                                    <li>不能播放</li>
                                    <li>已删除</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 117px;border-left: 1px solid #057836">点击/播放量</th>
                    <th style="width: 108px;border-left: 1px solid #057836">操作人</th>
                    </tr>
                    </thead>

                    <tr style="height: 10px;"><td></td></tr>
                    <tr>
                        <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">1</td>
                        <td>纪念下湾一中建校50年校庆</td>
                        <td>www.baidu.com</td>
                        <td>广告</td>
                        <td>草稿</td>
                        <td>489</td>
                        <td>系统管理员</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">1</td>
                        <td>纪念下湾一中建校50年校庆</td>
                        <td>www.baidu.com</td>
                        <td>广告</td>
                        <td>草稿</td>
                        <td>489</td>
                        <td>系统管理员</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">1</td>
                        <td>纪念下湾一中建校50年校庆</td>
                        <td>www.baidu.com</td>
                        <td>广告</td>
                        <td>草稿</td>
                        <td>489</td>
                        <td>系统管理员</td>
                    </tr>



                </table>

                <div class="darpages">
                    <span>共10页</span>&nbsp;
                    <span>1</span>
                    <span>2</span>
                    <span>3</span>
                    <span>4</span>
                    <span>5</span>
                    <span>6</span>
                    <span>7</span>
                    <span>8</span>
                    <span>9</span>
                    <span>10</span>&nbsp;
                    <span>上一页</span>
                    <span>下一页</span>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>