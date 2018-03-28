<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/taglib.jsp"%>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>峰程7080</title>
    <link rel="stylesheet" href="${ctx}/static/front/index/css/style.css" type="text/css">
    <link href="${ctx}/static/front/css/style-left.css" rel="stylesheet" type="text/css">
    <link href="${ctx}/static/front/css/style-right.css" rel="stylesheet" type="text/css">
    <link href="${ctx}/static/front/css/Dowhat.css" rel="stylesheet" type="text/css">
    <!--导入轮播图-->
    <link href="${ctx}/static/front/css/Carousel.css" rel="stylesheet" type="text/css">

</head>

<style>
    .ljgmbutton {
        border: 0;
        margin-left: 25px;
        background: url(../static/front/images/buttun-m.png);
        background-position: center center;
        width: 128px;
        height: 39px;
        color: #fff;
        font-size: 18px;
        font-family: '微软雅黑',sans-serif;
        cursor: pointer;
    }
    .content-right-text-order1{
        height: 400px;
    }
    #type2,#type1,#type3,#type4{
        z-index: 5;
    }
    .content-right-text-order1 p{
        position: relative;
        z-index: 3;
    }
    .get-back{
        width: 383px;
        height: 141px;
        background: #8fcdff;
    }
    .content-right-text-order1-p{
        line-height: 13px;
        margin-top: 4px;
    }

    td{
        width: 164px;
        height: 45px;
        line-height: 45px;
        background: pink;
    }
    td,tr{
        border: 0;
    }
    p a{
        font-size: 18px;
        font-family: '微软雅黑',sans-serif;
        margin-top: 8px;
        position: relative;
        top:6px
    }

    .gif-box{
        width: 386px;
        height: 244px;
    }
    .get-back1{
        background: #8fcdff;
    }
    .get-back2{
        background: #f7b136;
    }
    .get-back3{
        background: #f39a77;
    }
    .get-back4{
        background: #47f484;
    }
    .get-back5{
        background: #fa5b5b;
    }
    .get-back6{
        background: #76f3dd;
    }
    .get-back6{
        background: #a68af8;
    }
    .get-back7{
        background: #2f3e53;
    }

    .get-back8{
        background: #778ff2;
    }
    .get-back9{
        background: #fa5b5b;
    }
    .get-back10{
        background: #a68af8;
    }
    .get-back11{
        background: #2f3e53;
    }
    .get-back12{
        background: #778ff2;
    }
    .gif-boximg{
        margin:5px 0 0 124px;
    }
    .get-back11>img{
        width: 130px;
    }
    .img-top{
        clear: both;
        opacity: 0;
    }
    .gif-box{
        cursor: pointer;
    }

    @keyframes myfirst
    {
        from {
            opacity: 0;
            margin-top: 0;
        }
        to {
            opacity: 1;
            margin-top: -69px;
        }
    }
    @keyframes myfirst1
    {
        from {opacity: 1;
            position: relative;
            top: 0;
        }
        to { position: relative;
            top:5px;
        }
    }
    .gif-box-2{
        width:0;
        height: 0;
        clear: both;
    }.content-jpg-dw-box{
        height: 210px;
         }
    .sili a img{
        width: 60px;
    }
    .get-back>img{
        margin: 5px 0 0 124px;
        width: 130px;
    }
    .get-back .gif-boximg {
        margin: 5px 0 0 124px;
    }
</style>

<body>

<div style="width: 40px;height: 3px;position: absolute;right: 1196px;top: 137px;background: #52c7f5"></div>

