<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta charset="UTF-8">
    <title>他(她)们都选我</title>
    <meta name="description" content="jquery section scrolling plugin"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/front/css/chm.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/front/css/style2.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/front/css/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/front/css/public.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/static/front/css/zsstyle.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/static/front/css/ie9-style.css" />
    <link rel="stylesheet" href="${ctx}/static/front/css/top.css" type="text/css">
    <style>

        /*右侧浮*/
        .score_box .star_box_light, .evaluate_wrap .evaluate_list_box .list_box .evaluate_icon, .evaluate_wrap .evaluate_list_box .list_box .evaluate_icon:hover, .evaluate_wrap .evaluate_list_box .list_box .already_praise .evaluate_icon, .evaluate_wrap .evaluate_list_box .list_box .comment_tag {
            background: url("//img.mdcdn.cn/pc/img/detail/detail_sprite.png?t=20170622") no-repeat;
            display: inline-block;
            *display: inline;
            *zoom: 1; }

        .server_sprite_base, .tabs_content_wrap .service_support .service_section .subtitle .detail_sprite_information, .tabs_content_wrap .service_support .doc_download_table .download .btn_download_sprite, .tabs_content_wrap .service_support .doc_download_table .download .default_btn_download_icon, .tabs_content_wrap .service_support .service_wrap .service .detail_sprite_guanwang, .tabs_content_wrap .service_support .service_wrap .service .detail_sprite_weixin, .tabs_content_wrap .service_support .service_wrap .service .detail_sprite_kefu, .tabs_content_wrap .question_section .detail_sprite_q, .tabs_content_wrap .question_section .detail_sprite_a {
            background: url("//img.mdcdn.cn/pc/img/detail/server_sprite.png?t=20160225") no-repeat;
            display: inline-block;
            *display: inline;
            *zoom: 1; }

        .server_sprite_base_2, #detail_floating .item a .detail_sprite {
            background: url("//img.mdcdn.cn/pc/img/detail/detail_servic_2.png?t=201708301") no-repeat;
            display: inline-block;
            *display: inline;
            *zoom: 1; }

        .crumb_wrap {
            border-bottom: 1px solid #eee;
            *height: 41px; }
        .crumb_wrap .crumb_self:hover {
            cursor: default;
            color: #666; }

        #detail_floating {
            position: fixed;
            bottom: 20px;
            right: 20px;
            z-index: 99;
            width: 62px; }
        #detail_floating .item {
            cursor: pointer;
            background: #000;
            -moz-opacity: 0.75;
            -khtml-opacity: 0.75;
            opacity: 0.75;
            filter: alpha(opacity=75);
            zoom: 1;
            border-bottom: 1px solid #5a5959; }
        #detail_floating .item:hover {
            background: #000;
            background: transparent\9;
            background: rgba(0, 0, 0, 0.9);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#e5000000, endColorstr=#e5000000); }
        #detail_floating .item a {
            padding: 12px;
            display: block;
            line-height: 1; }
        #detail_floating .item a i {
            cursor: pointer; }
        #detail_floating .item a .detail_sprite {
            height: 38px;
            width: 38px; }
        #detail_floating .item a .detail_sprite_detail_floating_qq {
            background-position: 0 0; }
        #detail_floating .item a .detail_sprite_detail_floating_qq_hover, #detail_floating .item a:hover .detail_sprite_detail_floating_qq {
            background-position: 0 -38px; }
        #detail_floating .item a .detail_sprite_detail_floating_info {
            background-position: -38px 0; }
        #detail_floating .item a .detail_sprite_detail_floating_info_hover, #detail_floating .item a:hover .detail_sprite_detail_floating_info {
            background-position: -38px -38px; }
        #detail_floating .item a .detail_sprite_detail_floating_wxcode {
            background-position: -76px 0; }
        #detail_floating .item a .detail_sprite_detail_floating_top {
            background-position: -114px 0; }
        #detail_floating .item a .detail_sprite_detail_floating_top_hover, #detail_floating .item a:hover .detail_sprite_detail_floating_top {
            background-position: -76px -38px; }
        #detail_floating .item a:hover .detail_sprite_detail_floating_qq {
            -webkit-animation: none;
            -o-animation: none;
            animation: none; }
        #detail_floating #floating_wxcode_content {
            display: none;
            position: absolute;
            bottom: 64px;
            left: -215px;
            padding: 38px 37px;
            background-color: #fff;
            border: 1px solid #d6d6d6;
            -webkit-box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.1);
            -moz-box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.1);
            box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.1); }
        #detail_floating #floating_wxcode_content img {
            width: 139px;
            height: 195px; }
        #detail_floating #floating_wxcode_content .triangle {
            width: 0;
            height: 0;
            font-size: 0;
            line-height: 0;
            overflow: hidden;
            border-width: 8px 0 8px 8px;
            border-color: transparent transparent transparent #ffffff;
            border-style: dashed dashed dashed solid;
            position: absolute;
            bottom: 26px;
            right: -6px; }

        #detail_floating{
            z-index: 9987;
            top: 333px;
        }
        .ewmjj{
            border: 1px solid #666;
            width: 180px;
            height: 240px;
            background: white;
            position: fixed;
            right: 82px;
            top: 280px;
            z-index: 999999;
            display: none;
        }
        .ewmjj img{
            position: relative;
            top: 30px;
            left: 25px;
            width: 130px;
            height: 130px;
        }
        #floating_wxcode:hover .ewmjj{
            display: block;
        }
        .navlist{
            font-family: '微软雅黑' ,sans-serif;
        }
        .hhmf-top{
            position: relative;
        }


    </style>
