<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<html>
	<head>
		<meta charset="utf-8" />
		<title>南宁网站建设_手机网站建设_系统APP开发_玉林网站建设_柳州网站建设_桂林网站建设</title>
    	<meta name="keywords" content="南宁网站建设、手机网站建设、网站系统、APP开发、玉林网站建设、柳州网站建设、桂林网站建设" />
    	<meta name="description" content="南宁网站建设、手机网站建设、网站系统、APP开发、玉林网站建设、柳州网站建设、桂林网站建设描述：南宁网站建设及网站系统开发，手机APP及客户端开发，峰程7080为玉林网站建设、柳州网站建设、防城港网站建设、北部湾网站建设提供技术研发运营及推广服务。" />
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
	    <meta name="apple-mobile-web-app-capable" content="yes" />
	    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
	    <meta name="format-detection" content="telphone=no, email=no" />
	    <meta name="renderer" content="webkit">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="HandheldFriendly" content="true">
	    <meta name="MobileOptimized" content="320">
	    <meta name="screen-orientation" content="portrait">
	    <meta name="x5-orientation" content="portrait">
	    <meta name="full-screen" content="yes">
	    <meta name="x5-fullscreen" content="true">
	    <meta name="browsermode" content="application">
	    <meta name="x5-page-mode" content="app">
	    <meta name="msapplication-tap-highlight" content="no">

		<link rel="stylesheet" type="text/css" href="${ctx}/static/front/js/swiper/css/swiper.min.css" />
		<link rel="stylesheet" type="text/css" href="${ctx}/static/front/index/css/phone/base.css" />
		<link rel="stylesheet" type="text/css" href="${ctx}/static/front/index/css/phone/index.css" />
		<script type="text/javascript">
			/* JS动态媒体查询设置根字号 */
			(function(n) {
				var e = n.document,
					t = e.documentElement,
					i = 992, // 设计稿大小
					d = i / 50, // 根字号
					o = "orientationchange" in n ? "orientationchange" : "resize",
					a = function() {
						var n = t.clientWidth || 768;
						n > 992 && (n = 992), // 设计稿大小
							t.style.fontSize = n / d + "px";
					};
				e.addEventListener && (n.addEventListener(o, a, !1),
					e.addEventListener("DOMContentLoaded", a, !1))
			})(window);
		</script>
	</head>

	<body>
		<div class="f-mobile-main">

			<div class="viewport">
				<div class="top_box">
					<div class="viewport_logo">
						<img style="width: 60%;margin: 3% 0 0 5%;" src="${ctx}/static/front/images/logo.png" alt="" />
					</div>
					<div class="viewport_meun">
						<img src="${ctx}/static/front/images/muen.png" alt="" />
					</div>
				</div>

				<div class="meun_list">
					<ul>
						<li>
							<a href="">免费体验</a>
						</li>
						<li>
							<a href="">我们能做什么</a>
						</li>
						<li>
							<a href="">我们为您解决什么问题 </a>
						</li>
						<li>
							<a href="">您从我们这里得到什么</a>
						</li>
						<li>
							<a href="">认可我们的人都在这里</a>
						</li>
					</ul>
				</div>
			</div>
			<!--轮播图-->
			<div class="mblb swiper-container swiper-container-horizontal">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<a href="#">
							<img class="" src="${ctx}/static/front/images/1.jpg" />
						</a>
					</div>
					<div class="swiper-slide">
						<a href="#">
							<img class="" src="${ctx}/static/front/images/2.jpg" />
						</a>
					</div>
					<div class="swiper-slide">
						<a href="#">
							<img class="" src="${ctx}/static/front/images/3.jpg" />
						</a>
					</div>
					<div class="swiper-slide">
						<a href="#">
							<img src="${ctx}/static/front/images/4.jpg" />
						</a>
					</div>
				</div>
				<!-- 如果需要分页器 -->
				<div class="swiper-pagination swiper-pagination-white "></div>
			</div>
			<!--导航-->
			<div class="navlist" style="position: absolute;right: 0;">
      		  <ul>
	            <li class="index"><a href="http://www.fengcheng7080.com" target="_blank">首页</a></li>
	            <li class="taste" style="height: 47px"><a href="${ctx}/free" style="height: 47px;display: block;">
                <span class="mm1">免</span><span class="mm2">费</span><span class="mm3">体</span><span class="mm4">验</span>
            </a></li>
            <li class="wedo"><a href="">能做什么</a></li>
            <li class="foyou"><a href="${ctx}/solute">解决问题</a></li>
            <li class="get"><a href="${ctx}/foryou">得到什么</a></li>
            <li class="who"><a href="${ctx}/whose">我们是谁</a></li>
        </ul>
    </div>
			<div class="data">
				<div class="data_title">
					<img src="${ctx}/static/front/images/people3.png" alt="" style="position: relative;left: 10px;top: -23px;z-index: 99;">
					<span class="content-right-text tit">
                	<span style="font-size: 0.5rem;position: relative;left: 20%;display: block;float: left;line-height: 60px;height: 60px">  数据-告诉-你-结果=我们付出/</span><span style="display: block;" class="hhhq"><span class="hhh1">换</span><span class="hhh2">来</span><span class="hhh1">您</span><span class="hhh2">的</span><span class="hhh1">认</span><span class="hhh2">可</span></span>
					</span>
				</div>

				<div style="padding: 10px 0;margin-top: -10px;position: relative;top: -20px">

					<div class="table_bj">
						<img id="table_bj" src="${ctx}/static/front/images/table_bj.png" alt="" />
						<table style="color:#fff;" class="table-bgcolor">

							<tr class="margin-top0">
								<td></td>
								<td style="color:#F89D0A" id="numDiv">688</td>
								<td style="color:#F89D0A" id="numDiv1">1688</td>
								<td style="color:#F89D0A" id="numDiv2">16888</td>
							</tr>
							<tr>
								<td></td>
								<td style="color: #F89D0A" id="numDiv3">5</td>
								<td style="color: #F89D0A" id="numDiv4">60</td>
								<td style="color: #F89D0A" id="numDiv5">12450</td>
							</tr>
							<tr>
								<td></td>
								<td style="color: #F89D0A" id="numDiv6">5</td>
								<td style="color: #F89D0A" id="numDiv7">55</td>
								<td style="color: #F89D0A" id="numDiv8">900</td>
							</tr>
							<tr>
								<td></td>
								<td style="color: #F89D0A" id="numDiv9">25</td>
								<td style="color: #F89D0A" id="numDiv10">80</td>
								<td style="color: #F89D0A" id="numDiv11">452</td>
							</tr>
							<tr>
								<td></td>
								<td style="color:#F89D0A" id="numDiv12">35</td>
								<td style="color:#F89D0A" id="numDiv13">90</td>
								<td style="color:#F89D0A" id="numDiv14">680</td>
							</tr>
							<tr>
								<td></td>
								<td style="color: #F89D0A" id="numDiv15">45</td>
								<td style="color: #F89D0A" id="numDiv16">100</td>
								<td style="color: #F89D0A" id="numDiv17">17890</td>
							</tr>
							<tr>
								<td></td>
								<td style="color:#F89D0A" id="numDiv18">80</td>
								<td style="color:#F89D0A" id="numDiv19">240</td>
								<td style="color:#F89D0A" id="numDiv20">9820</td>
							</tr>
							<tr>
								<td></td>
								<td style="color:#F89D0A" id="numDiv21">50</td>
								<td style="color:#F89D0A" id="numDiv22">300</td>
								<td style="color:#F89D0A" id="numDiv23">9570</td>
							</tr>
							<tr>
								<td></td>
								<td style="color:#F89D0A" id="numDiv24">3</td>
								<td style="color:#F89D0A" id="numDiv25">3</td>
								<td style="color:#F89D0A" id="numDiv26">15</td>
							</tr>
							<tr>
								<td></td>
								<td style="color:#F89D0A" id="numDiv27">145</td>
								<td style="color:#F89D0A" id="numDiv28">280</td>
								<td style="color:#F89D0A" id="numDiv29">7892</td>
							</tr>
							<tr>
								<td></td>
								<td style="color:#F89D0A" id="numDiv30">50</td>
								<td style="color:#F89D0A" id="numDiv31">668</td>
								<td style="color:#F89D0A" id="numDiv32">2890</td>
							</tr>
							<tr>
								<td></td>
								<td style="color:#F89D0A" id="numDiv30">50</td>
								<td style="color:#F89D0A" id="numDiv31">668</td>
								<td style="color:#F89D0A" id="numDiv32">2890</td>
							</tr>

						</table>
					</div>
				</div>
				<div class="free">
					<div class="free_table">
						<img src="${ctx}/static/front/images/free_bj.png" alt="" />
					</div>
				</div>
				<!--产品列表-->
				<div class="product_list">
					<div class="ninti">
						<span class="content-right-text" style="height: 51px;line-height: 51px;font-size: 0.5rem">

                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您提要求，我们帮您实现
                </span> <img src="${ctx}/static/front/images/people3.png" alt="" style="position: relative;top: -82px;left: 3px">
					</div>
					<div style="width: 100%;background: white;box-sizing: border-box;margin-top: 18px;">
						<div class="porder-list" >
							<div class="img">
								<img src="${ctx}/static/front/images/order.jpg" alt="" />
								<span>网站建设/程序/APP研发与定制</span>
							</div>
							<div class="price">
								<span>按需求、经济实惠、符合中小企业</span>
								<b>555<i>元起</i></b>
								<img  src="${ctx}/static/front/images/buttun-m.png" alt="" />
							</div>
							<div class="msg">
								<p>
									<i>五了解</i>
									<span>了解品牌、了解产品、了解市场、了解消费者、了解竞争对手...... <b>more</b></span>
								</p>
								<p>
									<i>五了解</i>
									<span>免费开放500名中小型企业体验名额（免费体验）只想展示或者在网络上能够找到我们品牌......<b>more</b></span>
								</p>
							</div>
						</div>
						<div class="porder-list">
							<div class="img">
								<img src="${ctx}/static/front/images/order.jpg" alt="" />
								<span>网站建设/程序/APP研发与定制</span>
							</div>
							<div class="price">
								<span>按需求、经济实惠、符合中小企业</span>
								<b>555<i>元起</i></b>
								<img  src="${ctx}/static/front/images/buttun-m.png" alt="" />
							</div>
							<div class="msg">
								<p>
									<i>五了解</i>
									<span>了解品牌、了解产品、了解市场、了解消费者、了解竞争对手...... <b>more</b></span>
								</p>
								<p>
									<i>五了解</i>
									<span>免费开放500名中小型企业体验名额（免费体验）只想展示或者在网络上能够找到我们品牌......<b>more</b></span>
								</p>
							</div>
						</div>
						<div class="porder-list">
							<div class="img">
								<img src="${ctx}/static/front/images/order.jpg" alt="" />
								<span>网站建设/程序/APP研发与定制</span>
							</div>
							<div class="price">
								<span>按需求、经济实惠、符合中小企业</span>
								<b>555<i>元起</i></b>
								<img  src="${ctx}/static/front/images/buttun-m.png" alt="" />
							</div>
							<div class="msg">
								<p>
									<i>五了解</i>
									<span>了解品牌、了解产品、了解市场、了解消费者、了解竞争对手...... <b>more</b></span>
								</p>
								<p>
									<i>五了解</i>
									<span>免费开放500名中小型企业体验名额（免费体验）只想展示或者在网络上能够找到我们品牌......<b>more</b></span>
								</p>
							</div>
						</div>
						<div class="porder-list">
							<div class="img">
								<img src="${ctx}/static/front/images/order.jpg" alt="" />
								<span>网站建设/程序/APP研发与定制</span>
							</div>
							<div class="price">
								<span>按需求、经济实惠、符合中小企业</span>
								<b>555<i>元起</i></b>
								<img  src="${ctx}/static/front/images/buttun-m.png" alt="" />
							</div>
							<div class="msg">
								<p>
									<i>五了解</i>
									<span>了解品牌、了解产品、了解市场、了解消费者、了解竞争对手...... <b>more</b></span>
								</p>
								<p>
									<i>五了解</i>
									<span>免费开放500名中小型企业体验名额（免费体验）只想展示或者在网络上能够找到我们品牌......<b>more</b></span>
								</p>
							</div>
						</div>

					</div>
				</div>
				<div class="">
					<img src="${ctx}/static/front/images/5.jpg" />
				</div>
				<div>

					<div id="content-left">
						<div class="left_port">
							<span class="content-jpg-text tit" style="background: linear-gradient(0deg, #1cab26, #23b62a,#2ac32e);margin-top: 20px">
                   <img src="${ctx}/static/front/images/people4.png" alt="" style="position: relative;top: -10px;left: -10px">
                <span style="font-size: 0.55rem;" >我们的承诺为您护航远行</span>
							</span>
							<div class="content-left-box">
								<div class="content-left-box-list" >
									<div class="left">
										<img src="${ctx}/static/front/images/ko-1.png" alt="" />
										<span>五了解</span>
									</div>
									<div class="right">
										<span>了解品牌</span>
										<span>了 解 产 品</span>
										<span>了解市场</span>
										<span>了解消费者</span>
										<span style="width: 50%;">了解竞争对手</span>
									</div>
								</div>																		
								<hr>
								<div class="content-left-box-list" >
									<div class="left">
										<img src="${ctx}/static/front/images/ko-2.png" alt="" />
										<span>五方案</span>
									</div>
									<div class="right">
										<span>体验版</span>
										<span>基础版</span>
										<span>加强版</span>
										<span>定制版</span>
										<span>商业版</span>
									</div>
								</div>																		
								<hr>
								<div class="content-left-box-list" >
									<div class="left">
										<img style="width: 65%;"  src="${ctx}/static/front/images/ko-3.png" alt="" />
										<span>四书</span>
									</div>
									<div class="right" style="margin-bottom: 20px;">
										<p>产品体验协议书</p>
										<p>网站建设规划确认书</p>
										<p>网站建设规划确认书</p>
										<p>免费开放500名中小型</p>
										<p>企业免费体验协议书</p>
									</div>
									<div class="bottom">
										<img src="${ctx}/static/front/images/W.png" >
										<img src="${ctx}/static/front/images/button.png" style="cursor: pointer;margin-left: 10%;">
									</div>
									
								</div>																		
								<hr>
								<div class="content-left-box-list" >
									<div class="left">
										<img  src="${ctx}/static/front/images/ko-4.png" alt="" />
										<span>八建</span>
									</div>
									<div class="right">
										<span>建网站</span>
										<span>建手机官网</span>
										<span>建微博</span>
										<span>建微信公众号</span>
										<span>建视频</span>
										<span>营销及文案</span>
										<span>建推广</span>
										<span>建网格化运营战略</span>
									</div>
									
									
								</div>																		
								<hr>
								<div class="content-left-box-list" >
									<div class="left">
										<img  src="${ctx}/static/front/images/ko-5.png" alt="" />
										<span>六做</span>
									</div>
									<div class="right">
										<span>网站运营与维护</span>
										<span>产品信息建设</span>
										<span>品牌信息建设</span>
										<span>关键词优化</span>
										<span>微博/微信公众号运营</span>
										<span>视频及媒体策划及宣传推广</span>
									</div>
									
									
								</div>																		
								<hr>
								<div class="content-left-box-list" >
									<div class="left">
										<img  src="${ctx}/static/front/images/ko-6.png" alt="" />
										<span>两定</span>
									</div>
									<div class="right" style="margin-bottom: 40px;margin-top: 50px;">
										<span>定月维护</span>
										<span>定月工作报告</span>
										
									</div>
									
									
								</div>																		
								<hr>
										
							
							</div>
						</div>
						<div class="right_port">
							<span class="content-jpg-text" style="margin-top: 20px">
                   <img src="${ctx}/static/front/images/people6.png" alt="" style="position: relative;top: -10px;left: -20px">
                    <span style="font-size: 0.55rem;">您从我们这里得到什么</span>
							</span>
							<div class="content-right-box">
								<div style="margin-top: 20px" class="left-Promise">
								<div class="title">
									<span class="fl" style="margin-left: 10px;">十二数据</span>
									<span class="fr" style="margin-right:10px ;">我与峰程</span>
								</div>
								
							</div>

							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>

							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>

							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>

							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>

							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>

							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>

							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>

							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>

							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>
							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>
							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>
							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>
							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>
							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>
							<div class="left-Promise">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							<hr>
							<div class="left-Promise last" style="height: 50px;">
								<p>我与峰程的2个月的试用期 <span class="promise-time">5月2日</span> <span style="color:#4089e3;cursor: pointer">more</span></p>
							</div>
							
							</div>
							
						</div>

					</div>

				</div>
			</div>
			<div class="on-border"></div>

		</div>
		<!--底部导航-->
		<div class="footer">
    <div>
        <div class="content">
            
            <div class="list" style="font-size: 0.1rem;">
            	<span>免费声明</span><span class="cut">|</span><span style="width: 33%;">服务条款/隐私政策</span><span class="cut">|</span><span>法律声明</span><span class="cut">|</span><span>客服中心</span>
            </div>       
            <div class="last">
                <div class="copyright" style="width: 100%;text-align: center;" >© 2017-2021 fengcheng7080.com 版权所有</div>
            </div>
        </div>
    </div>
