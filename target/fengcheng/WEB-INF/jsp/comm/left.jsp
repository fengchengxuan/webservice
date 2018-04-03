<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<link rel="stylesheet" href="${ctx}/static/background/css/style.css" type="text/css">
<link rel="stylesheet" href="${ctx}/static/background/css/left.css" type="text/css">
<%--订单类--%><style>
    label{
        margin-bottom: 0;
    }
    select,option{
        font-size: 12px;
        font-weight: 300;
    }
    tr,th{
        font-weight: 300;
    }
    .fade .draftartbox input ,.fade .draftartbox select,.fade .draftartbox textarea{
        margin-left: 18px;
    }
    body{
        min-width: 1170px;
    }.modal .contener .inner .darbtnbox button{width: 110px}
    .modal table{
        border-collapse: collapse;
    }
    th,td{
        padding: 0;
    }
    .modal select{
        color: white;
    }
     tr:nth-of-type(even){
        background: #F5F5F5;
        height: 30px;
        text-align: center;
    }

    tr:nth-of-type(odd){
        background: #fff;
        height: 40px;
    }
    .modal input:nth-of-type(odd){
        border: 0;background: #fff;
    }

    /*弹框*/
    .modal .draftartbox div{
        margin-left: 90px;
        margin-top: 4px;
    }
    .modal .draftartbox input,.modal .draftartbox textarea,.draftartbox select{
        border: 1px solid #ccc;
    }
    .modal .draftartbox textarea{
        max-width:341px;
        max-height:89px;
        width:341px;
        height:89px;
    }
    .modal .draftartbox input{
        width: 342px;
        height: 28px;
        color: #666;
        position: relative;
    }
    .modal .draftartbox select{
        width:115px;
        height: 25px;
    }
    .modal p{
        color: red;
        font-size: 10px;
        margin: 5px 0 0 33px;

        position: relative;
        left: 31px;
        top:1px;
    }
    .modal .draftartbox span{
        text-align:justify;
        text-align-last:justify;
    }
    .modal .draftartbox span{
        line-height:0;
        width: 102px;
        text-align: right;
        display: block;
        margin-top: 15px;
    }
    .modal .draftartbox-left{
        width: 232px;
        height: 30px;
        display: block;
        float: left;
    }
    .p{
        position: relative;
        /*left: 370px;*/
    }
    .modal select{
        margin-left: 0;
        border-radius: 0;
        -webkit-appearance: none;
        background: url(../../../static/background/images/Arrow.jpg) no-repeat scroll right center transparent;
    }