</head>
<body>
<div style="
 height: 154px;
    width: 100%;
    z-index: 9999;
    background: transparent;" class="hhmf" id="nava">
    <div style="position: relative;top: 0;height: 130px;width: 100%;z-index: 9999;box-shadow: 1px 1px 8px #999;background: #ededed;" class="hhmf-top">

        <a href="#1F" name="1F"></a>
        <div class="header">
            <img src="${ctx}/static/front/images/TY.png" alt="" style="position: absolute;right:5px;top: 114px;z-index: -1">
            <div class="logo"></div>
            <div class="null"></div>
            <div class="phone">

                <c:choose>
                    <c:when test="${ empty sessionScope.user}">
                        <span><a href="${ctx}/register" target="_blank">注册</a></span>
                        <span>&nbsp;|&nbsp;</span>
                        <span><a href="${ctx}/login" target="_blank">登录</a></span> </c:when>
                    <c:otherwise>
                        <div style="margin-top: 10px">
                            <div  class="user-name" style="float: left">
                        <span class="user" style="height: 40px;display: block;margin-top: -3px;text-align: center"><c:if test="${sessionScope.userName!=null}" var="condition" scope="session">
                            　    ${sessionScope.userName}
                        </c:if>
                        <br><a href="${ctx}/vip"  style="font-size: 12px;color: #666;text-decoration: none" target="_blank">进入会员中心</a>
                        </span>
                            </div>

                            <input type="button" onclick="exit()" value="退出" style="width: 40px;background: 0;border: 0;margin-left: 15px;cursor: pointer;color: #666;">
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
            <div class="phonebg"></div>
        </div>
        <div class="navlist" style="position: absolute;right: 0;">
            <ul>
                <li class="index"><a href="http://www.fengcheng7080.com" target="_blank">首页</a></li>
                <li class="taste" style="height: 47px"><a href="${ctx}/free" style="height: 47px;display: block;" target="_blank">
                    <span class="mm1">免</span><span class="mm2">费</span><span class="mm3">体</span><span class="mm4">验</span>
                </a></li>
                <li class="wedo"><a href="${ctx}/whatwedo" target="_blank">我们能做什么</a></li>
                <li class="foyou"><a href="${ctx}/solute" target="_blank">我们为您解决问题</a></li>
                <li class="get"><a href="${ctx}/get" target="_blank">您从我们这里得到什么</a></li>
                <li><a  href="${ctx}/chus" target="_blank">他(她)们都选我</a></li>
                <li class="who"><a href="${ctx}/whoweare" target="_blank">我们是谁</a></li>
            </ul>
        </div>
    </div>
    <!--置顶-->
    <div id="detail_floating">
        <div class="item">
            <a target="_blank" href="#" id="to_kefu" mtag="30007.14.1"><i class="detail_sprite detail_sprite_detail_floating_qq"></i></a>
        </div>
        <div class="item">
            <a target="_blank" href="#"><i class="detail_sprite detail_sprite_detail_floating_info"></i></a>
        </div>
        <div class="item" id="floating_wxcode" mtag="30007.14.3">
            <%--二维码--%>
            <div class="ewmjj">

                <p style="font-size: 18px;color: #0EA0E1;text-align: center;margin-top: 15px">关注微信号<br>
                    服务咨询更便捷</p>
                <img src="${ctx}/static/front/images/QR2.jpg" alt="">
                <div style="width: 8px;height: 13px;background: url('${ctx}/static/front/images/jtjtjt.png');position: relative;left: 180px;"></div>
            </div>
            <a href="#"><i class="detail_sprite detail_sprite_detail_floating_wxcode"></i></a>
        </div>
        <div class="item" id="scroll_to_top" mtag="30007.14.4">
            <a href="#"><i class="detail_sprite detail_sprite_detail_floating_top"></i></a>
        </div>
        <div id="floating_wxcode_content" style="display: none;">
            <span class="triangle"></span>
            <img src="//pic.mdcdn.cn/pc/img/detail/weixin_code.png?x-oss-process=image/format,webp/quality,Q_100&amp;t=1208" alt="美的商城微信服务号">
        </div>
    </div>
    <script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function exit() {
            $.ajax({
                url : '${ctx}/exit',
                type : 'POST',
                dataType: 'json',
                success : function() {
                    window.location.href = "${ctx}/login"
                }
            });
        }
    </script>
	<div class="content" style="line-height: 57px">
		<div class="ways"><a href="http://www.fengcheng7080.com">首页</a> > <a href="#">他(她)们都选我</a></div>
	</div>