</div>

		<script src="${ctx}/static/front/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${ctx}/static/front/js/swiper/js/swiper.jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${ctx}/static/front/js/mobile.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(document).scroll(function() {
				if($(this).scrollTop() >= 20) {
					$("#mobile-search-fixed .mobile-search-box").css({
						"position": "fixed",
						"top": "0",
						"left": "0",
						"z-index": "999",
						"width": "100%",
						"background-color": "#e8e8e8",
						"box-shadow": "0 3px 3px 3px rgba(0,0,0,.1)"
					})
				} else if($(this).scrollTop() <= 10) {
					$("#mobile-search-fixed .mobile-search-box").css({
						"position": "static",
						"background-color": "transparent",
						"box-shadow": "none"
					})
				}
			});
			var swiper = new Swiper('.swiper-container', {
				pagination: '.swiper-pagination',
				paginationClickable: true,
				autoplay: 3000,
				speed: 500,
				autoHeight: true,
				autoplayDisableOnInteraction: false,
				loop: true
			});
			var swiper1 = new Swiper('.flex-viewport', {
				autoplay: 3000,
				speed: 500,
				autoHeight: true,
				autoplayDisableOnInteraction: false,
				loop: true
			});
			var swiper2 = new Swiper('.shortcut-operation-group', {
				pagination: '.swiper-pagination',
				slidesPerView: 5,
				slidesPerGroup: 5,
				slidesPerColumnFill: 'row',
				spaceBetween: 5,
				paginationClickable: true
			});
			$(".viewport_meun").click(function() {
				$(".meun_list").slideToggle(300);
			});
			
			var num = 688,num1 = 1688,num2 = 16888,num3 = 5,num4 = 60,num5 = 12450,num6 = 5,num7 = 55,num8 = 900,num9 = 25,num10 = 80,num11 = 452,num12 = 35,num13 = 90,num14 = 680,num15 = 45,num16 = 100,num17 = 17890,num18 = 80,num19 = 240,num20 = 9820,num21 = 50,num22 = 300,num23 = 9570,num24 = 3,num25 = 3,num26 = 15,num27 = 145,num28 = 280,num29 = 7892,num30 = 50,num31 = 668,num32 = 2890,num33 = 3,num34 = 290,num35 = 1460;
