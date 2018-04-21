<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>修改订单</title>
 <link rel="stylesheet" href="${ctx}/static/front/css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="${ctx}/static/background/css/top.css">
    <style>
        body{
            min-width: 1170px;
        }
        .draftartbox div{
            margin-left: 166px;
            margin-top: 18px;
        }
        .draftartbox input,.draftartbox textarea,.draftartbox select{
            border-radius: 6px;
            border: 1px solid #ccc;
            margin-left: 18px;
        }
        .draftartbox textarea{
            max-width:341px;
            max-height:89px;
            width:341px;
            height:89px;
        }
        .draftartbox input{
            width: 342px;
            height: 28px;
            color: #666;
            position: relative;
        }
        .draftartbox select{
            width:115px;
            height: 25px;
        }
        p{
            color: red;
            font-size: 10px;
            margin: 5px 0 0 33px;

            position: relative;
            left: 460px;top: -30px;
        }
        .draftartbox span{
            text-align:justify;
            text-align-last:justify;
        }
        .draftartbox span{
            line-height:0;
            width: 102px;
            text-align: right;
            display: block;
            margin-top: 15px;
        }
        .draftartbox-left{
            width: 232px;
            height: 30px;
            display: block;
            float: left;
        }
        .p{
            position: relative;
            left: 370px;
        }
    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=false;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=false;allordera=false;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox" style="height: 900px">
        <%--<div class="top">--%>
            <%--<img src="${ctx}/static/background/images/FZ.png" alt="">--%>
            <%--<span>当前位置</span>--%>
            <%--<span>></span>--%>
            <%--<span>订单管理</span>--%>
            <%--<span>></span>--%>
            <%--<span>我的全部订单</span>--%>
            <%--<span>></span>--%>
            <%--<span>修改订单</span>--%>
        <%--</div>--%>
        <div class="inner" style="height: 1126px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;修改订单</div>
            <div class="draftartbox">
                <form action="" method="post">
                <div><span  class="draftartbox-left" >
                编号</span><input  type="text" placeholder="" onblur="if (this.value == '') {this.value = '   FC001';}" onfocus="if (this.value == '   FC001') {this.value = '';}" value="   FC001">
                    <p class="p">系统自行生成编号，不可自定义</p>
                </div>
                <div>
                <span  class="draftartbox-left" >
                订单标题</span>
                    <input type="text" placeholder="" onblur="if (this.value == '') {this.value = '   飞燕轻便系列防水防尘键盘鼠标新品上市';}" onfocus="if (this.value == '   飞燕轻便系列防水防尘键盘鼠标新品上市') {this.value = '';}" value="   飞燕轻便系列防水防尘键盘鼠标新品上市">
                    <p class="p">可自定义，也可根据创建拍下的产品定义订单标题即可</p>
                </div>
                <div style="margin-top: 14px">
                    <span  class="draftartbox-left">创建订单时间</span>
                    <input  type="text" placeholder="" onblur="if (this.value == '') {this.value = '   2017年7月1日10：36   ';}" onfocus="if (this.value == '   2017年7月1日10：36   ') {this.value = '';}" value="   2017年7月1日10：36   ">
                    <p class="p">自动默认当前创建订单系统时间</p>
                </div>
                <div>
                    <span class="draftartbox-left" >产品原价</span>
                    <input  type="text" placeholder="" onblur="if (this.value == '') {this.value = '   2017年7月1日10：36   ';}" onfocus="if (this.value == '   2017年7月1日10：36   ') {this.value = '';}" value="   2017年7月1日10：36   ">
                    <p class="p">可自定义设置产品原价</p>
                </div>
                <div>
                    <span class="draftartbox-left">折扣优惠</span>
                    <input  type="text" placeholder="" onblur="if (this.value == '') {this.value = '   ￥299：68';}" onfocus="if (this.value == '   ￥299：68') {this.value = '';}" value="   ￥299：68">
                    <p class="p">可自定义设置产品折扣/优惠卷</p>
                </div>
                <div>
                    <span class="draftartbox-left" >订单实付款金额</span>
                    <input type="text" placeholder="" style="margin-left: 16px" onblur="if (this.value == '') {this.value = '   ￥99：68';}" onfocus="if (this.value == '   ￥99：68') {this.value = '';}" value="   ￥99：68">
                    <p class="p">可自定义设置订单实付金额</p>
                </div>
                <div>
                    <span class="draftartbox-left" >订单状态</span>
                    <label>
                    <select >
                        <option>已付款</option>
                        <option>未付款</option>
                    </select>
                    </label>
                    <p style="position: relative;left:150px;top: -24px">不可修改</p>
                </div>
                <div>
                    <span class="draftartbox-left" >备注</span>
                    <textarea placeholder=""></textarea>
                    <p style="position: relative;left:440px;">拍下的用户可留言对该订单的备注及其它<br>要求或注释说明</p>
                </div>
                <button  style="margin:80px 0 0 260px;width:166px;height: 40px; border-radius:6px;border: 0;color:#fff;background: #2196d4;">提交</button>
                <button  style="margin:80px 0 0 110px;width:166px;height: 40px; border-radius:6px;border: 0;color:#fff;background: #2196d4;">取消</button>
                </form>
            </div>


            <div></div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>