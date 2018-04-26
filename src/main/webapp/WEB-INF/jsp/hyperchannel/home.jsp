<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>快速通道</title>
     <link rel="stylesheet" href="${ctx}/static/front/css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="${ctx}/static/background/css/top.css">
    <link rel="stylesheet" href="${ctx}/static/background/css/setindexstyle.css" type="text/css">
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
        </div>
        <div class="inner">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;快速通道</div>
            <div class="ulbox">
                <div class="topbox">
                    <div class="setnews" ng-init="setnewsa=true">
                        <div>
                            <div ng-if="setnewsa==false" class="point">></div>
                            <div ng-if="setnewsa==true" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                            <div class="name" style="cursor: pointer">新闻管理</div>
                        </div>
                        <ul class="setnews-content" ng-if="setnewsa==true">
                            <li><a href="${ctx}/admin/allnews">全部新闻</a></li>
                            <li><a href="${ctx}/admin/addnews">添加新闻</a></li>
                            <li><a href="${ctx}/admin/editnews">修改新闻</a></li>
                            <li><a href="${ctx}/admin/draftnews">草稿新闻</a></li>
                        </ul>
                    </div>
                    <div class="setproduct" ng-init="setproducta=true">
                        <div>
                            <div ng-if="setproducta==false" class="point">></div>
                            <div ng-if="setproducta==true" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                            <div class="name" style="cursor: pointer">全部产品</div>
                        </div>
                        <ul class="setproduct-content" ng-if="setproducta==true">
                            <li><a href="${ctx}/admin/addproduct">添加产品</a></li>
                            <li><a href="${ctx}/admin/editproduct">修改产品</a></li>
                            <li><a href="${ctx}/admin/draftproduct">草稿产品</a></li>
                        </ul>
                    </div>

                    <div class="fors" ng-init="forsa=true">
                        <div ng-click="forsa=!forsa">
                            <div ng-if="forsa==false" class="point">></div>
                            <div ng-if="forsa==true" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                            <div class="name" style="cursor: pointer">焦点或闪屏</div>
                        </div>
                        <ul class="fors-content" ng-if="forsa==true">
                            <li><a href="/admin/focustopic">首页</a></li>
                            <li><a href="/admin/focuscolumn">栏目</a></li>
                            <li><a href="/admin/focustheme">专题</a></li>
                        </ul>
                    </div>

                    <div class="setkeys" ng-init="setkeysa=true">
                        <div>
                            <div ng-if="setkeysa==false" class="point">></div>
                            <div ng-if="setkeysa==true" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                            <div class="name" style="cursor: pointer">全部关键词</div>
                        </div>
                        <ul class="setkeys-content" ng-if="setkeysa==true">
                            <li><a href="${ctx}/admin/allkeywords">全部关键词</a></li>
                            <li><a href="${ctx}/admin/addkeywords">添加关键词</a></li>
                            <li><a href="${ctx}/admin/editkeywords">修改关键词</a></li>
                        </ul>
                    </div>
                    <div class="setarticale" ng-init="setarticalea=true">
                        <div>
                            <div ng-if="setarticalea==false" class="point">></div>
                            <div ng-if="setarticalea==true" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                            <div class="name" style="cursor: pointer">文章管理</div>
                        </div>
                        <ul class="setarticale-content" ng-if="setarticalea==true">
                            <li><a href="${ctx}/admin/allarticles">全部文章</a></li>
                            <li><a href="${ctx}/admin/addarticles">添加文章</a></li>
                            <li><a href="${ctx}/admin/editarticles">修改文章</a></li>
                            <li><a href="${ctx}/admin/draftarticles">草稿文章</a></li>
                        </ul>
                    </div>

                    <div class="lastbox">
                        <div class="setorder" ng-init="setordera=true">
                            <div ng-click="setordera=!setordera">
                                <div ng-if="setordera==false" class="point">></div>
                                <div ng-if="setordera==true" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                                <div class="name" style="cursor: pointer">我的全部订单</div>
                            </div>
                            <ul class="setorder-content" ng-if="setordera==true">
                                <li><a href="/admin/allorder">全部订单</a></li>
                                <li><a href="/admin/addorder">添加订单</a></li>
                                <li><a href="/admin/paidorder">已付订单</a></li>
                                <li><a href="/admin/arrearage">未付订单</a></li>
                                <li><a href="/admin/refund">退款订单</a></li>
                                <li><a href="/admin/editOrder">修改订单</a></li>
                            </ul>
                        </div>

                        <div class="setvideo" ng-init="setvideoa=true">
                            <div ng-click="setvideoa=!setvideoa">
                                <div ng-if="setvideoa==false" class="point">></div>
                                <div ng-if="setvideoa==true" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                                <div class="name" style="cursor: pointer">视频默认</div>
                            </div>
                            <ul class="setvideo-content" ng-if="setvideoa==true">
                                <li><a href="/admin/allvcr">全部视频</a></li>
                                <li><a href="/admin/addvcr">添加视频</a></li>
                                <li><a href="/admin/editvcr">修改视频</a></li>
                                <li><a href="/admin/draftvideo">草稿视频</a></li>
                            </ul>
                        </div>

                    <div class="setarticale" ng-init="ssetconsulta=true">
                        <div class="" ng-init="setconsulta=true">
                            <div>
                                <div ng-if="setconsulta==false" class="point">></div>
                                <div ng-if="setconsulta==true" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                                <div class="name" style="cursor: pointer">咨询管理</div>
                            </div>
                            <ul class="setconsult-content" ng-if="setconsulta==true">
                                <li><a href="${ctx}/admin/alladvice">全部咨询</a></li>
                                <li><a href="${ctx}/admin/answer">已答咨询</a></li>
                                <li><a href="${ctx}/admin/noanswer">未答咨询</a></li>
                                <li><a href="${ctx}/admin/colation">过滤咨询</a></li>
                            </ul>
                        </div>
                    </div>

                        <div class="setevaluate" ng-init="setevaluatea=true">
                            <div ng-click="setevaluatea=!setevaluatea">
                                <div ng-if="setevaluatea==false" class="point">></div>
                                <div ng-if="setevaluatea==true" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                                <div class="name" style="cursor: pointer">我的评价管理</div>
                            </div>
                            <ul class="setevaluate-content" ng-if="setevaluatea==true">
                                <li><a href="/admin/orderestimate">订单评价</a></li>
                                <li><a href="/admin/newsestimate">新闻评价</a></li>
                                <li><a href="/admin/articleEstimate">文章评价</a></li>
                                <li><a href="/admin/filterestimate">过滤评价</a></li>
                            </ul>
                        </div>

                        <div class="setsubject" ng-init="setsubjecta=true">
                            <div ng-click="setsubjecta=!setsubjecta">
                                <div ng-if="setsubjecta==false" class="point">></div>
                                <div ng-if="setsubjecta==true" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                                <div class="name" style="cursor: pointer">专题管理</div>
                            </div>
                            <ul class="setsubject-content" ng-if="setsubjecta==true">
                                <li><a href="/admin/alltheme">全部专题</a></li>
                                <li><a href="/admin/addtheme">添加专题</a></li>
                                <li><a href="/admin/editTheme">修改专题</a></li>
                                <li><a href="/admin/draftTheme">草稿专题</a></li>
                            </ul>
                        </div>

                </div>

            </div>
        </div>
    </div>
</div>
</div>

<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>