var interval = null;
var fn = function (){
    clearInterval(interval);
    interval = setInterval(function () {
        if (num==0&&num1==0&&num2 == 0&&num3 == 0&&num4 == 0&&num5 == 0&&num6 == 0&&num7 == 0&&num8 == 0&&num9 == 0&&num10 == 0&&num11 == 0&&num12 == 0&&num13 == 0&&num14 == 0&&num15 == 0&&num16 == 0&&num17 == 0&&num18 == 0&&num19 == 0&&num20 == 0&&num21 == 0&&num22 == 0&&num23 == 0&&num24 == 0&&num25 == 0&&num26 == 0&&num27 == 0&&num28 == 0&&num29 == 0&&num30 == 0&&num31 == 0&&num32 == 0&&num33 == 0&&num34 == 0&&num35 == 0) {
            clearInterval(interval);
        }
        numDiv.innerHTML = (num *= 1.5).toFixed(2);
        numDiv1.innerHTML = (num1 *= 1.5).toFixed(2);
        numDiv2.innerHTML = (num2 *= 1.5).toFixed(2);
        numDiv3.innerHTML = (num3 *= 1.5).toFixed(2);
        numDiv4.innerHTML = (num4 *= 1.5).toFixed(2);
        numDiv5.innerHTML = (num5 *= 1.5).toFixed(2);
        numDiv6.innerHTML = (num6 *= 1.5).toFixed(2);
        numDiv7.innerHTML = (num7 *= 1.5).toFixed(2);
        numDiv8.innerHTML = (num8 *= 1.5).toFixed(2);
        numDiv9.innerHTML = (num9 *= 1.5).toFixed(2);
        numDiv10.innerHTML = (num10 *= 1.5).toFixed(2);
        numDiv11.innerHTML = (num11 *= 1.5).toFixed(2);
        numDiv12.innerHTML = (num12 *= 1.5).toFixed(2);
        numDiv13.innerHTML = (num13 *= 1.5).toFixed(2);
        numDiv14.innerHTML = (num14 *= 1.5).toFixed(2);
        numDiv15.innerHTML = (num15 *= 1.5).toFixed(2);
        numDiv16.innerHTML = (num16 *= 1.5).toFixed(2);
        numDiv17.innerHTML = (num17 *= 1.5).toFixed(2);
        numDiv18.innerHTML = (num18 *= 1.5).toFixed(2);
        numDiv19.innerHTML = (num19 *= 1.5).toFixed(2);
        numDiv20.innerHTML = (num20 *= 1.5).toFixed(2);
        numDiv21.innerHTML = (num21 *= 1.5).toFixed(2);
        numDiv22.innerHTML = (num22 *= 1.5).toFixed(2);
        numDiv23.innerHTML = (num23 *= 1.5).toFixed(2);
        numDiv24.innerHTML = (num24 *= 1.5).toFixed(2);
        numDiv25.innerHTML = (num25 *= 1.5).toFixed(2);
        numDiv26.innerHTML = (num26 *= 1.5).toFixed(2);
        numDiv27.innerHTML = (num27 *= 1.5).toFixed(2);
        numDiv28.innerHTML = (num28 *= 1.5).toFixed(2);
        numDiv29.innerHTML = (num29 *= 1.5).toFixed(2);
        numDiv30.innerHTML = (num30 *= 1.5).toFixed(2);
        numDiv31.innerHTML = (num31 *= 1.5).toFixed(2);
        numDiv32.innerHTML = (num32 *= 1.5).toFixed(2);
     
    }, 15000);
    setTimeout(function () {
        num = 688;
        num1 = 1688;
        num2 = 16888;
        num3 = 5;
        num4 = 60;
        num5 = 12450;
        num6 = 5;
        num7 = 55;
        num8 = 900;
        num9 = 25;
        num10 = 80;
        num11 = 452;
        num12 = 35;
        num13 = 90;
        num14 = 680;
        num15 = 45;
        num16 = 100;
        num17 = 17890;
        num18 = 80;
        num19 = 240;
        num20 = 9820;
        num21 = 50;
        num22 = 300;
        num23 = 9570;
        num24 = 3;
        num25 = 3;
        num26 = 15;
        num27 = 145;
        num28 = 280;
        num29 = 7892;
        num30 = 50;
        num31 = 668;
        num32 = 2890;
        num33 = 3;
        num34 = 290;
        num35 = 1460;
        fn();
    }, 360 * 1000);
};
fn();

$(function(){
	var height = $('#table_bj').height();
		var tdheight = Math.floor(height/13.5);
		$('.table-bgcolor td').height(tdheight);
		
		
});
$(document).ready(function(){
		
	$(window).resize(function() {
   		 var height = $('#table_bj').height();
		var tdheight = Math.floor(height/13.5);
		$('.table-bgcolor td').height(tdheight);
		
	});
	

});

		</script>
	</body>


</html>