<div>
    <jsp:include page="/static/front/comm/top.jsp"/></div>
    <!--中间内容-->
        <div id="content" style="height: 3210px">
            <%--面包屑--%>
                <div style="width: 1200px;margin: 66px auto 0 auto;position: relative;top: -68px;color:#666;">
                    <span ><a href="http://www.fengcheng7080.com/" target="_Blank" style="font-size: 12px;color: #666;">首页</a></span>
                    <span style="color: #666">></span>
                    <span style="font-size: 12px;color: #666;"><a href="#">您从我们这得到什么</a></span>

                </div>
            <div class="content-top" id="nava">
                <div class="flexslider">
                        <ul class="slides">
                            <li style="background:url(${ctx}/static/front/images/1.jpg) 50% 0 no-repeat;" id="section0">
                                <a href="${ctx}/free" target="_blank" style="display: block;width: 100%;height: 500px"></a>
                            </li>
                            <li style="background:url(${ctx}/static/front/images/2.jpg) 50% 0 no-repeat;"><a href="#" style="display: block;width: 100%;height: 500px"></a></li>
                            <li style="background:url(${ctx}/static/front/images/3.jpg) 50% 0 no-repeat;" id="section2">
                                <a href="${ctx}/whoweare" target="_blank" style="display: block;width: 100%;height: 500px"></a>
                            </li>
                            <li style="background:url(${ctx}/static/front/images/4.jpg) 50% 0 no-repeat;" id="section3">
                                <a href="${ctx}/whatwedo" target="_blank" style="display: block;width: 100%;height: 500px"></a>
                            </li>
                        </ul>
                </div>

            </div>

            <!--内部内容-->
            <div class="content-jpg">

                <div style="position: relative;top: -40px;margin-top: 30px;height: 300px" class="content-jpg-dw-p1">
                    <p class="content-jpg-dw-p1-p1" style="line-height: 50px">我们敢承诺白纸黑字、立据为证，<span  class="content-jpg-dw-p1-p1-lan">它就是四书</span></p>
                    <div class="content-jpg-dw-box content-jpg-dw-box1">
                        <div class="content-jpg-dw-box-img">
                            <img src="${ctx}/static/front/images/dw-1.png" alt="">
                        </div>
                        <h4 style="position: relative;top: -5px">四书</h4>
                        <p class="content-jpg-dw-box-qp content-jpg-dw-box-qp1"><span style="letter-spacing: 6px">产品体验协议书</span> <span style="margin-left: 15px"> 网站建设规划确认书</span></p>
                        <p>开放500名免费体验协<span style="margin-left: 16px"> 免费开放500名中小企</span></p>
                        <p>议书/项目合作协议书<span style="margin-left: 20px"> 业型免费体验协议书</span></p>
                        <%--<p style="line-height: 50px;text-align: center;font-size: 12px;color: red;">甲乙双方签字画谁都不能懒</p>--%>
                        <%--<div>--%>
                            <%--<img src="${ctx}/static/front/images/W.png">--%>
                            <%--<img src="${ctx}/static/front/images/button.png" alt="" style="margin-left: 20px;cursor: pointer">--%>
                        <%--</div>--%>
                    </div>
                    <div class="content-jpg-dw-box content-jpg-dw-box2">
                        <div class="content-jpg-dw-box-img">
                            <img src="${ctx}/static/front/images/dw-2.jpg" alt="">
                        </div>
                        <h4 style="position: relative;top: 10px;">八建</h4>
                        <p class="content-jpg-dw-box-qp"><span style="letter-spacing: 6px">建网站</span> <span>建手机官网</span></p>
                        <p><span style="letter-spacing: 6px">建微博</span> <span>建微信公众号</span></p>
                        <p><span style="letter-spacing: 6px">建视频</span> <span>营销及文案</span></p>
                        <p><span style="letter-spacing: 6px">建推广</span> <span>建网格化运营战略</span></p>
                        <%--<p style="line-height: 50px;text-align: center;font-size: 12px;color: red;">您不会没关系，我们会就行，您看结果</p>--%>
                    </div>
                    <div class="content-jpg-dw-box content-jpg-dw-box3">
                        <div class="content-jpg-dw-box-img">
                            <img src="${ctx}/static/front/images/dw-3.png" alt="">
                        </div>
                        <h4 style="position: relative;top: 7px">六做</h4>
                        <p class="content-jpg-dw-box-qp">网站运营与维护 <span>产品信息建设</span></p>
                        <p>品牌 信 息 建 设 <span>关键 词 优 化</span></p>
                        <p style="letter-spacing: 2px">微 博 / 微 信 公 众 号 运 营 </p>
                        <p> 视 频 及 媒 体 策 划 及 宣 传 推广</p>
                        <%--<p style="text-align: center;font-size: 12px;color: red;width:210px;line-height: 20px;margin-top: 10px">您不需要培养或组建专业团队，我们六做帮您实现所期望</p>--%>
                    </div>
                    <div class="content-jpg-dw-box content-jpg-dw-box4">
                        <div class="content-jpg-dw-box-img">
                            <img src="${ctx}/static/front/images/dw-4.jpg" alt="">
                        </div>
                        <h4 style="position: relative;top: 4px;">两定</h4>
                        <p class="content-jpg-dw-box-qp">定月维护 <span>定月工作报告</span></p>
                        <%--<p style="text-align: center;font-size: 12px;color: red;width:240px;line-height: 20px;margin-top: 90px;margin-left: 14px">我们到底有没有在做事情，报告能说明一切</p>--%>

                    </div>
                </div>

                <div id="Dowhat-content">
                    <img src="${ctx}/static/front/images/people5.png" alt="" style="position: relative;
    left: 10px;
    top: -76px;z-index: 99;">
                    <span class="content-right-text tit" style="height: 53px;margin-top: -112px">
                <span
                        <%--style="position:relative;top: -42px"--%>
                        > 数据-告诉-你-结果=我们付出/换来您的认可</span>
                </span>
                    <div style="padding: 10px 0;height: 580px;position: relative;top: -10px;background:url(${ctx}/static/front/images/dow-bg111.png) no-repeat">

                        <table style="color:#fff;position: relative;top: 45px;left:502px;border: 0;width: 504px" class="table-bgcolor Dowhat-table">
                            <%--<tr style='height: 58px;border: none;'>--%>
                            <%--<th style='width: 100px;'>统计名称</th>--%>
                            <%--<th style='width: 105px'>原始数据</th>--%>
                            <%--<th style='width: 132px'>峰程7080接活</th>--%>
                            <%--<th style='width: 117px'>3个月后数据</th>--%>
                            <%--<th style='width: 115px'>6个月后数据</th>--%>
                            <%--<th style='width: 118px;'>12个月后数据</th>--%>
                            <%--<th style="width: 108px">您感觉如何？</th>--%>
                            <%--</tr>--%>
                            <tr class="margin-top0" style="background: transparent;border: 0">
                                <%--<td>网站数据</td>--%>
                                <%--<td>0</td>--%>
                                <%--<td>1</td>--%>
                                <td style="width:164px;color: #F89D0A;font-size: 20px" id="numDiv">688</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv1">1688</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv2">16888</td>
                                <%--<td style="color: #28ae1d;">very good</td>--%>
                            </tr>
                            <tr style="background: transparent;border: 0">
                                <%--<td>SEO数据</td>--%>
                                <%--<td>0</td>--%>
                                <%--<td>1</td>--%>
                                <td style="width:164px;color: #F89D0A;font-size: 20px"  id="numDiv3">5</td>
                                <td style="color: #F89D0A;font-size: 20px"  id="numDiv4">60</td>
                                <td style="color: #F89D0A;font-size: 20px"  id="numDiv5">12450</td>
                                <%--<td style="color: #28ae1d;">very good</td>--%>
                            </tr>
                            <tr style="background: transparent;border: 0">
                                <%--<td>新闻数据</td>--%>
                                <%--<td>0</td>--%>
                                <%--<td>1</td>--%>
                                <td style="width:164px;color: #F89D0A;font-size: 20px" id="numDiv6">5</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv7">55</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv8">900</td>
                                <%--<td style="color: #28ae1d;">very good</td>--%>
                            </tr>
                            <tr style="background: transparent;border: 0">
                                <%--<td>视频数据</td>--%>
                                <%--<td>0</td>--%>
                                <%--<td>1</td>--%>
                                <td style="width:164px;color: #F89D0A;font-size: 20px" id="numDiv9">25</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv10">80</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv11">452</td>
                                <%--<td style="color: #28ae1d;">very good</td>--%>
                            </tr>
                            <tr style="background: transparent;border: 0">
                                <%--<td>图片数据</td>--%>
                                <%--<td>0</td>--%>
                                <%--<td>1</td>--%>
                                <td style="width:164px;color: #F89D0A;font-size: 20px" id="numDiv12">35</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv13">90</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv14">680</td>
                                <%--<td style="color: #28ae1d;">very good</td>--%>
                            </tr>
                            <tr style="background: transparent;border: 0">
                                <%--<td>社交数据</td>--%>
                                <%--<td>0</td>--%>
                                <%--<td>1</td>--%>
                                <td style="width:164px;color: #F89D0A;font-size: 20px" id="numDiv15">45</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv16">100</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv17">17890</td>
                                <%--<td style="color: #28ae1d;">very good</td>--%>
                            </tr>
                            <tr style="background: transparent;border: 0">
                                <%--<td>问答数据</td>--%>
                                <%--<td>0</td>--%>
                                <%--<td>1</td>--%>
                                <td style="width:164px;color: #F89D0A;font-size: 20px" id="numDiv18">80</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv19">240</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv20">9820</td>
                                <%--<td style="color: #28ae1d;">very good</td>--%>
                            </tr>
                            <tr style="background: transparent;border: 0">
                                <%--<td>文库数据</td>--%>
                                <%--<td>0</td>--%>
                                <%--<td>1</td>--%>
                                <td style="width:164px;color: #F89D0A;font-size: 20px" id="numDiv21">50</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv22">300</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv23">9570</td>
                                <%--<td style="color: #28ae1d;">very good</td>--%>
                            </tr>
                            <tr style="background: transparent;border: 0">
                                <%--<td>百科数据</td>--%>
                                <%--<td>0</td>--%>
                                <%--<td>1</td>--%>
                                <td style="width:164px;color: #F89D0A;font-size: 20px" id="numDiv24">3</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv25">3</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv26">15</td>
                                <%--<td style="color: #28ae1d;">very good</td>--%>
                            </tr>
                            <tr style="background: transparent;border: 0">
                                <%--<td>微信数据</td>--%>
                                <%--<td>0</td>--%>
                                <%--<td>1</td>--%>
                                <td style="width:164px;color: #F89D0A;font-size: 20px" id="numDiv27">145</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv28">280</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv29">7892</td>
                                <%--<td style="color: #28ae1d;">very good</td>--%>
                            </tr>
                            <tr style="background: transparent;border: 0">
                                <%--<td>通讯数据</td>--%>
                                <%--<td>0</td>--%>
                                <%--<td>1</td>--%>
                                <td style="width:164px;height: 45px;line-height: 45px;color: #F89D0A;font-size: 20px" id="numDiv30">50</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv31">668</td>
                                <td style="color: #F89D0A;font-size: 20px" id="numDiv32">2890</td>
                                <%--<td style="color: #28ae1d;">very good</td>--%>
                            </tr>
                                <tr style="background: transparent;border: 0">
                                    <%--<td>通讯数据</td>--%>
                                    <%--<td>0</td>--%>
                                    <%--<td>1</td>--%>
                                    <td style="width:164px;color: #F89D0A;font-size: 20px" id="numDiv33">50</td>
                                    <td style="color: #F89D0A;font-size: 20px" id="numDiv34">668</td>
                                    <td style="color: #F89D0A;font-size: 20px" id="numDiv35">2890</td>
                                    <%--<td style="color: #28ae1d;">very good</td>--%>
                                </tr>



                        </table>
                    </div>