</div>
<!--第一屏-->
<section id="section1" class="section section1" data-section-title="体验版">
    <div class="box-container" style="margin-top: 20px">
        <div class="chm-title chtitle1 nav nav-tabs nav-stacked affix-top" data-spy="affix" data-offset-top="90" ></div>
        <div class="box-container-inner">
            <div style="padding: 15px 2px 15px 15px">
                <div class="bcinner_right">
                    <div class="tiyan_list_box">
                        <div class="tiyan_list_box_top">
                            <a rel="nofollow" href=""><img class="bane" src="${ctx}/static/front/images/xwez.jpg" alt="下湾二中"></a>
                            <div class="tiyan_list" style="padding-top: 0"><span class="list_title">客户名称：</span><span class="list_text">下湾二中</span></div>
                            <div class="tiyan_list"><span class="list_title">制作日期：</span><span class="list_text">2017年9月15日</span></div>
                            <div class="tiyan_list"><span class="list_title">交付日期：</span><span class="list_text">2017年9月17日</span></div>
                            <div class="tiyan_list"><span class="list_title">演示地址：</span><a rel="nofollow" href="http://www.07714300785.com/xwez/index" target="_blank">www.07714300785.com/xwez/index</a></div>
                            <div class="tiyan_list pingjia">
                                <span class="list_title">客户评价星级：</span>
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                            </div>
                            <div class="tiyan_list ganyan"  style="position: relative">
                                <span class="list_title" style="position: absolute">客户感言:</span>
                                <img src="${ctx}/static/front/images/gyan_02.jpg" alt="客户感言">
                            </div>
                        </div>
                        <div class="tiyan_list_box_last">
                            近期有网站建设需求，无意中在百度搜索南宁网站建设，就发现峰程7080这个网站，随便点击进去看一下报价，结果发现首页有一个免费体验，当时还以为是随便骗人，咨询一下客服，大概30分钟内真的就有电话打过来.....
                            <a href="">[更多]</a>
                        </div>
                    </div>
                </div>
                <div class="bcinner_left">
                    <div class="tiyan_list_box">
                        <div class="tiyan_list_box_top">
                            <a rel="nofollow" href=""><img class="bane" src="${ctx}/static/front/images/qilu.jpg" alt="齐鲁"></a>
                            <div class="tiyan_list" style="padding-top: 0"><span class="list_title">客户名称：</span><span class="list_text">齐鲁</span></div>
                            <div class="tiyan_list"><span class="list_title">制作日期：</span><span class="list_text">2017年9月15日</span></div>
                            <div class="tiyan_list"><span class="list_title">交付日期：</span><span class="list_text">2017年9月17日</span></div>
                            <div class="tiyan_list"><span class="list_title">演示地址：</span><a rel="nofollow" href="http://www.07714300785.com/ql/index" target="_blank">www.07714300785.com/ql/index</a></div>
                            <div class="tiyan_list pingjia">
                                <span class="list_title">客户评价星级：</span>
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                            </div>
                            <div class="tiyan_list ganyan"  style="position: relative">
                                <span class="list_title" style="position: absolute">客户感言:</span>
                                <img src="${ctx}/static/front/images/gyan_01.jpg" alt="客户感言">
                            </div>
                        </div>
                        <div class="tiyan_list_box_last">
                            近期有网站建设需求，无意中在百度搜索南宁网站建设，就发现峰程7080这个网站，随便点击进去看一下报价，结果发现首页有一个免费体验，当时还以为是随便骗人，咨询一下客服，大概30分钟内真的就有电话打过来.....
                            <a href="">[更多]</a>
                        </div>
                    </div>
                    <div class="tiyan_list_box" style="margin-top: 15px">
                        <div class="tiyan_list_box_top">
                            <a rel="nofollow" href=""><img class="bane" src="${ctx}/static/front/images/lxyz.jpg" alt="罗秀一中"></a>
                            <div class="tiyan_list" style="padding-top: 0"><span class="list_title">客户名称：</span><span class="list_text">罗秀一中</span></div>
                            <div class="tiyan_list"><span class="list_title">制作日期：</span><span class="list_text">2017年9月11日</span></div>
                            <div class="tiyan_list"><span class="list_title">交付日期：</span><span class="list_text">2017年9月13日</span></div>
                            <div class="tiyan_list"><span class="list_title">演示地址：</span><a rel="nofollow" href="http://www.07714300785.com/lxyz/index" target="_blank">www.07714300785.com/lxyz/index</a></div>
                            <div class="tiyan_list pingjia">
                                <span class="list_title">客户评价星级：</span>
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                            </div>
                            <div class="tiyan_list ganyan"  style="position: relative">
                                <span class="list_title" style="position: absolute">客户感言:</span>
                                <img src="${ctx}/static/front/images/gyan_03.jpg" alt="客户感言">
                            </div>
                        </div>
                        <div class="tiyan_list_box_last">
                            近期有网站建设需求，无意中在百度搜索南宁网站建设，就发现峰程7080这个网站，随便点击进去看一下报价，结果发现首页有一个免费体验，当时还以为是随便骗人，咨询一下客服，大概30分钟内真的就有电话打过来.....
                            <a href="">[更多]</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--第二屏-->
