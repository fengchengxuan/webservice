<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>会员户</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="${ctx}/static/background/css/top.css">
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css">
    <!--引用会员管理样式-->
    <link rel="stylesheet" href="${ctx}/static/background/css/Guest.css">

</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=false;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox" style="height: 1200px;">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>会员管理</span>
            <span>></span>
            <span>会员户</span>
        </div>
        <!-- 内部内容 -->

        <div class="inner inner-1" style=" width: 980px;height: 70px;
            background-color: white;">
            <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;会员户</div>

        </div>

        <div class="inner inner-2" style=" width: 980px;height: 1300px;
            background-color: white;position: relative;top: -10px">
            <ul style="color:white;">
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;width: 90px;">序号</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #2196d4;width:91px">
                    <label>
                    <select class="vip-select">
                        <option>用户类型</option>
                        <option>会员户</option>
                        <option>来宾户</option>
                    </select>
                    </label>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #2196d4;width:144px">用户昵称/ID</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #2196d4;width:197px">注册时间</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #2196d4;width:144px">用户所在地区</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #2196d4;width:207px">
                    <label>
               <select style="background: #24a1e4;border: 0;">
                    <option style="display: block;">用户在本站维度</option>
                    <option style="display: block;">订单</option>
                    <option style="display: block;">新闻评价</option>
                    <option style="display: block;">文章评价</option>
                    <option style="display: block;">咨询</option>
                 </select>
                    </label>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #2196d4;width:101px">
                    <label>
                    <select style="background: #24a1e4;border: 0;">
                        <option style="display: block;">用户状态</option>
                        <option style="display: block;">正常</option>
                        <option style="display: block;">拦截</option>
                        <option style="display: block;">删除</option>
                        <option style="display: block;">注销</option>
                    </select>
                    </label>
                </li>
            </ul>

            <div style="width: 980px;height: 360px;">
                <ul>
                    <li style="width: 980px;height: 42px;display: block"></li>
                </ul>
                <table style="border: 0;margin: 0;padding: 0;text-align: center;font-family: '微软雅黑',sans-serif;font-size: 12px;" id="Ulist">
                    <tr style="height: 10px;background: #fff"></tr>
                    <tr style="width: 980px;">
                        <td style="width: 45px;"><input type="checkbox" name="subBox" readonly="readonly" placeholder=""></td>
                        <td style="width: 45px;">1</td>
                        <td style="width: 92px;">来宾户</td>
                        <td style="width:145px">FC001</td>
                        <td style="width:198px">2017年7月6日18:45:36</td>
                        <td style="width:145px">广西南宁青秀区</td>
                        <td style="width:208px;">订单</td>
                        <td style="width:103px">正常</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 45px;"><input type="checkbox" name="subBox" readonly="readonly" placeholder=""></td>
                        <td style="width: 45px;">1</td>
                        <td style="width: 92px;">来宾户</td>
                        <td style="width:145px">FC001</td>
                        <td style="width:198px">2017年7月6日18:45:36</td>
                        <td style="width:145px">广西南宁青秀区</td>
                        <td style="width:208px;">订单</td>
                        <td style="width:103px">正常</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 45px;"><input type="checkbox" name="subBox" readonly="readonly" placeholder=""></td>
                        <td style="width: 45px;">1</td>
                        <td style="width: 92px;">来宾户</td>
                        <td style="width:145px">FC001</td>
                        <td style="width:198px">2017年7月6日18:45:36</td>
                        <td style="width:145px">广西南宁青秀区</td>
                        <td style="width:208px;">订单</td>
                        <td style="width:103px">正常</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 45px;"><input type="checkbox" name="subBox" readonly="readonly" placeholder=""></td>
                        <td style="width: 45px;">1</td>
                        <td style="width: 92px;">来宾户</td>
                        <td style="width:145px">FC001</td>
                        <td style="width:198px">2017年7月6日18:45:36</td>
                        <td style="width:145px">广西南宁青秀区</td>
                        <td style="width:208px;">订单</td>
                        <td style="width:103px">正常</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 45px;"><input type="checkbox" name="subBox" readonly="readonly" placeholder=""></td>
                        <td style="width: 45px;">1</td>
                        <td style="width: 92px;">来宾户</td>
                        <td style="width:145px">FC001</td>
                        <td style="width:198px">2017年7月6日18:45:36</td>
                        <td style="width:145px">广西南宁青秀区</td>
                        <td style="width:208px;">订单</td>
                        <td style="width:103px">正常</td>
                    </tr>


                </table>

                <div>
                    <div style="float: left;line-height: 36px;margin-left: 14px;"><input type="checkbox" class="checkAll" placeholder=""></div>
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
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>