<!--产品 立即购买-->
                <p class="content-jpg-dw-p1-p1" style="letter-spacing: 0;line-height: 30px">
                    您提要求，我们帮您实现企业及品牌（产品）的互联网+，中国制造+联盟=<span class="content-jpg-dw-p1-p1-lan">您说了算</span>
                </p>
                <div style="width: 100%;height: 100%;">
             <div id="type1" class="content-right-text-order1" style="background: #fff;">
                 <p style="font-size: 45px;font-family: '微软雅黑',sans-serif;">敬请期待..</p>
                    </div>

             <div id="type2"  class="content-right-text-order1" style="background: #fff;">
                 <p style="font-size: 45px;font-family: '微软雅黑',sans-serif;">敬请期待..</p>
                    </div>

             <div id="type3" class="content-right-text-order1" style="background: #fff;">
                 <p style="font-size: 45px;font-family: '微软雅黑',sans-serif;">敬请期待...</p>
                    </div>

             <div id="type4" class="content-right-text-order1" style="background: #fff;">
                 <p style="font-size: 45px;font-family: '微软雅黑',sans-serif;">敬请期待..</p>
                    </div>

             <div id="type5" class="content-right-text-order1" style="background: #fff;">
                 <p style="font-size: 45px;font-family: '微软雅黑',sans-serif;">敬请期待..</p>
                    </div>

             <div id="type6" class="content-right-text-order1" style="background: #fff;">
                 <p style="font-size: 45px;font-family: '微软雅黑',sans-serif;">敬请期待..</p>
                    </div>

             <div id="type7" class="content-right-text-order1" style="background: #fff;">
                 <p style="font-size: 45px;font-family: '微软雅黑',sans-serif;">敬请期待..</p>
                    </div>

             <div id="type8" class="content-right-text-order1" style="background: #fff;">
                 <p style="font-size: 45px;font-family: '微软雅黑',sans-serif;">敬请期待..</p>

                    </div>

             <div id="type9" class="content-right-text-order1" style="background: #fff;">
                 <p style="font-size: 45px;font-family: '微软雅黑',sans-serif;">敬请期待..</p>
                    </div>

             <div id="type10" class="content-right-text-order1" style="background: #fff;">
                 <p style="font-size: 45px;font-family: '微软雅黑',sans-serif;">敬请期待..</p>
                    </div>

             <div id="type11" class="content-right-text-order1" style="background: #fff;">
                 <p style="font-size: 45px;font-family: '微软雅黑',sans-serif;">敬请期待..</p>
                    </div>

             <div id="type12" class="content-right-text-order1" style="background: #fff;">
                 <p style="font-size: 45px;font-family: '微软雅黑',sans-serif;">敬请期待..</p>
                    </div>
                </div>
                <p class="content-jpg-dw-p1-p1">
                    我们不光只会建，我们管<span class="content-jpg-dw-p1-p1-lan">运营</span>还管<span class="content-jpg-dw-p1-p1-lan">平台资源融入</span>
                </p>

<!--八桂之家-->
                <div style="width: 1200px;height: 109px;margin: 5px auto" class="sili">
                    <a href="">
                        <img src="${ctx}/static/front/images/bg-logo_03.png" alt="">
                    </a>
                    <a href="">
                        <img src="${ctx}/static/front/images/dj-logo.png" alt="" style="margin-left: 35px">
                    </a>

                    <a href="">
                        <img src="${ctx}/static/front/images/bg-logo_03.png" alt="">
                    </a>
                    <a href="">
                        <img src="${ctx}/static/front/images/dj-logo.png" alt="" style="margin-left: 35px">
                    </a>

                    <a href="">
                        <img src="${ctx}/static/front/images/bg-logo_03.png" alt="">
                    </a>
                    <a href="">
                        <img src="${ctx}/static/front/images/dj-logo.png" alt="" style="margin-left: 35px">
                    </a>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="/static/front/comm/footer.jsp"/>


