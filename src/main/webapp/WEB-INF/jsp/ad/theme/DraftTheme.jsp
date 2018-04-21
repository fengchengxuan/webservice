<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>草稿专题</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="${ctx}/static/background/css/top.css">
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css">
    <style>
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
        .xg,.del{
            cursor: pointer;
        }
        .xg{
            color: #00f;
        }
        .del{
            color: red;
        }
        select{
            font-weight: bold;
        }
    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=false;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=false;deputynava=true">

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
            <span>草稿专题</span>

        </div>
        <div class="inner" style="height: 1126px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;草稿专题</div>
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
                    <th style="width: 198px;border-left: 1px solid #057836">专题名称</th>
                    <th style="width: 256px;border-left: 1px solid #057836">专题链接地址</th>
                    <th style="width: 117px;border-left: 1px solid #057836">
                        专题结构
                    </th>
                    <th style="width: 117px;border-left: 1px solid #057836">
                        <label>
                        <select>
                            <option>专题类型</option>
                            <option>广告</option>
                            <option>品牌</option>
                            <option>产品</option>
                            <option>活动</option>
                            <option>其他</option>
                        </select>
                        </label>
                    </th>
                    <th style="width: 117px;border-left: 1px solid #057836">
                        <label>
                        <select>
                            <option>专题状态</option>
                            <option>正常</option>
                            <option>不能播放</option>
                            <option>已删除</option>
                        </select>
                        </label>
                    </th>
                    <th style="width: 117px;border-left: 1px solid #057836">点击/浏览量</th>
                    <th style="width: 108px;border-left: 1px solid #057836">
                        <label>
                        <select>
                            <option> &nbsp;&nbsp;&nbsp;操作人</option>
                            <option>系统管理员</option>
                            <option>运营管理员</option>
                            <option>普通管理员</option>
                            <option>编辑管理员</option>
                        </select>
                        </label>
                    </th>
                    </tr>
                    </thead>

                    <tr style="height: 10px;"><td></td></tr>
                    <tr>
                        <td><input type="checkbox" style="position: relative;top: 2px;" placeholder=""> 1</td>
                        <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                        <td>https://xiawanyizhong.edu.com</td>
                        <td>默认</td>
                        <td>正常</td>
                        <td><span class="xg">修改</span> | <span class="del">删除</span></td>
                        <td>489</td>
                        <td>系统管理员</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" style="position: relative;top: 2px;" placeholder=""> 1</td>
                        <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                        <td>https://xiawanyizhong.edu.com</td>
                        <td>默认</td>
                        <td>正常</td>
                        <td><span class="xg">修改</span> | <span class="del">删除</span></td>
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