<section id="section2" class="section section2" data-section-title="基础版">
    <div class="box-container">
        <div class="chm-title chtitle2"></div>
        <div class="box-container-inner">
            <div style="padding: 15px 2px 15px 15px">
                <div class="bcinner_right">

                </div>
                <div class="bcinner_left">
                    <div class="tiyan_list_box">
                        <div class="tiyan_list_box_top">
                            <a rel="nofollow" href=""><img class="bane" src="${ctx}/static/front/images/chm_xwyz.png" alt="下湾一中"></a>
                            <div class="tiyan_list" style="padding-top: 0"><span class="list_title">客户名称：</span><span class="list_text">下湾一中</span></div>
                            <div class="tiyan_list"><span class="list_title">制作日期：</span><span class="list_text">2017年9月1日</span></div>
                            <div class="tiyan_list"><span class="list_title">交付日期：</span><span class="list_text">2017年9月5日</span></div>
                            <div class="tiyan_list"><span class="list_title">演示地址：</span><a rel="nofollow" href="http://www.07714300785.com" target="_blank">www.07714300785.com</a></div>
                            <div class="tiyan_list pingjia">
                                <span class="list_title">客户评价星级：</span>
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                            </div>
                            <div class="tiyan_list ganyan"  style="position: relative">
                                <span class="list_title" style="position: absolute">客户感言:</span>
                                <img src="${ctx}/static/front/images/gyan_04.jpg" alt="客户感言">
                            </div>
                        </div>
                        <div class="tiyan_list_box_last">
                            近期有网站建设需求，无意中在百度搜索南宁网站建设，就发现峰程7080这个网站，随便点击进去看一下报价，结果发现首页有一个免费体验，当时还以为是随便骗人，咨询一下客服，大概30分钟内真的就有电话打过来.....
                            <a href="">[更多]</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--第三屏-->
