<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/taglib.jsp"%>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>峰程7080</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/wedo.css" type="text/css">

</head>
<body>


<div>
    <jsp:include page="/static/front/comm/top.jsp"/></div>
    <div style="width:1200px;margin:0 auto;text-align: left;line-height: 22px;color: #666">
        <a href="http://www.fengcheng7080.com/" style="font-size: 12px;color: #666;text-decoration: none">首页</a> > <a href="" style="font-size: 12px;color: #666;text-decoration: none">我们能做什么</a>
    </div>
    <div id="header">
        <div id="container">


            <div class="flexslider">
                <ul class="slides">
                    <li style="background:url(${ctx}/static/front/images/wedo-banner.jpg) 50% 0 no-repeat;" id="section0">

                    </li>
                    <li style="background:url(${ctx}/static/front/images/wedo-banner2.jpg) 50% 0 no-repeat;"></li>
                    <li style="background:url(${ctx}/static/front/images/wedo-banner3.jpg) 50% 0 no-repeat;" id="section2">
                    </li>
                </ul>
            </div>

        </div>
    </div>
    <!--中间内容-->
    <div id="content">
        <div class="wedo-box1">
            <div>
                <img src="${ctx}/static/front/images/wedo01.jpg" alt="" style="margin: 52px 0 0 325px">
            </div>
            <div class="wedo-box1_2">
            </div>
        </div>
        <div class="wedo-box2">
            <div class="wedo-box2_1">
            </div>
            <div class="wedo-box2_2">
            </div>
        </div>
        <!--内部内容-->
    </div>
<jsp:include page="/static/front/comm/footer.jsp"/>



<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>

<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/jquery.flexslider-min.js" type="text/javascript"></script>
<script>
    $(document).ready(function(){
        $('.flexslider').flexslider({
            directionNav: true,
            pauseOnAction: false
        });
    });
</script>
</body>

</html>