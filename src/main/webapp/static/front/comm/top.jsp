<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${ctx}/static/front/css/top.css" type="text/css">
<link rel="stylesheet" href="${ctx}/static/front/css/upper.css" type="text/css">
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
        top: 330px;
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


</style>


<div style="height: 146px;width: 100%;z-index: 9999;background: transparent;" class="hhmf" id="nava">
<div style="position: fixed;top: 0;height: 130px;width: 100%;z-index: 9999;box-shadow: 1px 1px 8px #999;background: #ededed;" class="hhmf-top">

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
                        <span class="user" style="height: 40px;display: block;margin-top: -3px;text-align: center">
                       <c:if test="${sessionScope.userName!=null}" var="condition" scope="session">
                           ${sessionScope.userName}
    　　           </c:if>
                        <br><a href="${ctx}/vip"  style="font-size: 12px;color: #666;text-decoration: none" target="_blank">进入会员中心</a>
                        </span>
                    </div>
                        <input type="button" onclick="exit()" value="退出" style="width: 40px;background: 0;border: 0;margin-left: 15px;cursor: pointer;color: #666;font-size: 12px">
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

</div>
<!--置顶-->
<div id="detail_floating">

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

              /*  var url = window.location.href;
                url.substring(url);
                window.location.href=url;*/
                window.location.href="${ctx}/login"
            }
        });
    }
</script>