<section id="section3" class="section section3" data-section-title="加强版">
    <div class="box-container">
        <div class="chm-title chtitle3"></div>
        <div class="box-container-inner">
            <div style="padding: 15px 2px 15px 15px">
                <div class="bcinner_right">

                </div>
                <div class="bcinner_left">
                    <div class="tiyan_list_box">
                        <div class="tiyan_list_box_top">
                            <a rel="nofollow" href=""><img class="bane" src="${ctx}/static/front/images/chm_lxmf.jpg" alt=""></a>
                            <div class="tiyan_list" style="padding-top: 0"><span class="list_title">客户名称：</span><span class="list_text">佛山...公司</span></div>
                            <div class="tiyan_list"><span class="list_title">制作日期：</span><span class="list_text">2017年10月15日</span></div>
                            <div class="tiyan_list"><span class="list_title">交付日期：</span><span class="list_text">2017年10月22日</span></div>
                            <div class="tiyan_list"><span class="list_title">演示地址：</span><a rel="nofollow" href="http://www.07714300785.com/lxmf/index" target="_blank">www.07714300785.com/lxmf/index</a></div>
                            <div class="tiyan_list pingjia">
                                <span class="list_title">客户评价星级：</span>
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                            </div>
                            <div class="tiyan_list ganyan"  style="position: relative">
                                <span class="list_title" style="position: absolute">客户感言:</span>
                                <img src="${ctx}/static/front/images/gyan_05.jpg" alt="客户感言">
                            </div>
                        </div>
                        <div class="tiyan_list_box_last">
                            近期有网站建设需求，无意中在百度搜索南宁网站建设，就发现峰程7080这个网站，随便点击进去看一下报价，结果发现首页有一个免费体验，当时还以为是随便骗人，咨询一下客服，大概30分钟内真的就有电话打过来.....
                            <a href="">[更多]</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--第四屏-->
<section id="section4" class="section section4" data-section-title="定制版">
    <div class="box-container">
        <div class="chm-title chtitle4"></div>
        <div class="box-container-inner">
            <div style="padding: 15px 2px 15px 15px">
                <div class="bcinner_right">
                    <div class="tiyan_list_box">
                        <div class="tiyan_list_box_top">
                            <a rel="nofollow" href=""><img class="bane" src="${ctx}/static/front/images/chm_ylwz.jpg" alt=""></a>
                            <div class="tiyan_list" style="padding-top: 0"><span class="list_title">客户名称：</span><span class="list_text">佛山家具...公司</span></div>
                            <div class="tiyan_list"><span class="list_title">制作日期：</span><span class="list_text">2017年10月15日</span></div>
                            <div class="tiyan_list"><span class="list_title">交付日期：</span><span class="list_text">2017年10月22日</span></div>
                            <div class="tiyan_list"><span class="list_title">演示地址：</span><a rel="nofollow" href="http://www.07714300785.com/ylwz/index" target="_blank">www.07714300785.com/ylwz/index</a></div>
                            <div class="tiyan_list pingjia">
                                <span class="list_title">客户评价星级：</span>
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                            </div>
                            <div class="tiyan_list ganyan"  style="position: relative">
                                <span class="list_title" style="position: absolute">客户感言:</span>
                                <img src="${ctx}/static/front/images/gyan_07.jpg" alt="客户感言">
                            </div>
                        </div>
                        <div class="tiyan_list_box_last">
                            近期有网站建设需求，无意中在百度搜索南宁网站建设，就发现峰程7080这个网站，随便点击进去看一下报价，结果发现首页有一个免费体验，当时还以为是随便骗人，咨询一下客服，大概30分钟内真的就有电话打过来.....
                            <a href="">[更多]</a>
                        </div>
                    </div>
                </div>
                <div class="bcinner_left">
                    <div class="tiyan_list_box">
                        <div class="tiyan_list_box_top">
                            <a rel="nofollow" href=""><img class="bane" src="${ctx}/static/front/images/chm_jxj.jpg" alt="净享家"></a>
                            <div class="tiyan_list" style="padding-top: 0"><span class="list_title">客户名称：</span><span class="list_text">佛山...公司</span></div>
                            <div class="tiyan_list"><span class="list_title">制作日期：</span><span class="list_text">2017年10月23日</span></div>
                            <div class="tiyan_list"><span class="list_title">交付日期：</span><span class="list_text">2017年10月30日</span></div>
                            <div class="tiyan_list"><span class="list_title">演示地址：</span><a rel="nofollow" href="http://www.07714300785.com/purijoy/index" target="_blank">www.07714300785.com/purijoy/index</a></div>
                            <div class="tiyan_list pingjia">
                                <span class="list_title">客户评价星级：</span>
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                            </div>
                            <div class="tiyan_list ganyan"  style="position: relative">
                                <span class="list_title" style="position: absolute">客户感言:</span>
                                <img src="${ctx}/static/front/images/gyan_06.jpg" alt="客户感言">
                            </div>
                        </div>
                        <div class="tiyan_list_box_last">
                            近期有网站建设需求，无意中在百度搜索南宁网站建设，就发现峰程7080这个网站，随便点击进去看一下报价，结果发现首页有一个免费体验，当时还以为是随便骗人，咨询一下客服，大概30分钟内真的就有电话打过来.....
                            <a href="">[更多]</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--第五屏-->