</style>

    <div class="leftbox">
        <div class="nav">
            <!--系统管理start-->
            <div class="system">
                <div ng-click="sysa=!sysa;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true" ng-class="{
                    'original' : sysa==true,
                    'change' : sysa==false}">
                    <img class="system-img" src="${ctx}/static/background/images/icon_logo.png" alt="">
                    <div ng-if="sysa==true" class="point">></div>
                    <div ng-if="sysa==false" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                    <div class="name" style="cursor: pointer">系统管理</div>
                </div>
                <ul class="system-content" ng-if="sysa==false">
                    <!--网站基本设置-->
                    <div class="base"><div class="base-title"  ng-click="basea=!basea;allnava=true;adma=true">
                        <img ng-if="basea==true" src="${ctx}/static/background/images/SJ_02.png" alt="">
                        <img ng-if="basea==false" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);" src="${ctx}/static/background/images/SJ_02.png" alt="">
                        <a style="list-style: none;text-decoration:none;" href="#">网站基本设置</a></div>
                        <ul class="base-content" ng-if="basea==false">
                            <li class="list list1"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/websetting">网站设置</a></li>
                            <li class="list list2"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/homepage">首页设置</a></li>
                        </ul>
                    </div>

                    <!--全部导航设置-->
                    <div class="allnava"><div class="title" ng-click="allnava=!allnava;basea=true;adma=true">
                        <img ng-if="allnava==true" src="${ctx}/static/background/images/SJ_02.png" alt="">
                        <img ng-if="allnava==false" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);" src="${ctx}/static/background/images/SJ_02.png" alt="" >
                        <a style="list-style: none;text-decoration:none;" href="${ctx}/admin/wholenav">全部导航设置</a></div>
                        <ul class="allnav-content" ng-if="allnava==false">
                            <li class="list list3"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/addnav">添加导航</a></li>
                            <li class="list list4"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/editnav">修改导航</a></li>
                        </ul>
                    </div>

                    <!--系统管理员设置-->
                    <div class="adm"><div class="title list5" ng-click="adma=!adma;basea=true;allnava=true">
                        <a style="list-style: none;text-decoration:none;margin-left: 28px" href="${ctx}/admin/administrator">系统管理员设置</a></div>
                    </div>
                    <li class="list6"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/weboff">关闭网站</a></li>
                    <li class="list7"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/webon">开启网站</a></li>
                </ul>
            </div>
            <!--系统管理end-->
            <!--内容管理start-->
            <div class="content">
                <div ng-click="contenta=!contenta;sysa=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true" ng-class="{
                    'original' : contenta==true,
                    'change' : contenta==false}">
                    <img class="content-img" src="${ctx}/static/background/images/icon_01.png" alt="">
                    <div ng-if="contenta==true" class="point">></div>
                    <div ng-if="contenta==false" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                    <div class="name" style="cursor: pointer">内容管理</div>
                </div>
                <ul class="content-content" ng-if="contenta==false">
                    <div ng-click="contenta=!contenta;sysa=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true" class="news">
                        <div class="news-title" ng-click="newsa=!newsa;aticalea=true;consulta=true">
                            <img ng-if="newsa==true" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <img ng-if="newsa==false" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <a style="list-style: none;text-decoration:none;" href="">新闻管理&nbsp;&nbsp;</a>
                        </div>

                        <ul class="news-content" ng-if="newsa==false">
                            <li class="list list8"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/allnews">全部新闻</a></li>
                            <li class="list list9"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/addnews">添加新闻</a></li>
                            <%--<li class="list list10"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/editnews">修改新闻</a></li>--%>
                            <li class="list list11"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/draftnews">草稿新闻</a></li>
                        </ul>
                    </div>
                    <div class="aticale">
                        <div  class="aticale-title" ng-click="aticalea=!aticalea;newsa=true;consulta=true">
                            <img ng-if="aticalea==true" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <img ng-if="aticalea==false" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <a style="list-style: none;text-decoration:none;" href="#">文章管理&nbsp;&nbsp;</a>
                        </div>
                        <ul class="aticale-content" ng-if="aticalea==false">
                            <li class="list list12"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/allarticles">全部文章</a></li>
                            <li class="list list13"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/addarticles">添加文章</a></li>
                            <%--<li class="list"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/editarticles">修改文章</a></li>--%>
                            <li class="list list14"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/draftarticles">草稿文章</a></li>
                        </ul>
                    </div>
                    <div class="consult">
                        <div class="consult-title" ng-click="consulta=!consulta;newsa=true;aticalea=true">
                            <img ng-if="consulta==true" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <img ng-if="consulta==false" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <a style="list-style: none;text-decoration:none;" href="#">咨询管理&nbsp;&nbsp;</a>
                        </div>
                        <ul class="consult-content" ng-if="consulta==false">
                            <li class="list list15"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/alladvice">全部咨询</a></li>
                            <li class="list list16"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/answer">已答咨询</a></li>
                            <li class="list list17"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/noanswer">未答咨询</a></li>
                            <li class="list list18"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/colation">过滤咨询</a></li>
                        </ul>
                    </div>
                </ul>
            </div>
            <!--内容管理end-->
            <!--产品管理start-->
            <div class="product">
                <div ng-click="producta=!producta;sysa=true;contenta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true" ng-class="{
                    'original' : producta==true,
                    'change' : producta==false}">
                <img class="product-img" src="${ctx}/static/background/images/icon_02.png" alt="">
                <div ng-if="producta==true" class="point">></div>
                <div ng-if="producta==false" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                <div class="name" style="cursor: pointer">产品管理</div>
            </div>
                <ul class="product-content" ng-if="producta==false">
                    <li class="list19"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/allproduct">全部产品</a></li>
                    <%--<li><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/allproduct1">产品列表</a></li>--%>
                    <li class="list21"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/addproduct">添加产品</a></li>
                    <%--<li><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/editproduct">修改产品</a></li>--%>
                    <%--<li><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/updateProduct">修改产品信息</a></li>--%>
                    <li class="list22"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/draftproduct">草稿产品</a></li>
                </ul>
            </div>
            <!--订单管理start-->
            <div class="order">
                <div ng-click="ordera=!ordera;sysa=true;contenta=true;producta=true;membera=true;adva=true;pagefoota=true;keya=true" ng-class="{
                    'original' : ordera==true,
                    'change' : ordera==false}">
                    <img class="order-img" src="${ctx}/static/background/images/icon_03.png" alt="">
                    <div ng-if="ordera==true" class="point">></div>
                    <div ng-if="ordera==false" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                    <div class="name" style="cursor: pointer">订单管理</div>
                </div>
                <ul class="order-content" ng-if="ordera==false">
                    <div class="allorder">
                        <div class="allorder-title" ng-click="allordera=!allordera;myevaluatea=true">
                            <img ng-if="allordera==true" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <img ng-if="allordera==false" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <a style="list-style: none;text-decoration:none;" href="">我的全部订单</a>
                        </div>
                        <ul class="base-content" ng-if="allordera==false">
                            <li class="list list23"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/allorder">全部订单</a></li>
                            <%--<li class="list list24"><a style="list-style: none;text-decoration:none;" data-toggle="modal" data-target="#myModal2">添加订单</a></li>--%>
                            <%--<li class="list"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/paidorder">已付款订单</a></li>--%>
                            <%--<li class="list"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/arrearage">未付款订单</a></li>--%>
                            <%--<li class="list"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/refund">已退款订单</a></li>--%>
                            <%--<li class="list"><a style="text-decoration: none;text-decoration: none"  data-toggle="modal" data-target="#myModal4">修改订单</a> </li>--%>
                            <li class="list list25"><a style="text-decoration: none;text-decoration: none"  href="${ctx}/admin/allApply">查看申请</a> </li>
                        </ul>
                    </div>
                    <div class="myevaluate">
                        <div class="myevaluate-title" ng-click="myevaluatea=!myevaluatea;allordera=true">
                            <img ng-if="myevaluatea==true" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <img ng-if="myevaluatea==false" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <a style="list-style: none;text-decoration:none;" href="#">我的评价管理</a>
                        </div>
                        <ul class="myevaluate-content" ng-if="myevaluatea==false">
                            <li class="list list26"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/orderestimate">订单评价</a></li>
                            <li class="list list27"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/newsestimate">新闻评价</a></li>
                            <li class="list list28"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/articleEstimate">文章评价</a></li>
                            <li class="list list29"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/filterestimate">过滤评价</a></li>
                        </ul>

                    </div>
                </ul>
            </div>
            <!--订单管理-->
            <!--广告管理start-->
            <div class="adv">
                <div ng-click="adva=!adva;sysa=true;contenta=true;producta=true;ordera=true;membera=true;pagefoota=true;keya=true" ng-class="{
                    'original' : adva==true,
                    'change' : adva==false}">
                    <img class="adv-img" src="${ctx}/static/background/images/icon_05.png" alt="">
                    <div ng-if="adva==true" class="point">></div>
                    <div ng-if="adva==false" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                    <div class="name" style="cursor: pointer">广告管理</div>
                </div>
                <ul class="adv-content" ng-if="adva==false">
                    <div class="focus-or-splash">
                        <div class="f-or-s-title" ng-click="fosa=!fosa;videoadva=true;subjecta=true">
                            <img ng-if="fosa==true" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <img ng-if="fosa==false" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <a style="list-style: none;text-decoration:none;" href="">焦点或者闪屏</a></div>
                        <ul class="base-content" ng-if="fosa==false">
                            <li class="list list30"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/focustopic">首页</a></li>
                            <li class="list list31"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/focuscolumn">栏目</a></li>
                            <%--<li class="list"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/focustheme">专题</a></li>--%>
                        </ul>
                    </div>
                    <div class="videoadv">
                        <div ng-click="videoadva=!videoadva;fosa=true;subjecta=true">
                            <img ng-if="videoadva==true" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <img ng-if="videoadva==false" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <a style="list-style: none;text-decoration:none;" href="#">视频广告&nbsp;&nbsp;</a></div>
                        <ul class="videoadv-content" ng-if="videoadva==false">
                            <li class="list list32"><a style="list-style: none;text-decoration: none" href="${ctx}/admin/allvcr">全部视频&nbsp;&nbsp;</a></li>
                            <%--<li class="list"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/addvcr">添加视频&nbsp;&nbsp;</a></li>--%>
                            <%--<li class="list"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/editvcr">修改视频&nbsp;&nbsp;</a></li>--%>
                            <li class="list lst33"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/draftvideo">草稿视频&nbsp;&nbsp;</a></li>
                        </ul>
                    </div>
                    <div class="subject">
                        <div class="subject-title" ng-click="subjecta=!subjecta;fosa=true;videoadva=true">
                            <img ng-if="subjecta==true" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <img ng-if="subjecta==false" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);" src="${ctx}/static/background/images/SJ_02.png" alt="">
                            <a style="list-style: none;text-decoration:none;" href="#">专题管理&nbsp;&nbsp;</a></div>
                        <ul class="subject-content" ng-if="subjecta==false">
                            <li class="list list34"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/alltheme">全部专题&nbsp;&nbsp;</a></li>
                            <%--<li class="list"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/addtheme">添加专题&nbsp;&nbsp;</a></li>--%>
                            <%--<li class="list"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/editTheme">修改专题&nbsp;&nbsp;</a></li>--%>
                            <%--<li class="list"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/draftTheme">草稿专题&nbsp;&nbsp;</a></li>--%>
                        </ul>
                    </div>
                </ul>
            </div>
            <!--广告管理end-->
            <!--会员管理start-->
            <div class="member">
                <div ng-click="membera=!membera;sysa=true;contenta=true;producta=true;ordera=true;adva=true;pagefoota=true;keya=true" ng-class="{
                    'original' : membera==true,
                    'change' : membera==false}">
                    <img class="member-img" src="${ctx}/static/background/images/icon_04.png" alt="">
                    <div ng-if="membera==true" class="point">></div>
                    <div ng-if="membera==false" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                    <div class="name" style="cursor: pointer">会员管理</div>
                </div>
                <ul class="member-content" ng-if="membera==false">
                    <li class="35"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/allvip" >全部会员</a></li>
                    <%--<li><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/Guests" >来宾户</a></li>--%>
                    <%--<li><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/members" >会员户</a></li>--%>
                </ul>
            </div>
            <!--会员管理end-->

            <!--关键词管理start-->
            <div class="key">
                <div  ng-click="keya=!keya;sysa=true;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=true" ng-class="{
                    'original' : keya==true,
                    'change' : keya==false}">
                    <img class="key-img" src="${ctx}/static/background/images/icon_07.png" alt="">
                    <div ng-if="keya==true" class="point">></div>
                    <div ng-if="keya==false" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                    <div class="name" style="cursor: pointer">关键词管理</div>
                </div>
                <ul class="key-content" ng-if="keya==false">
                    <li class="list36"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/allkeywords">全部关键词</a></li>


                </ul>
            </div>
            <!--关键词管理end-->
            <!--页脚管理start-->
            <div class="pagefoot">
                <div ng-click="pagefoota=!pagefoota;sysa=true;contenta=true;producta=true;ordera=true;membera=true;adva=true;keya=true" ng-class="{
                    'original' : pagefoota==true,
                    'change' : pagefoota==false}">
                    <img class="pagefoot-img" src="${ctx}/static/background/images/icon_06.png" alt="">
                    <div ng-if="pagefoota==true" class="point">></div>
                    <div ng-if="pagefoota==false" class="point" style="-ms-transform: rotate(90deg);
                            -webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);">></div>
                    <div class="name" style="cursor: pointer">页脚管理</div>
                </div>
                <ul class="pagefoot-content" ng-if="pagefoota==false">
                    <div class="deputynav">
                        <div class="deputynav-title">
                        <%--<img ng-if="deputynava==true" src="${ctx}/static/background/images/SJ_02.png" alt="">--%>
                        <%--<img ng-if="deputynava==false" style="-ms-transform: rotate(90deg);--%>
                            <%---webkit-transform: rotate(90deg);-o-transform: rotate(90deg);-moz-transform: rotate(90deg);" src="${ctx}/static/background/images/SJ_02.png" alt="">--%>
                        <a style="list-style: none;text-decoration:none;" href="${ctx}/admin/AuxiliaryNav">副导航&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></div>
                        <ul class="deputynav-content" ng-if="deputynava==false">
                            <li class="list"><a href="">添加副导航</a></li>
                            <li class="list"><a href="">修改副导航</a></li>
                        </ul>
                    </div>
                    <li class="list37"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/certificate">第三方认证&nbsp;&nbsp;</a></li>
                    <li class="list38"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/copyright">版权所有&nbsp;&nbsp;&nbsp;</a></li>
                    <li class="list39"><a style="list-style: none;text-decoration:none;" href="${ctx}/admin/link">友情链接管理&nbsp;</a></li>
                </ul>
            </div>
            <!--页脚管理end-->
        </div>
    </div>