<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/index.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/table.js" type="text/javascript"></script>
<!--执行轮播-->
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
<script type="text/javascript">
    var map1 ="${ctx}/static/front/images/order.png";
    var map2 ="${ctx}/static/front/images/a2.png";
    var map3 ="${ctx}/static/front/images/a3.png";
    var map4 ="${ctx}/static/front/images/a4.png";
    var map5 ="${ctx}/static/front/images/a5.png";
    var map6 ="${ctx}/static/front/images/a6.png";
    var map7 ="${ctx}/static/front/images/a7.png";
    var map8 ="${ctx}/static/front/images/a8.png";
    var map9 ="${ctx}/static/front/images/a9.png";
    var map10 ="${ctx}/static/front/images/a10.png";
    var map11 ="${ctx}/static/front/images/a11.png";
    var map12 ="${ctx}/static/front/images/a12.png";
    var proList;
    //页面加载激活  查询所有产品
    $(document).ready(function () {
        $.ajax({
            url : '${ctx}/Product/proShow',
            type : 'POST',
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null &&data !=""){
                    proList=data;
                    showProData(data);
                }
            }
        })
    });
    //产品显示
    function showProData(data) {
        //产品1
        for(var i=0;i<data.length;i++){
            if(data[i].proType=="develop") {
                var type="develop";
                var proInfo=data[i].proInfoList;
                var demand;             //需求定位
                var proSerice;         //需求方案
                var price;             //服务金额
                var time;              //时长
                if(proInfo.length<1){
                    return;
                }
                if(proInfo.length==1){
                    demand =proInfo[0].demand;
                    proSerice  =proInfo[0].service;
                    price=proInfo[0].servicePrice;
                    time=proInfo[0].timeValue;
                }else{
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取第一个不是体验版的价格
                            demand =proInfo[j].demand;
                            proSerice =proInfo[j].service;
                            price=proInfo[j].servicePrice;
                            time=proInfo[j].timeValue;
                            break;

                        }
                    }
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取最小的价格
                            if(price*1>proInfo[j].servicePrice*1){
                                price=proInfo[j].servicePrice;
                                demand =proInfo[j].demand;
                                proSerice  =proInfo[j].service;
                                time=proInfo[j].timeValue;
                            }
                        }
                    }
                    if(price==null || price==""){  //如果需求都是体验版
                        for(var a=0;a<proInfo.length;a++){
                            demand =proInfo[a].demand;
                            proSerice  =proInfo[a].service;
                            price=proInfo[a].servicePrice;
                            time=proInfo[a].timeValue;
                            break;
                        }
                    }
                }
                $("#type1").empty();
                //图片
                var mapData="<div class=\"get-back get-back1\"><img src=\""+map1+"\" onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\"></div>";
                //标题 关键词
                var titleData="<p style=\"font-size: 16px;font-family: '微软雅黑';\"><a href='javascript:void(null)' onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\" >"+data[i].proTitle+"</a></p>"+
                    "<p style=\"font-size: 15px;font-family: '微软雅黑';text-align: center;margin: 0 auto;margin-top: 8px;color: #ED0F0F;line-height: 22px;\">虚拟的internet其实是传统广告宣传新产物，两者结合更能广而告之</p>";
                //付款
                var pay= " <p style=\"font-size: 45px;font-family: '微软雅黑';color: #ED0F0F;\">"+price+"<span style=\"font-size: 18px\">元起</span></p>"+
                    "<div style=\"margin-left: 105px;background: transparent\"> <button onclick=\"proOrder('"+demand+"-"+proSerice+"','"+time+"','"+1+"','"+data[i].id+"')\" class=\"ljgmbutton\">"+
                    " </button>";

                var content="<p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">三了解</span>"+
                    "<span style=\"margin-left: 10px\"><span style=\"color: #656565\">了解品牌、了解产品、了解市场、了解消<br>"+
                    "费者、了解竞争对手......</span><span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','prounderstand')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></p>"+
                    " <p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">五了解</span> " +
                    "<span style=\"position: relative;left: 10px\"> <span style=\"color: #656565;\">开免费放500名中小型企业体验名额（免费<br>"+
                    "<span style=\"margin-left: 50px\">体验）只想展示或者在网络上能够找到我们</span><br><span style=\"margin-left: -107px\">品牌......</span>"+
                    "<span span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','proscheme')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></span> </p>";
                $("#type1").append(mapData);
                $("#type1").append(titleData);
                $("#type1").append(pay);
                $("#type1").append(content);
                break;
            }
        }
        //产品2
        for(var i=0;i<data.length;i++){
            if(data[i].proType=="plan") {
                var type="plan";
                var proInfo=data[i].proInfoList;
                var demand;             //需求定位
                var proSerice;         //需求方案
                var price;             //服务金额
                var time;              //时长
                if(proInfo.length<1){
                    return;
                }
                if(proInfo.length==1){
                    demand =proInfo[0].demand;
                    proSerice  =proInfo[0].service;
                    price=proInfo[0].servicePrice;
                    time=proInfo[0].timeValue;
                }else{
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取第一个不是体验版的价格
                            demand =proInfo[j].demand;
                            proSerice =proInfo[j].service;
                            price=proInfo[j].servicePrice;
                            time=proInfo[j].timeValue;
                            break;
                        }
                    }
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取最小的价格
                            if(price*1>proInfo[j].servicePrice*1){
                                price=proInfo[j].servicePrice;
                                demand =proInfo[j].demand;
                                proSerice  =proInfo[j].service;
                                time=proInfo[j].timeValue;
                            }
                        }
                    }
                    if(price==null || price==""){  //如果需求都是体验版
                        for(var a=0;a<proInfo.length;a++){
                            demand =proInfo[a].demand;
                            proSerice  =proInfo[a].service;
                            price=proInfo[a].servicePrice;
                            time=proInfo[a].timeValue;
                            break;
                        }
                    }
                }
                $("#type2").empty();
                //图片
                var mapData="<div class=\"get-back get-back2\"><img src=\""+map2+"\" onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\"></div>";
                //标题 关键词
                var titleData="<p style=\"font-size: 14px;font-family: '微软雅黑';\"><a href='javascript:void(null)' onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\" >"+data[i].proTitle+"</a></p>"+
                    "<p style=\"font-size: 15px;font-family: '微软雅黑';text-align: center;margin: 0 auto;margin-top: 8px;color: #ED0F0F;line-height: 22px;\">虚拟的internet其实是传统广告宣传新产物，两者结合更能广而告之</p>";
                //付款
                var pay= " <p style=\"font-size: 45px;font-family: '微软雅黑';color: #ED0F0F;\">"+price+"<span style=\"font-size: 18px\">元起</span></p>"+
                    "<div style=\"margin-left: 105px;background: transparent\"> <button onclick=\"proOrder('"+demand+"-"+proSerice+"','"+time+"','"+1+"','"+data[i].id+"')\" class=\"ljgmbutton\">"+
                    " </button>";

                var content="<p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">三了解</span>"+
                    "<span style=\"margin-left: 10px\"><span style=\"color: #656565\">了解品牌、了解产品、了解市场、了解消<br>"+
                    "费者、了解竞争对手......</span><span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','prounderstand')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></p>"+
                    " <p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">五了解</span> " +
                    "<span style=\"position: relative;left: 10px\"> <span style=\"color: #656565;\">开免费放500名中小型企业体验名额（免费<br>"+
                    "<span style=\"margin-left: 50px\">体验）只想展示或者在网络上能够找到我们</span><br><span style=\"margin-left: -107px\">品牌......</span>"+
                    "<span span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','proscheme')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></span> </p>";
                $("#type2").append(mapData);
                $("#type2").append(titleData);
                $("#type2").append(pay);
                $("#type2").append(content);
                break;
            }
        }
        //产品3
        for(var i=0;i<data.length;i++){
            if(data[i].proType=="marketing") {
                var type="marketing";
                var proInfo=data[i].proInfoList;
                var demand;             //需求定位
                var proSerice;         //需求方案
                var price;             //服务金额
                var time;              //时长
                if(proInfo.length<1){
                    return;
                }

                if(proInfo.length==1){
                    demand =proInfo[0].demand;
                    proSerice  =proInfo[0].service;
                    price=proInfo[0].servicePrice;
                    time=proInfo[0].timeValue;
                }else{
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取第一个不是体验版的价格
                            demand =proInfo[j].demand;
                            proSerice =proInfo[j].service;
                            price=proInfo[j].servicePrice;
                            time=proInfo[j].timeValue;

                            break;
                        }
                    }

                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取最小的价格
                            if(price*1>proInfo[j].servicePrice*1){
                                price=proInfo[j].servicePrice;
                                demand =proInfo[j].demand;
                                proSerice  =proInfo[j].service;
                                time=proInfo[j].timeValue;
                            }
                        }
                    }

                    if(price==null || price==""){  //如果需求都是体验版  体验版0钱
                        for(var a=0;a<proInfo.length;a++){
                            demand =proInfo[a].demand;
                            proSerice  =proInfo[a].service;
                            price=proInfo[a].servicePrice;
                            time=proInfo[a].timeValue;
                            break;
                        }
                    }
                }
                $("#type3").empty();
                //图片
                var mapData="<div class=\"get-back get-back3\"><img src=\""+map3+"\" onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\"></div>";
                //标题 关键词
                var titleData="<p style=\"font-size: 14px;font-family: '微软雅黑';\"><a href='javascript:void(null)' onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\" >"+data[i].proTitle+"</a></p>"+
                    "<p style=\"font-size: 15px;font-family: '微软雅黑';text-align: center;margin: 0 auto;margin-top: 8px;color: #ED0F0F;line-height: 22px;\">虚拟的internet其实是传统广告宣传新产物，两者结合更能广而告之</p>";
                //付款
                var pay= " <p style=\"font-size: 45px;font-family: '微软雅黑';color: #ED0F0F;\">"+price+"<span style=\"font-size: 18px\">元起</span></p>"+
                    "<div style=\"margin-left: 105px;background: transparent\"> <button onclick=\"proOrder('"+demand+"-"+proSerice+"','"+time+"','"+1+"','"+data[i].id+"')\" class=\"ljgmbutton\">"+
                    " </button>";

                var content="<p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">三了解</span>"+
                    "<span style=\"margin-left: 10px\"><span style=\"color: #656565\">了解品牌、了解产品、了解市场、了解消<br>"+
                    "费者、了解竞争对手......</span><span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','prounderstand')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></p>"+
                    " <p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">五了解</span> " +
                    "<span style=\"position: relative;left: 10px\"> <span style=\"color: #656565;\">开免费放500名中小型企业体验名额（免费<br>"+
                    "<span style=\"margin-left: 50px\">体验）只想展示或者在网络上能够找到我们</span><br><span style=\"margin-left: -107px\">品牌......</span>"+
                    "<span span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','proscheme')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></span> </p>";
                $("#type3").append(mapData);
                $("#type3").append(titleData);
                $("#type3").append(pay);
                $("#type3").append(content);
                break;
            }
        }
        //产品4
        for(var i=0;i<data.length;i++){
            if(data[i].proType=="popularize") {
                var type="popularize";
                var proInfo=data[i].proInfoList;
                var demand;             //需求定位
                var proSerice;         //需求方案
                var price;             //服务金额
                var time;              //时长
                if(proInfo.length<1){
                    return;
                }
                if(proInfo.length==1){
                    demand =proInfo[0].demand;
                    proSerice  =proInfo[0].service;
                    price=proInfo[0].servicePrice;
                    time=proInfo[0].timeValue;
                }else{
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取第一个不是体验版的价格
                            demand =proInfo[j].demand;
                            proSerice =proInfo[j].service;
                            price=proInfo[j].servicePrice;
                            time=proInfo[j].timeValue;
                            break;
                        }
                    }
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取最小的价格
                            if(price*1>proInfo[j].servicePrice*1){
                                price=proInfo[j].servicePrice;
                                demand =proInfo[j].demand;
                                proSerice  =proInfo[j].service;
                                time=proInfo[j].timeValue;
                            }
                        }
                    }
                    if(price==null || price==""){  //如果需求都是体验版
                        for(var a=0;a<proInfo.length;a++){
                            demand =proInfo[a].demand;
                            proSerice  =proInfo[a].service;
                            price=proInfo[a].servicePrice;
                            time=proInfo[a].timeValue;
                            break;
                        }
                    }
                }
                $("#type4").empty();
                //图片
                var mapData="<div class=\"get-back get-back4\"><img src=\""+map4+"\" onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\"></div>";
                //标题 关键词
                var titleData="<p style=\"font-size: 14px;font-family: '微软雅黑';\"><a href='javascript:void(null)' onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\" >"+data[i].proTitle+"</a></p>"+
                    "<p style=\"font-size: 15px;font-family: '微软雅黑';text-align: center;margin: 0 auto;margin-top: 8px;color: #ED0F0F;line-height: 22px;\">虚拟的internet其实是传统广告宣传新产物，两者结合更能广而告之</p>";
                //付款
                var pay= " <p style=\"font-size: 45px;font-family: '微软雅黑';color: #ED0F0F;\">"+price+"<span style=\"font-size: 18px\">元起</span></p>"+
                    "<div style=\"margin-left: 105px;background: transparent\"> <button onclick=\"proOrder('"+demand+"-"+proSerice+"','"+time+"','"+1+"','"+data[i].id+"')\" class=\"ljgmbutton\">"+
                    " </button>";

                var content="<p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">三了解</span>"+
                    "<span style=\"margin-left: 10px\"><span style=\"color: #656565\">了解品牌、了解产品、了解市场、了解消<br>"+
                    "费者、了解竞争对手......</span><span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','prounderstand')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></p>"+
                    " <p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">五了解</span> " +
                    "<span style=\"position: relative;left: 10px\"> <span style=\"color: #656565;\">开免费放500名中小型企业体验名额（免费<br>"+
                    "<span style=\"margin-left: 50px\">体验）只想展示或者在网络上能够找到我们</span><br><span style=\"margin-left: -107px\">品牌......</span>"+
                    "<span span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','proscheme')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></span> </p>";
                $("#type4").append(mapData);
                $("#type4").append(titleData);
                $("#type4").append(pay);
                $("#type4").append(content);
                break;
            }
        }
        //产品5
        for(var i=0;i<data.length;i++){
            if(data[i].proType=="document") {
                var type="document";
                var proInfo=data[i].proInfoList;
                var demand;             //需求定位
                var proSerice;         //需求方案
                var price;             //服务金额
                var time;              //时长
                if(proInfo.length<1){
                    return;
                }
                if(proInfo.length==1){
                    demand =proInfo[0].demand;
                    proSerice  =proInfo[0].service;
                    price=proInfo[0].servicePrice;
                    time=proInfo[0].timeValue;
                }else{
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取第一个不是体验版的价格
                            demand =proInfo[j].demand;
                            proSerice =proInfo[j].service;
                            price=proInfo[j].servicePrice;
                            time=proInfo[j].timeValue;
                            break;
                        }
                    }
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取最小的价格
                            if(price*1>proInfo[j].servicePrice*1){
                                price=proInfo[j].servicePrice;
                                demand =proInfo[j].demand;
                                proSerice  =proInfo[j].service;
                                time=proInfo[j].timeValue;
                            }
                        }
                    }
                    if(price==null || price==""){  //如果需求都是体验版
                        for(var a=0;a<proInfo.length;a++){
                            demand =proInfo[a].demand;
                            proSerice  =proInfo[a].service;
                            price=proInfo[a].servicePrice;
                            time=proInfo[a].timeValue;
                            break;
                        }
                    }
                }
                $("#type5").empty();
                //图片
                var mapData="<div class=\"get-back get-back5\"><img src=\""+map5+"\" onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\"></div>";
                //标题 关键词
                var titleData="<p style=\"font-size: 14px;font-family: '微软雅黑';\"><a href='javascript:void(null)' onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\" >"+data[i].proTitle+"</a></p>"+
                    "<p style=\"font-size: 15px;font-family: '微软雅黑';text-align: center;margin: 0 auto;margin-top: 8px;color: #ED0F0F;line-height: 22px;\">虚拟的internet其实是传统广告宣传新产物，两者结合更能广而告之</p>";
                //付款
                var pay= " <p style=\"font-size: 45px;font-family: '微软雅黑';color: #ED0F0F;\">"+price+"<span style=\"font-size: 18px\">元起</span></p>"+
                    "<div style=\"margin-left: 105px;background: transparent\"> <button onclick=\"proOrder('"+demand+"-"+proSerice+"','"+time+"','"+1+"','"+data[i].id+"')\" class=\"ljgmbutton\">"+
                    " </button>";

                var content="<p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">三了解</span>"+
                    "<span style=\"margin-left: 10px\"><span style=\"color: #656565\">了解品牌、了解产品、了解市场、了解消<br>"+
                    "费者、了解竞争对手......</span><span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','prounderstand')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></p>"+
                    " <p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">五了解</span> " +
                    "<span style=\"position: relative;left: 10px\"> <span style=\"color: #656565;\">开免费放500名中小型企业体验名额（免费<br>"+
                    "<span style=\"margin-left: 50px\">体验）只想展示或者在网络上能够找到我们</span><br><span style=\"margin-left: -107px\">品牌......</span>"+
                    "<span span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','proscheme')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></span> </p>";
                $("#type5").append(mapData);
                $("#type5").append(titleData);
                $("#type5").append(pay);
                $("#type5").append(content);
                break;
            }
        }
        //产品6
        for(var i=0;i<data.length;i++){
            if(data[i].proType=="video") {
                var type="video";
                var proInfo=data[i].proInfoList;
                var demand;             //需求定位
                var proSerice;         //需求方案
                var price;             //服务金额
                var time;              //时长
                if(proInfo.length<1){
                    return;
                }
                if(proInfo.length==1){
                    demand =proInfo[0].demand;
                    proSerice  =proInfo[0].service;
                    price=proInfo[0].servicePrice;
                    time=proInfo[0].timeValue;
                }else{
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取第一个不是体验版的价格
                            demand =proInfo[j].demand;
                            proSerice =proInfo[j].service;
                            price=proInfo[j].servicePrice;
                            time=proInfo[j].timeValue;
                            break;
                        }
                    }
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取最小的价格
                            if(price*1>proInfo[j].servicePrice*1){
                                price=proInfo[j].servicePrice;
                                demand =proInfo[j].demand;
                                proSerice  =proInfo[j].service;
                                time=proInfo[j].timeValue;
                            }
                        }
                    }
                    if(price==null || price==""){  //如果需求都是体验版
                        for(var a=0;a<proInfo.length;a++){
                            demand =proInfo[a].demand;
                            proSerice  =proInfo[a].service;
                            price=proInfo[a].servicePrice;
                            time=proInfo[a].timeValue;
                            break;
                        }
                    }
                }
                $("#type6").empty();
                //图片
                var mapData="<div class=\"get-back get-back6\"><img src=\""+map6+"\" onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\"></div>";
                //标题 关键词
                var titleData="<p style=\"font-size: 14px;font-family: '微软雅黑';\"><a href='javascript:void(null)' onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\" >"+data[i].proTitle+"</a></p>"+
                    "<p style=\"font-size: 15px;font-family: '微软雅黑';text-align: center;margin: 0 auto;margin-top: 8px;color: #ED0F0F;line-height: 22px;\">虚拟的internet其实是传统广告宣传新产物，两者结合更能广而告之</p>";
                //付款
                var pay= " <p style=\"font-size: 45px;font-family: '微软雅黑';color: #ED0F0F;\">"+price+"<span style=\"font-size: 18px\">元起</span></p>"+
                    "<div style=\"margin-left: 105px;background: transparent\"> <button onclick=\"proOrder('"+demand+"-"+proSerice+"','"+time+"','"+1+"','"+data[i].id+"')\" class=\"ljgmbutton\">"+
                    " </button>";

                var content="<p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">三了解</span>"+
                    "<span style=\"margin-left: 10px\"><span style=\"color: #656565\">了解品牌、了解产品、了解市场、了解消<br>"+
                    "费者、了解竞争对手......</span><span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','prounderstand')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></p>"+
                    " <p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">五了解</span> " +
                    "<span style=\"position: relative;left: 10px\"> <span style=\"color: #656565;\">开免费放500名中小型企业体验名额（免费<br>"+
                    "<span style=\"margin-left: 50px\">体验）只想展示或者在网络上能够找到我们</span><br><span style=\"margin-left: -107px\">品牌......</span>"+
                    "<span span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','proscheme')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></span> </p>";
                $("#type6").append(mapData);
                $("#type6").append(titleData);
                $("#type6").append(pay);
                $("#type6").append(content);
                break;
            }
        }
        //产品7
        for(var i=0;i<data.length;i++){
            if(data[i].proType=="seo") {
                var type="seo";
                var proInfo=data[i].proInfoList;
                var demand;             //需求定位
                var proSerice;         //需求方案
                var price;             //服务金额
                var time;              //时长
                if(proInfo.length<1){

                    return;
                }
                if(proInfo.length==1){
                    demand =proInfo[0].demand;
                    proSerice  =proInfo[0].service;
                    price=proInfo[0].servicePrice;
                    time=proInfo[0].timeValue;
                }else{
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取第一个不是体验版的价格
                            demand =proInfo[j].demand;
                            proSerice =proInfo[j].service;
                            price=proInfo[j].servicePrice;
                            time=proInfo[j].timeValue;
                            break;
                        }
                    }
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取最小的价格
                            if(price*1>proInfo[j].servicePrice*1){
                                price=proInfo[j].servicePrice;
                                demand =proInfo[j].demand;
                                proSerice  =proInfo[j].service;
                                time=proInfo[j].timeValue;
                            }
                        }
                    }
                    if(price==null || price==""){  //如果需求都是体验版
                        for(var a=0;a<proInfo.length;a++){
                            demand =proInfo[a].demand;
                            proSerice  =proInfo[a].service;
                            price=proInfo[a].servicePrice;
                            time=proInfo[a].timeValue;
                            break;
                        }
                    }
                }
                $("#type7").empty();
                //图片
                var mapData="<div class=\"get-back get-back7\"><img src=\""+map7+"\" onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\"></div>";
                //标题 关键词
                var titleData="<p style=\"font-size: 14px;font-family: '微软雅黑';\"><a href='javascript:void(null)' onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\" >"+data[i].proTitle+"</a></p>"+
                    "<p style=\"font-size: 15px;font-family: '微软雅黑';text-align: center;margin: 0 auto;margin-top: 8px;color: #ED0F0F;line-height: 22px;\">虚拟的internet其实是传统广告宣传新产物，两者结合更能广而告之</p>";
                //付款
                var pay= " <p style=\"font-size: 45px;font-family: '微软雅黑';color: #ED0F0F;\">"+price+"<span style=\"font-size: 18px\">元起</span></p>"+
                    "<div style=\"margin-left: 105px;background: transparent\"> <button onclick=\"proOrder('"+demand+"-"+proSerice+"','"+time+"','"+1+"','"+data[i].id+"')\" class=\"ljgmbutton\">"+
                    " </button>";

                var content="<p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">三了解</span>"+
                    "<span style=\"margin-left: 10px\"><span style=\"color: #656565\">了解品牌、了解产品、了解市场、了解消<br>"+
                    "费者、了解竞争对手......</span><span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','prounderstand')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></p>"+
                    " <p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">五了解</span> " +
                    "<span style=\"position: relative;left: 10px\"> <span style=\"color: #656565;\">开免费放500名中小型企业体验名额（免费<br>"+
                    "<span style=\"margin-left: 50px\">体验）只想展示或者在网络上能够找到我们</span><br><span style=\"margin-left: -107px\">品牌......</span>"+
                    "<span span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','proscheme')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></span> </p>";
                $("#type7").append(mapData);
                $("#type7").append(titleData);
                $("#type7").append(pay);
                $("#type7").append(content);
                break;
            }
        }
        //产品8
        for(var i=0;i<data.length;i++){
            if(data[i].proType=="media") {
                var type="media";
                var proInfo=data[i].proInfoList;
                var demand;             //需求定位
                var proSerice;         //需求方案
                var price;             //服务金额
                var time;              //时长
                if(proInfo.length<1){
                    return;
                }
                if(proInfo.length==1){
                    demand =proInfo[0].demand;
                    proSerice  =proInfo[0].service;
                    price=proInfo[0].servicePrice;
                    time=proInfo[0].timeValue;
                }else{
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取第一个不是体验版的价格
                            demand =proInfo[j].demand;
                            proSerice =proInfo[j].service;
                            price=proInfo[j].servicePrice;
                            time=proInfo[j].timeValue;
                            break;
                        }
                    }
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取最小的价格
                            if(price*1>proInfo[j].servicePrice*1){
                                price=proInfo[j].servicePrice;
                                demand =proInfo[j].demand;
                                proSerice  =proInfo[j].service;
                                time=proInfo[j].timeValue;
                            }
                        }
                    }
                    if(price==null || price==""){  //如果需求都是体验版
                        for(var a=0;a<proInfo.length;a++){
                            demand =proInfo[a].demand;
                            proSerice  =proInfo[a].service;
                            price=proInfo[a].servicePrice;
                            time=proInfo[a].timeValue;
                            break;
                        }
                    }
                }
                $("#type8").empty();
                //图片
                var mapData="<div class=\"get-back get-back8\"><img src=\""+map8+"\" onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\"></div>";
                //标题 关键词
                var titleData="<p style=\"font-size: 14px;font-family: '微软雅黑';\"><a href='javascript:void(null)' onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\" >"+data[i].proTitle+"</a></p>"+
                    "<p style=\"font-size: 15px;font-family: '微软雅黑';text-align: center;margin: 0 auto;margin-top: 8px;color: #ED0F0F;line-height: 22px;\">虚拟的internet其实是传统广告宣传新产物，两者结合更能广而告之</p>";
                //付款
                var pay= " <p style=\"font-size: 45px;font-family: '微软雅黑';color: #ED0F0F;\">"+price+"<span style=\"font-size: 18px\">元起</span></p>"+
                    "<div style=\"margin-left: 105px;background: transparent\"> <button onclick=\"proOrder('"+demand+"-"+proSerice+"','"+time+"','"+1+"','"+data[i].id+"')\" class=\"ljgmbutton\">"+
                    " </button>";

                var content="<p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">三了解</span>"+
                    "<span style=\"margin-left: 10px\"><span style=\"color: #656565\">了解品牌、了解产品、了解市场、了解消<br>"+
                    "费者、了解竞争对手......</span><span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','prounderstand')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></p>"+
                    " <p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">五了解</span> " +
                    "<span style=\"position: relative;left: 10px\"> <span style=\"color: #656565;\">开免费放500名中小型企业体验名额（免费<br>"+
                    "<span style=\"margin-left: 50px\">体验）只想展示或者在网络上能够找到我们</span><br><span style=\"margin-left: -107px\">品牌......</span>"+
                    "<span span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','proscheme')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></span> </p>";
                $("#type8").append(mapData);
                $("#type8").append(titleData);
                $("#type8").append(pay);
                $("#type8").append(content);
                break;
            }
        }
        //产品9
        for(var i=0;i<data.length;i++){
            if(data[i].proType=="baike"){
                var type="baike";
                var proInfo=data[i].proInfoList;
                var demand;             //需求定位
                var proSerice;         //需求方案
                var price;             //服务金额
                var time;              //时长
                if(proInfo.length<1){
                    return;
                }
                if(proInfo.length==1){
                    demand =proInfo[0].demand;
                    proSerice  =proInfo[0].service;
                    price=proInfo[0].servicePrice;
                    time=proInfo[0].timeValue;
                }else{
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取第一个不是体验版的价格
                            demand =proInfo[j].demand;
                            proSerice =proInfo[j].service;
                            price=proInfo[j].servicePrice;
                            time=proInfo[j].timeValue;
                            break;
                        }
                    }
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取最小的价格
                            if(price*1>proInfo[j].servicePrice*1){
                                price=proInfo[j].servicePrice;
                                demand =proInfo[j].demand;
                                proSerice  =proInfo[j].service;
                                time=proInfo[j].timeValue;
                            }
                        }
                    }
                    if(price==null || price==""){  //如果需求都是体验版
                        for(var a=0;a<proInfo.length;a++){
                            demand =proInfo[a].demand;
                            proSerice  =proInfo[a].service;
                            price=proInfo[a].servicePrice;
                            time=proInfo[a].timeValue;
                            break;
                        }
                    }
                }
                $("#type9").empty();
                //图片
                var mapData="<div class=\"get-back get-back9\"><img src=\""+map9+"\" onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\"></div>";
                //标题 关键词
                var titleData="<p style=\"font-size: 14px;font-family: '微软雅黑';\"><a href='javascript:void(null)' onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\" >"+data[i].proTitle+"</a></p>"+
                    "<p style=\"font-size: 15px;font-family: '微软雅黑';text-align: center;margin: 0 auto;margin-top: 8px;color: #ED0F0F;line-height: 22px;\">虚拟的internet其实是传统广告宣传新产物，两者结合更能广而告之</p>";
                //付款
                var pay= " <p style=\"font-size: 45px;font-family: '微软雅黑';color: #ED0F0F;\">"+price+"<span style=\"font-size: 18px\">元起</span></p>"+
                    "<div style=\"margin-left: 105px;background: transparent\"> <button onclick=\"proOrder('"+demand+"-"+proSerice+"','"+time+"','"+1+"','"+data[i].id+"')\" class=\"ljgmbutton\">"+
                    " </button>";

                var content="<p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">三了解</span>"+
                    "<span style=\"margin-left: 10px\"><span style=\"color: #656565\">了解品牌、了解产品、了解市场、了解消<br>"+
                    "费者、了解竞争对手......</span><span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','prounderstand')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></p>"+
                    " <p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">五了解</span> " +
                    "<span style=\"position: relative;left: 10px\"> <span style=\"color: #656565;\">开免费放500名中小型企业体验名额（免费<br>"+
                    "<span style=\"margin-left: 50px\">体验）只想展示或者在网络上能够找到我们</span><br><span style=\"margin-left: -107px\">品牌......</span>"+
                    "<span span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','proscheme')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></span> </p>";
                $("#type9").append(mapData);
                $("#type9").append(titleData);
                $("#type9").append(pay);
                $("#type9").append(content);
                break;
            }
        }
        //产品10
        for(var i=0;i<data.length;i++){
            if(data[i].proType=="operation") {
                var type="operation";
                var proInfo=data[i].proInfoList;
                var demand;             //需求定位
                var proSerice;         //需求方案
                var price;             //服务金额
                var time;              //时长
                if(proInfo.length<1){
                    return;
                }
                if(proInfo.length==1){
                    demand =proInfo[0].demand;
                    proSerice  =proInfo[0].service;
                    price=proInfo[0].servicePrice;
                    time=proInfo[0].timeValue;
                }else{
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取第一个不是体验版的价格
                            demand =proInfo[j].demand;
                            proSerice =proInfo[j].service;
                            price=proInfo[j].servicePrice;
                            time=proInfo[j].timeValue;
                            break;
                        }
                    }
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取最小的价格
                            if(price*1>proInfo[j].servicePrice*1){
                                price=proInfo[j].servicePrice;
                                demand =proInfo[j].demand;
                                proSerice  =proInfo[j].service;
                                time=proInfo[j].timeValue;
                            }
                        }
                    }
                    if(price==null || price==""){  //如果需求都是体验版
                        for(var a=0;a<proInfo.length;a++){
                            demand =proInfo[a].demand;
                            proSerice  =proInfo[a].service;
                            price=proInfo[a].servicePrice;
                            time=proInfo[a].timeValue;
                            break;
                        }
                    }
                }
                $("#type10").empty();
                //图片
                var mapData="<div class=\"get-back get-back10\"><img src=\""+map10+"\" onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\"></div>";
                //标题 关键词
                var titleData="<p style=\"font-size: 14px;font-family: '微软雅黑';\"><a href='javascript:void(null)' onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\" >"+data[i].proTitle+"</a></p>"+
                    "<p style=\"font-size: 15px;font-family: '微软雅黑';text-align: center;margin: 0 auto;margin-top: 8px;color: #ED0F0F;line-height: 22px;\">虚拟的internet其实是传统广告宣传新产物，两者结合更能广而告之</p>";
                //付款
                var pay= " <p style=\"font-size: 45px;font-family: '微软雅黑';color: #ED0F0F;\">"+price+"<span style=\"font-size: 18px\">元起</span></p>"+
                    "<div style=\"margin-left: 105px;background: transparent\"> <button onclick=\"proOrder('"+demand+"-"+proSerice+"','"+time+"','"+1+"','"+data[i].id+"')\" class=\"ljgmbutton\">"+
                    " </button>";

                var content="<p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">三了解</span>"+
                    "<span style=\"margin-left: 10px\"><span style=\"color: #656565\">了解品牌、了解产品、了解市场、了解消<br>"+
                    "费者、了解竞争对手......</span><span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','prounderstand')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></p>"+
                    " <p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">五了解</span> " +
                    "<span style=\"position: relative;left: 10px\"> <span style=\"color: #656565;\">开免费放500名中小型企业体验名额（免费<br>"+
                    "<span style=\"margin-left: 50px\">体验）只想展示或者在网络上能够找到我们</span><br><span style=\"margin-left: -107px\">品牌......</span>"+
                    "<span span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','proscheme')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></span> </p>";
                $("#type10").append(mapData);
                $("#type10").append(titleData);
                $("#type10").append(pay);
                $("#type10").append(content);
                break;
            }
        }
        //产品11
        for(var i=0;i<data.length;i++){
            if(data[i].proType=="data") {
                var type="data";
                var proInfo=data[i].proInfoList;
                var demand;             //需求定位
                var proSerice;         //需求方案
                var price;             //服务金额
                var time;              //时长
                if(proInfo.length<1){
                    return;
                }
                if(proInfo.length==1){
                    demand =proInfo[0].demand;
                    proSerice  =proInfo[0].service;
                    price=proInfo[0].servicePrice;
                    time=proInfo[0].timeValue;
                }else{
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取第一个不是体验版的价格
                            demand =proInfo[j].demand;
                            proSerice =proInfo[j].service;
                            price=proInfo[j].servicePrice;
                            time=proInfo[j].timeValue;
                            break;
                        }
                    }
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取最小的价格
                            if(price*1>proInfo[j].servicePrice*1){
                                price=proInfo[j].servicePrice;
                                demand =proInfo[j].demand;
                                proSerice  =proInfo[j].service;
                                time=proInfo[j].timeValue;
                            }
                        }
                    }
                    if(price==null || price==""){  //如果需求都是体验版
                        for(var a=0;a<proInfo.length;a++){
                            demand =proInfo[a].demand;
                            proSerice  =proInfo[a].service;
                            price=proInfo[a].servicePrice;
                            time=proInfo[a].timeValue;
                            break;
                        }
                    }
                }
                $("#type11").empty();
                //图片
                var mapData="<div class=\"get-back get-back11\"><img src=\""+map11+"\" onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\"></div>";
                //标题 关键词
                var titleData="<p style=\"font-size: 14px;font-family: '微软雅黑';\"><a href='javascript:void(null)' onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\" >"+data[i].proTitle+"</a></p>"+
                    "<p style=\"font-size: 15px;font-family: '微软雅黑';text-align: center;margin: 0 auto;margin-top: 8px;color: #ED0F0F;line-height: 22px;\">虚拟的internet其实是传统广告宣传新产物，两者结合更能广而告之</p>";
                //付款
                var pay= " <p style=\"font-size: 45px;font-family: '微软雅黑';color: #ED0F0F;\">"+price+"<span style=\"font-size: 18px\">元起</span></p>"+
                    "<div style=\"margin-left: 105px;background: transparent\"> <button onclick=\"proOrder('"+demand+"-"+proSerice+"','"+time+"','"+1+"','"+data[i].id+"')\" class=\"ljgmbutton\">"+
                    " </button>";

                var content="<p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">三了解</span>"+
                    "<span style=\"margin-left: 10px\"><span style=\"color: #656565\">了解品牌、了解产品、了解市场、了解消<br>"+
                    "费者、了解竞争对手......</span><span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','prounderstand')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></p>"+
                    " <p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">五了解</span> " +
                    "<span style=\"position: relative;left: 10px\"> <span style=\"color: #656565;\">开免费放500名中小型企业体验名额（免费<br>"+
                    "<span style=\"margin-left: 50px\">体验）只想展示或者在网络上能够找到我们</span><br><span style=\"margin-left: -107px\">品牌......</span>"+
                    "<span span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','proscheme')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></span> </p>";
                $("#type11").append(mapData);
                $("#type11").append(titleData);
                $("#type11").append(pay);
                $("#type11").append(content);
                break;
            }
        }
        //产品12
        for(var i=0;i<data.length;i++){
            if(data[i].proType=="advertisement") {
                var type="advertisement";
                var proInfo=data[i].proInfoList;
                var demand;             //需求定位
                var proSerice;         //需求方案
                var price;             //服务金额
                var time;              //时长
                if(proInfo.length<1){
                    return;
                }
                if(proInfo.length==1){
                    demand =proInfo[0].demand;
                    proSerice  =proInfo[0].service;
                    price=proInfo[0].servicePrice;
                    time=proInfo[0].timeValue;
                }else{
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取第一个不是体验版的价格
                            demand =proInfo[j].demand;
                            proSerice =proInfo[j].service;
                            price=proInfo[j].servicePrice;
                            time=proInfo[j].timeValue;
                            break;
                        }
                    }
                    for(var j=0;j<proInfo.length;j++){
                        if(proInfo[j].service!="体验版"){//取最小的价格
                            if(price*1>proInfo[j].servicePrice*1){
                                price=proInfo[j].servicePrice;
                                demand =proInfo[j].demand;
                                proSerice  =proInfo[j].service;
                                time=proInfo[j].timeValue;
                            }
                        }
                    }
                    if(price==null || price==""){  //如果需求都是体验版
                        for(var a=0;a<proInfo.length;a++){
                            demand =proInfo[a].demand;
                            proSerice  =proInfo[a].service;
                            price=proInfo[a].servicePrice;
                            time=proInfo[a].timeValue;
                            break;
                        }
                    }
                }
                $("#type12").empty();
                //图片
                var mapData="<div class=\"get-back get-back1\"><img src=\""+map12+"\" onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\"></div>";
                //标题 关键词
                var titleData="<p style=\"font-size: 14px;font-family: '微软雅黑';\"><a href='javascript:void(null)' onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"')\" >"+data[i].proTitle+"</a></p>"+
                    "<p style=\"font-size: 15px;font-family: '微软雅黑';text-align: center;margin: 0 auto;margin-top: 8px;color: #ED0F0F;line-height: 22px;\">虚拟的internet其实是传统广告宣传新产物，两者结合更能广而告之</p>";
                //付款
                var pay= " <p style=\"font-size: 45px;font-family: '微软雅黑';color: #ED0F0F;\">"+price+"<span style=\"font-size: 18px\">元起</span></p>"+
                    "<div style=\"margin-left: 105px;background: transparent\"> <button onclick=\"proOrder('"+demand+"-"+proSerice+"','"+time+"','"+1+"','"+data[i].id+"')\" class=\"ljgmbutton\">"+
                    " </button>";

                var content="<p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">三了解</span>"+
                    "<span style=\"margin-left: 10px\"><span style=\"color: #656565\">了解品牌、了解产品、了解市场、了解消<br>"+
                    "费者、了解竞争对手......</span><span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','prounderstand')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></p>"+
                    " <p class=\"content-right-text-order1-p\"><span style=\"font-size: 14px;font-family: '微软雅黑';\">五了解</span> " +
                    "<span style=\"position: relative;left: 10px\"> <span style=\"color: #656565;\">开免费放500名中小型企业体验名额（免费<br>"+
                    "<span style=\"margin-left: 50px\">体验）只想展示或者在网络上能够找到我们</span><br><span style=\"margin-left: -107px\">品牌......</span>"+
                    "<span span onclick=\"proMation("+i+",'"+type+"','"+demand+"','"+proSerice+"','proscheme')\" style=\"color: #4088E3;cursor: pointer\">more</span></span></span> </p>";
                $("#type12").append(mapData);
                $("#type12").append(titleData);
                $("#type12").append(pay);
                $("#type12").append(content);
                break;
            }
        }
    }
    // 更改浏览量跳转产品页
    function proMation(data,type,demand,proSerice,uap) {
        var title = proList[data].proTitle;
        var pro_data=title+","+demand+","+proSerice;
        $.ajax({
            url : ctx+'/Product/browserUp',
            type : 'POST',
            data : "proTitle="+title,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null && data!=""){
                    if(uap!=""&& uap!=null){
                        window.location.href = "/get/"+type+"."+uap;
                    }else {
                        window.location.href = "/get/"+type;
                    }
                }
            }
        })
    }

    //确认订单页
    function proOrder(row,time,num,titleId) {//产品编号，产品需求定位，产品方案
        $.ajax({
            url : ctx+'/Product/proOrder',
            type : 'POST',
            data : "row="+row+"&time="+time+"&num="+num+"&titleId="+titleId,
            async:true,
            cache:false,
            dataType : 'json',
            success :function(data){
                if(data.flag){
                    window.location.href="${ctx}/orderensure";
                }
            }
        })
    }
</script>
</body>

</html>