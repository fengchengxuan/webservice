<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>全部导航设置</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/nav.css" type="text/css">
</head>
<body ng-init="sysa=false;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=false;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <a href="${ctx}/admin/administrator">  <span>系统管理</span></a>
            <span>></span>
            <a href="${ctx}/admin/wholenav"> <span>全部导航设置</span></a>
        </div>
        <!-- 内部内容 -->
        <div class="inner">
            <div class="inner-ul" style="width: 979px;height: 50px;">
                <ul>
                    <li class="title" style="float: left;font-family:'微软雅黑',sans-serif;border-left:1px solid #24a1e4;text-align: center;height: 43px;width: 105px;">导航名称</li>
                    <li class="title" style="float: left;font-family:'微软雅黑',sans-serif;border-left:1px solid #24a1e4;text-align: center;height: 43px;width: 200px;">导航URL</li>
                    <li class="title" style="float: left;font-family:'微软雅黑',sans-serif;border-left:1px solid #24a1e4;text-align: center;height: 43px;width: 112px;">导航标题</li>
                    <li class="title" style="float: left;font-family:'微软雅黑',sans-serif;border-left:1px solid #24a1e4;text-align: center;height: 43px;width: 113px;">导航关键词</li>
                    <li class="title" style="float: left;font-family:'微软雅黑',sans-serif;border-left:1px solid #24a1e4;text-align: center;height: 43px;width: 204px;">导航描述</li>
                    <li class="title" style="float: left;font-family:'微软雅黑',sans-serif;border-left:1px solid #24a1e4;text-align: center;height: 43px;width: 58px;">编辑状态</li>
                    <li class="title" style="float: left;font-family:'微软雅黑',sans-serif;border-left:1px solid #24a1e4;text-align: center;height: 43px;width: 93px;">导航状态</li>
                    <li class="title" style="float: left;font-family:'微软雅黑',sans-serif;border-left:1px solid #24a1e4;text-align: center;height: 43px;width: 94px;">操作人</li>
                </ul>
            </div>
            <div class="inner-content">
                <div style="">免费体验</div>
                <div style="">  <a>www.fengchheng7080.com</a> </div>
                <div style="    margin-left: 24px; "> 峰程7080免费开...</div>
                <div style="margin-left:14px; "> 南宁免费网站建...</div>
                <div style="margin-left:35px; "> 峰程7080免费开。峰程7080...</div>
                <div style="margin-left: 34px;"> 正常</div>
                <div style="margin-left: 22px;"><a href="${ctx}/admin/editnav"></a> <span class="alter">修改</span> | <span class="del">删除</span></div>
                <div style="margin-left: 27px;">统管理员</div>
            </div>

            <%--<div class="inner-content">--%>
                <%--<div style="">我们能做什么</div>--%>
                <%--<div style="">  <a>www.fengchheng7080.com</a> </div>--%>
                <%--<div style="margin-left:50px; "> 中小型企业面临_客户少了竞争对手多_销售业绩下降难生存_峰程7080来解救 </div>--%>
                <%--<div style="margin-left:50px; "> 南宁中小型企业网络推广怎么做，南宁中小型企业网络营销怎么做，南宁中小型企业企业网站怎么运营</div>--%>
                <%--<div style="margin-left:55px; "> 客户在哪里？竞争对手多怎么办？广告覆盖率下降，销售业绩下降，传统中小型企业为了生存被逼裁员，峰程7080坚持虚拟经济产生于实体经济服务于实体经济是我们责任与使命。--%>
                <%--</div>--%>
                <%--<div style="margin-left: 34px;"> 正常</div>--%>
                <%--<div style="margin-left: 22px;">  <span class="alter">修改</span> | <span class="del">删除</span></div>--%>
                <%--<div style="margin-left: 27px;">统管理员</div>--%>
            <%--</div>--%>

            <%--<div class="inner-content">--%>
                <%--<div style="">我们为您解决问题</div>--%>
                <%--<div style="">  <a>www.fengchheng7080.com</a> </div>--%>
                <%--<div style="margin-left:50px; "> 中小型企业转型网络风格化无人运营等于白建_峰程7080免费为您服务--%>
                    <%--用数据博您掌声 </div>--%>
                <%--<div style="margin-left:50px; "> 广西传统企业互联网转型，南宁传统企业互联网转型，玉林传统企业互联网转型，柳州传统企业互联网转型，桂林传统企业互联网转型，北海传统企业互联网转型，防城港传统企业互联网转型</div>--%>
                <%--<div style="margin-left:55px; "> 峰程7080将中小型企业的品牌、产品、撒满信息海洋里（互联网+、互联网+联盟+互联网制造）这些交给我们，您座等峰程7080每月十二数据报告。</div>--%>
                <%--<div style="margin-left: 34px;"> 正常</div>--%>
                <%--<div style="margin-left: 22px;">  <span class="alter">修改</span> | <span class="del">删除</span></div>--%>
                <%--<div style="margin-left: 27px;">统管理员</div>--%>
            <%--</div>--%>

            <%--<div class="inner-content">--%>
                <%--<div style="">您从我们这里得到什么</div>--%>
                <%--<div style="">  <a>www.fengchheng7080.com</a> </div>--%>
                <%--<div style="margin-left:50px; "> 关于我们 </div>--%>
                <%--<div style="margin-left:50px; "> 公司简介</div>--%>
                <%--<div style="margin-left:55px; "> 我们公司是专业提供网站建设</div>--%>
                <%--<div style="margin-left: 34px;"> 正常</div>--%>
                <%--<div style="margin-left: 22px;">  <span class="alter">修改</span> | <span class="del">删除</span></div>--%>
                <%--<div style="margin-left: 27px;">统管理员</div>--%>
            <%--</div>--%>



            <c:forEach var="navigate" items="${navlist}">
            <div class="inner-content" >
                <div style="">${navigate.catalog.catalog}</div>
                <div style="">  <a>${navigate.navurl}</a> </div>
                <div style="margin-left:50px; "> ${navigate.navtitle} </div>
                <div style="margin-left:50px; "> ${navigate.keywords}</div>
                <div style="margin-left:55px; "> ${navigate.navdescribe}</div>
                <div style="margin-left:50px; "> ${navigate.navstatus.status} <a class="alter" href="">修改</a> | <a class="del" href="">删除</a></div>
                <div style="margin-left:40px; ">${navigate.operator.operator}</div>
            </div>
            </c:forEach>
            <button style="width: 91px;height: 36px;color:#fff;background: #24a1e4;font-size: 18px;text-align: center;line-height: 36px;float: left;position: relative;left: 200px;top: 300px;border:0;margin-left:120px;   ">保存</button>
            <button style="width: 91px;height: 36px;color:#fff;background: #24a1e4;font-size: 18px;text-align: center;line-height: 36px;float: left;position: relative;left: 200px;top: 300px;border:0;margin-left:120px;   " type="reset" >取消</button>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>