<script type="text/javascript">
    $(document).ready(function () {
      // $(".product").hide();
    })
</script>










<!--修改订单-->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog" >
        <div class="modal-content" style="width:745px;height: auto;padding-bottom: 20px;">
            <div >
                <button type="button"  data-dismiss="modal"
                        aria-hidden="true" style="background: transparent;color: #009F43;border: 0;position: relative;left: 708px;font-size:25px;">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>
            <div class="modal-body" style="margin-left: 18px;padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;">

                <div class="inner" style="height: auto">
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
                                    <select style="font-weight: 400;color: #666">
                                        <option>已付款</option>
                                    </select>
                                </label>
                                <p style="position: relative;left:150px;top: -24px">不可修改</p>
                            </div>
                            <div>
                                <span class="draftartbox-left" >备注</span>
                                <textarea placeholder=""></textarea>
                                <p style="position: relative;left:430px;top:-30px">拍下的用户可留言对该订单的<br>备注及其它要求或注释说明</p>
                            </div>
                            <button  style="margin:0 0 0 210px;width:100px;height: 25px; border: 0;color:#fff;background: #2196d4;">提交</button>
                            <button  style="margin:0 0 0 60px;width:100px;height: 25px; border: 0;color:#fff;background: #2196d4;">取消</button>
                        </form>
                    </div>


                    <div></div>
                </div>

            </div>

        </div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<!--添加订单-->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog" >
        <div class="modal-content" style="width:745px;height: auto;padding-bottom: 20px;">
            <div >
                <button type="button"  data-dismiss="modal"
                        aria-hidden="true" style="background: transparent;color: #009F43;border: 0;position: relative;left: 708px;font-size:25px;">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>
            <div class="modal-body" style="margin-left: 18px;padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;">

                <div class="inner" style="height: auto">
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
                                    <select style="font-weight: 400;color: #666">
                                        <option>已付款</option>
                                    </select>
                                </label>
                                <p style="position: relative;left:150px;top: -24px">不可修改</p>
                            </div>
                            <div>
                                <span class="draftartbox-left" >备注</span>
                                <textarea placeholder=""></textarea>
                                <p style="position: relative;left:430px;top:-30px">拍下的用户可留言对该订单的<br>备注及其它要求或注释说明</p>
                            </div>
                            <button  style="margin:0 0 0 210px;width:100px;height: 25px;border: 0;color:#fff;background: #2196d4;">提交</button>
                            <button  style="margin:0 0 0 60px;width:100px;height: 25px;border: 0;color:#fff;background: #2196d4;">取消</button>
                        </form>
                    </div>


                    <div></div>
                </div>

            </div>

        </div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<%--修改专题--%>
