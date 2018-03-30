<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<%response.setStatus(HttpServletResponse.SC_OK);%>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>峰程7080</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/500.css" type="text/css">

</head>

<body style="background: #ededed">
<div>
    <jsp:include page="/static/front/comm/top.jsp"/>
    <!--中间内容-->
    <div id="content">
        <div class="content-500 content-500-1"></div>
        <div class="content-500 content-500-2"></div>


    </div>
</div>
<div style="clear: both;background: white;position: relative;top: 170px">
<jsp:include page="/static/front/comm/footer.jsp"/>
</div>


<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>

</body>

</html>