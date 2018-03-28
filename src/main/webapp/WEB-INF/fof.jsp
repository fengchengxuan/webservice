<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<%response.setStatus(HttpServletResponse.SC_OK);%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>404</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link href="${ctx}/static/front/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${ctx}/static/front/css/404.css" rel="stylesheet" type="text/css">
</head>
<body>
<div style="background-color: #ededed">

    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="registbox">
        
        <div class="fof-img" id="nava">
            <img src="${ctx}/static/front/images/fof.png" alt="">
            <div class="fof-text">
                <p class="text1">
                    <!--404-->
                    <img src="${ctx}/static/front/images/404.png" alt="">
                </p>
                <p class="text2">
                    <!--哎呀,您访问的页面不见了-->
                    <img src="${ctx}/static/front/images/oh.png" alt="">
                </p>
                <p class="text3">
                    <!--Oh! The page you visited is missing-->
                    <img src="${ctx}/static/front/images/aiya.png" alt="">
                </p>
            </div>
        </div>

    </div>

    <jsp:include page="/static/front/comm/footer.jsp"/>
</div>
<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>