<section id="section5" class="section section5" data-section-title="商业版">
    <div class="box-container">
        <div class="chm-title chtitle5"></div>
        <div class="box-container-inner">
            <div style="padding: 15px 2px 15px 15px">
                <div class="bcinner_right">

                </div>
                <div class="bcinner_left">
                    <div class="tiyan_list_box">
                        <div class="tiyan_list_box_top">
                            <a rel="nofollow" href=""><img class="bane" src="${ctx}/static/front/images/chm_fc.jpg" alt="广西峰程璇网络科技有限公司"></a>
                            <div class="tiyan_list" style="padding-top: 0"><span class="list_title">客户名称：</span><span class="list_text">广西峰程璇网络科技有限公司</span></div>
                            <div class="tiyan_list"><span class="list_title">制作日期：</span><span class="list_text">2017年8月1日</span></div>
                            <div class="tiyan_list"><span class="list_title">交付日期：</span><span class="list_text">2017年9月2日</span></div>
                            <div class="tiyan_list"><span class="list_title">演示地址：</span><a rel="nofollow" href="http://www.fengcheng7080.com">www.fengcheng7080.com</a></div>
                            <div class="tiyan_list pingjia">
                                <span class="list_title">客户评价星级：</span>
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                                <img src="${ctx}/static/front/images/start.png" alt="星星">
                            </div>
                            <div class="tiyan_list ganyan"  style="position: relative">
                                <span class="list_title" style="position: absolute">客户感言:</span>
                                <img src="${ctx}/static/front/images/gyan_08.jpg" alt="客户感言">
                            </div>
                        </div>
                        <div class="tiyan_list_box_last">
                            近期有网站建设需求，无意中在百度搜索南宁网站建设，就发现峰程7080这个网站，随便点击进去看一下报价，结果发现首页有一个免费体验，当时还以为是随便骗人，咨询一下客服，大概30分钟内真的就有电话打过来.....
                            <a href="">[更多]</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/static/front/comm/footer.jsp"/>
<script src="${ctx}/static/front/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/html5.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function() {
        $(window).resize(function() {
            imgWH();
        }).resize();
        function imgWH() {
            var i = 0,
                    imgpnglength = $('.imgpng').length;
            for(i=0; i < imgpnglength; i++) {
                var imgpng = $('.imgpng').eq(i),
                        imgpngW = imgpng.width(),
                        maximgpngW = imgpng.attr("width");
                if(imgpngW >=　maximgpngW){
                    imgpng.attr('width', maximgpngW);
                } else {
                    imgpng.attr('width', imgpngW);
                }
            }
            var imgtopW = $('.imgtop').width(),
                    imgtopH = $('.imgtop').height();
            $('.gem-back').css({width:imgtopW*0.375,height:imgtopH*0.19,marginTop:imgtopH*0.259});
        }
    });
</script>
<script type="text/javascript">
var h=window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
$(window).scroll(function(){
	var Yoffset=window.pageYOffset || document.documentElement.scrollTop;
	if (Yoffset> 2* h) {  
		$("#arrow_up").fadeIn(100);
	}else{
		$("#arrow_up").fadeOut(100);
	}
});
$("#arrow_up").bind("click",function(e){
	e.preventDefault();
	$("body").animate({"scrollTop":"0"},1000);
		
});
</script>  
<script src="${ctx}/static/front/js/sectionscroll.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/jquery.mousewheel.min.js" type="text/javascript"></script>
</body>
</html>