<div class="modal fade" id="myModauserl2" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" style="left: -220px;margin-top: -30px">
    <div class="modal-dialog" >
        <div class="modal-content" style="width:916px;height: auto;padding-bottom: 20px;">
            <div >
                <button type="button"  data-dismiss="modal"
                        aria-hidden="true" style="background: transparent;color: #009F43;border: 0;position: relative;left: 880px;font-size:25px;">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>
            <div class="modal-body" style="padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;">

<div class="inner" style="height: 775px">


    <div style="width: 180px;height: 612px;margin: 20px 0 0 25px;float: left;" id="alltheme-box">
        <div class="allTHEMW1">网站建设/程序及功能定制研发/APP研发与定制<i> </i></div>
        <div class="allTHEMW2">网 络 计 划 与 制 定<i> </i></div>
        <div class="allTHEMW2">网 络 推 广<i> </i></div>
        <div class="allTHEMW2">网 络 营 销<i> </i></div>
        <div class="allTHEMW2">搜 索 优 化<i> </i></div>
        <div class="allTHEMW2">网 络 媒 体<i> </i></div>
        <div class="allTHEMW2">网 络 文 案<i> </i></div>
        <div class="allTHEMW2">视 频 制 作 与 推 广<i> </i></div>
        <div class="allTHEMW2">网 络 计 划 与 制 定<i> </i></div>
        <div class="allTHEMW2">网 络 运 营 <i> </i></div>
        <div class="allTHEMW2">词 条 / 百 科<i> </i></div>
        <div class="allTHEMW2">数 据 统 计<i> </i></div>
        <div class="allTHEMW2">实 体 媒 体 及 广 告 投 放"<i> </i></div>
    </div>
    <div style="float: left" class="allzt">
        <div style="width: 310px;height: 420px;clear: both">
            <div>服务标准:
                <select name="" id="">
                    <option>标准版</option>
                    <option>加强版</option>
                    <option>基础版</option>
                    <option>定制版</option>
                    <option>商业版</option>
                </select>
            </div>
            <div>客服名称:
                <input type="text">
            </div>

            <div>制作日期:
                <input type="text">
            </div>

            <div>交款日期:
                <input type="text">
            </div>

            <div>演示地址:
                <input type="text">
            </div>

            <div>演示地址:
                <img src="${ctx}/static/background/images/all-xing.jpg" alt="">
                <img src="${ctx}/static/background/images/all-xing.jpg" alt="">
                <img src="${ctx}/static/background/images/all-xing.jpg" alt="">
                <img src="${ctx}/static/background/images/all-xing.jpg" alt="">
                <img src="${ctx}/static/background/images/all-xing.jpg" alt="">
            </div>

            <div>客户形象照片:
                <img src="${ctx}/static/background/images/addall-titl.png" alt="">
            </div>

            <div>客户评价感言:
                <textarea style="width: 563px;height: 123px;border: 1px solid #999999;border-radius: 4px;"></textarea>
            </div>

        </div>
        <div style="margin: -385px 0 0 246px;">
                    <span style="position: relative;left: 183px;top: -185px;">
                    网站建设缩略图
                    </span>
            <img src="${ctx}/static/background/images/add-thimg.png" alt="">
        </div>
        <p>
            <button style="background: #1994d3;text-align: center;color: white;width: 144px;height: 36px;border: 0;margin: 255px  0 0 252px ">创建并保存</button>
        </p>
    </div>


</div>

            </div>

        </div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->



