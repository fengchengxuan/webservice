<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>已退款订单</title>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=false;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=false;allordera=false;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<link rel="stylesheet" href="/static/background/css/draftartic.css" type="text/css">
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
    input:nth-of-type(odd){
        border: 0;background: #fff;
    }
</style>
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
<div class="contentbox">
    <div class="top">
        <img src="${ctx}/static/background/images//FZ.png" alt="">
        <span>当前位置</span>
        <span>></span>
        <span>订单管理</span>
        <span>></span>
        <span>我的全部订单</span>
        <span>></span>
        <span>已退款订单</span>

    </div>
    <div class="inner" style="height: 1126px">
        <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;已退款订单</div>
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
                <th style="width: 62px;">序号</th>
                <th style="width: 81px;border-left: 1px solid #24a1e4">编号
                </th>
                <th style="width: 147px;border-left: 1px solid #24a1e4">订单标题</th>
                <th style="width: 162px;border-left: 1px solid #24a1e4">
                    <label>
                    <select name="">
                        <option value="">创建订单时间</option>
                        <option value="">运营管理员</option>
                        <option value="">普通管理员</option>
                        <option value="">编辑管理员</option>
                    </select>
                    </label>
                </th>
                <th style="width: 100px;border-left: 1px solid #24a1e4">产品原价</th>
                <th style="width: 105px;border-left: 1px solid #24a1e4">折扣/优惠券</th>
                <th style="width: 113px;border-left: 1px solid #24a1e4">订单实付金额</th>
                <th style="width: 103px;border-left: 1px solid #24a1e4">
                    <label>
                    <select name="" id="">
                        <option value="">订单状态</option>
                        <option value="">已付款</option>
                        <option value="">未付款</option>
                        <option value="">已退款</option>
                    </select>
                    </label>
                </th>
                <th style="width: 109px;border-left: 1px solid #24a1e4">备注</th>
                </tr>
                </thead>

                <tr style="height: 10px;"><td></td></tr>
                <tr>
                    <td><input type="checkbox" ng-checked="m" style="position: relative;top: 2px;" placeholder="">1</td>
                    <td>FC001</td>
                    <td style="width:147px;"><input type="text" value="飞燕轻便系列防水防..." title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="background: #f5f5f5"></td>
                    <td>2017年7月1日10：36</td>
                    <td>￥299：68</td>
                    <td>￥99：68</td>
                    <td>￥199：00</td>
                    <td>已付款</td>
                    <td>尽快安排发货</td>
                </tr>
                <tr>
                    <td><input type="checkbox" ng-checked="m" style="position: relative;top: 2px;" placeholder="">1</td>
                    <td>FC001</td>
                    <td style="width:147px;"><input type="text" value="飞燕轻便系列防水防..." title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" ></td>
                    <td>2017年7月1日10：36</td>
                    <td>￥299：68</td>
                    <td>￥99：68</td>
                    <td>￥199：00</td>
                    <td>已退款</td>
                    <td>尽快安排发货</td>
                </tr>
                <tr>
                    <td><input type="checkbox" ng-checked="m" style="position: relative;top: 2px;" placeholder="">1</td>
                    <td>FC001</td>
                    <td style="width:147px;"><input type="text" value="飞燕轻便系列防水防..." title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="background: #f5f5f5"></td>
                    <td>2017年7月1日10：36</td>
                    <td>￥299：68</td>
                    <td>￥99：68</td>
                    <td>￥199：00</td>
                    <td>已退款</td>
                    <td>尽快安排发货</td>
                </tr>
                <tr>
                    <td><input type="checkbox" ng-checked="m" style="position: relative;top: 2px;" placeholder="">1</td>
                    <td>FC001</td>
                    <td style="width:147px;"><input type="text" value="飞燕轻便系列防水防..." title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" ></td>
                    <td>2017年7月1日10：36</td>
                    <td>￥299：68</td>
                    <td>￥99：68</td>
                    <td>￥199：00</td>
                    <td>已退款</td>
                    <td>尽快安排发货</td>
                </tr>
                <tr>
                    <td><input type="checkbox" ng-checked="m" style="position: relative;top: 2px;" placeholder="">1</td>
                    <td>FC001</td>
                    <td style="width:147px;"><input type="text" value="飞燕轻便系列防水防..." title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="background: #f5f5f5"></td>
                    <td>2017年7月1日10：36</td>
                    <td>￥299：68</td>
                    <td>￥99：68</td>
                    <td>￥199：00</td>
                    <td>已退款</td>
                    <td>尽快安排发货</td>
                </tr>
                <tr>
                    <td><input type="checkbox" ng-checked="m" style="position: relative;top: 2px;">1</td>
                    <td>FC001</td>
                    <td style="width:147px;"><input type="text" value="飞燕轻便系列防水防..." title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" ></td>
                    <td>2017年7月1日10：36</td>
                    <td>￥299：68</td>
                    <td>￥99：68</td>
                    <td>￥199：00</td>
                    <td>已退款</td>
                    <td>尽快安排发货</td>
                </tr>
                <tr>
                    <td><input type="checkbox" ng-checked="m" style="position: relative;top: 2px;" placeholder="">1</td>
                    <td>FC001</td>
                    <td style="width:147px;"><input type="text" value="飞燕轻便系列防水防..." title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="background: #f5f5f5"></td>
                    <td>2017年7月1日10：36</td>
                    <td>￥299：68</td>
                    <td>￥99：68</td>
                    <td>￥199：00</td>
                    <td>已退款</td>
                    <td>尽快安排发货</td>
                </tr>
                <tr>
                    <td><input type="checkbox" ng-checked="m" style="position: relative;top: 2px;" placeholder="">1</td>
                    <td>FC001</td>
                    <td style="width:147px;"><input type="text" value="飞燕轻便系列防水防..." title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" ></td>
                    <td>2017年7月1日10：36</td>
                    <td>￥299：68</td>
                    <td>￥99：68</td>
                    <td>￥199：00</td>
                    <td>已退款</td>
                    <td>尽快安排发货</td>
                </tr>
                <tr>
                    <td><input type="checkbox" ng-checked="m" style="position: relative;top: 2px;" placeholder="">1</td>
                    <td>FC001</td>
                    <td style="width:147px;"><input type="text" value="飞燕轻便系列防水防..." title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="background: #f5f5f5"></td>
                    <td>2017年7月1日10：36</td>
                    <td>￥299：68</td>
                    <td>￥99：68</td>
                    <td>￥199：00</td>
                    <td>已退款</td>
                    <td>尽快安排发货</td>
                </tr>
                <tr>
                    <td><input type="checkbox" ng-checked="m" style="position: relative;top: 2px;" placeholder="">1</td>
                    <td>FC001</td>
                    <td style="width:147px;"><input type="text" value="飞燕轻便系列防水防..." title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" ></td>
                    <td>2017年7月1日10：36</td>
                    <td>￥299：68</td>
                    <td>￥99：68</td>
                    <td>￥199：00</td>
                    <td>已退款</td>
                    <td>尽快安排发货</td>
                </tr>
                <tr>
                    <td colspan="9" style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" ng-model="m" placeholder=""> 全选&nbsp;&nbsp;删除</td>
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