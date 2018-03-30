<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/taglib.jsp"%>
<html ng-app>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${ctx}/static/front/css/style.css">
		<link rel="stylesheet" href="${ctx}/static/front/css/solve.css" />
	</head>
	<body>
		<jsp:include page="/static/front/comm/top.jsp"/>
		<section class="solve">
			<div class="crumbs">
				<span ><a href="http://www.fengcheng7080.com/" target="_Blank" style="font-size: 12px;color: #666">首页</a></span>
				<span style="color: #666">></span>
				<a href=""><span style="font-size: 12px;color: #666">我们为您解决什么</span></a>
			
			</div>
			<div class="content">
				<!--banner1-->
				<div class="banner">
					<img src="${ctx}/static/front/images/solve_banner.jpg" alt="" />
					
				</div>
				<!--分割-->
				<div class="hr">
					<img src="${ctx}/static/front/images/solve_hr.png" alt="" />
				</div>
				<!--模块-->
				<div class="module_box">
					<div >
						<img src="${ctx}/static/front/images/solve_activity.jpg" alt="" />
						<div class="activity_pup">
							<span class="frist">2016年11月11日 （全天24小时）</span>
						</div>
					</div><!--
					--><div>
						<img src="${ctx}/static/front/images/solve_detection.jpg" alt="" />
					<div class="detection_pup">
						<span class="frist">1 6 个 平 台</span>
						<span>1 5 6 2 品 类</span>
						<span>3 9 4 8 7 品 牌</span>
						<span>8 3 4 万 商 品</span>
					</div>
					</div><!--
					--><div>
						<img src="${ctx}/static/front/images/solve_platform.jpg" alt="" />
						<div class="platform_pup">
							<span class="frist">京       东</span>
							<span class="frist">天       猫</span>
							<span>苏宁易购</span>
							<span>国美在线</span>
							<span>1  &nbsp;号 店 </span>
							<span>亚  马 逊</span>
							<span>我  买  网 </span>
							<span>当  当  网</span>
							<span>聚美优品 </span>
							<span>乐  蜂  网</span>
							<span>麦  乐  购 </span>
							<span>蜜芽宝贝</span>
							<span>速普母婴 </span>
							<span>国际妈咪</span>
							<span>母婴之家 </span>
							<span>乐友孕婴童 </span>
						</div>
					</div><!--
					--><div>
						<img src="${ctx}/static/front/images/solve_category.jpg" alt="" />
						<div class="category_pup right">
							<span class="frist">家电（冰箱、空调、平板电视……）</span>
							<span>乳制品（婴幼儿奶粉、常温酸奶、儿童奶……）</span>
							<span>化妆品（洁面、面膜、化妆水……）</span>
						</div>
					</div><!--
					--><div>
						<img src="${ctx}/static/front/images/solve_state.jpg" alt="" />
						<div class="state_pup right">
							<span class="frist one">全球235个国家和地区参与，最热门的国家分别是日本、美国、韩国、澳大利亚、德国……最活跃的海外国家TOP5分别是俄罗斯、西班牙、以色列、乌克兰、法国。</span>
						</div>
					</div><!--
					--><div style="margin-right: 0;">
						<img src="${ctx}/static/front/images/solve_media.jpg" alt="" />
					 	<div class="media_pup right">
					 		<span class="frist">全球600家媒体</span>
					 	</div>
					</div><!--
					--><div >
						<img src="${ctx}/static/front/images/solve_adv.jpg" alt="" />
						<div class="adv_pup upleft">
							<span class="one" style="margin-top: 180px;">明星代言广告+网络媒体广告+交通广告+移动广告+社交广告+视频广告+传统媒体广告+电视广告（商家自身广告宣传计划）</span>
						</div>
					</div><!--
					--><div >
						<img src="${ctx}/static/front/images/solve_data.jpg" alt="" />
						<div class="data_pup upleft">
							<span class="frist one">2016年全网总销售额为1770.4亿元，双十一创下的“中国速度”，整整24小时，双11全球狂欢节现场的大幕一直在滚动，数字从0到1207亿。14分钟，2012年被甩在身后；1小时，2013年被甩在身后；6小时54分，2014年被甩在身后；15小时19分，2015年被甩在身后。比去年增长32%；京东“双十一”下单量超过3200万单，同比增长130%，交易额同比增长59%；苏宁易购“双十一”全渠道订单量增长193%，线上订单量增长210%。</span>
						</div>
					</div><!--
					--><div>
						<img src="${ctx}/static/front/images/solve_net.jpg" alt="" />
						<div class="net_pup upleft">
							<span class="frist one">     截至2016年12月，我国网民规模达7.31亿，全年共计新增网民4299万人。互联网普及率为53.2%，预计2017年我国网民规模将达7.72亿，互联网普及率将达55.9%。</span>
							<span class="one">   截至2016年12月，我国手机网民规模达6.95亿，预计2017年我国手机规模达7.39亿，网民中使用手机上网人群的占比由2016年的95.1%提升至97.8%</span>
							<span class="one">     截至2016年12月，我国农村网民占比为27.4%，规模为2.01亿，较2015年底增加526万人，增幅为2.了%；城镇网民占比72.6%，规模为5.31亿，较2015年底增加3772万人，增幅为7.7%。</span>
						</div>
					</div><!--
					--><div>
						<img src="${ctx}/static/front/images/solve_tree.jpg" alt="" />
						<div class="tree_pup right up">
							<span class="frist one">进驻大平台有一定资质要求，进驻或加盟费、推广及宣传费，还需要一支专业团队来运营，投入与见效不能成正比。</span>
						</div>
					</div><!--
					--><div>
						<img src="${ctx}/static/front/images/solve_show.jpg" alt="" />
						<div class="show_pup right up">
							<span class="frist one">社交+网站+媒体+视频+APP+广告=（全面启动线下+线上，线上宣传推广主要服务于线下实体销售。），这是目前主流常见的企业品牌及产品广告宣传及营销常用的运营策略。</span>
						</div>
					</div><!--
					--><div style="margin-right: 0;">
						<img src="${ctx}/static/front/images/solve_gridding.jpg" alt="" />
						<div class="gridding_pup right up">
							<span class="frist one">作为传统企业在2016年双十一数据刺激下，再加上2016年12月权威网民统计下，2017年两会期间发改委副主任张勇表示，虚拟经济产生于实体经济，服务于实体经济，这个原则是不能变的。</span>
							<span class="one">作为传统企业我们有什么权利及资格依然保持传统路线，行业在变化、消费者在变化、市场在变化、传统企业应接受或创新来改变自身企业发展弊端。</span>
						</div>
					</div>
				</div>
				<!--banner2-->
				<div class="banner2">
					<img src="${ctx}/static/front/images/solve_banner2.jpg" alt="" />
				</div>
				<!--分割-->
				<div class="hr">
					<img src="${ctx}/static/front/images/solve_hr.png" alt="" />
				</div>
				<!--模块-->
				<div class="team_box">
					<div class="tame">
						<img src="${ctx}/static/front/images/solve_tame.jpg" alt="" />
						<div class="text">
							<span class="theme">培养团队有点浪费</span>
							<span style="text-indent:25px;">主要精力集中在生产、市场、销售方面，无人监管网站建设与运营，无专业人来运营，培养一个专业运营团队对于中小型企业来说有点浪费。</span>
						</div>
					</div>
					<div class="collocation">
						<img src="${ctx}/static/front/images/solve_collocation.jpg" alt="" />
						<div class="text">
							<span class="theme">第三方托管费高产出=?</span>
							<span style="text-indent:25px;">交给第三方运营收费又太高，是否有运营产出比无法保障，（许多第三方代运营只会给出一个大概数值，不会给予具体产出比数值，因为这个数据是不可控的，有多种因素会影响这个数值的变化）这个是许多中小型企业转型想借助互联网拓展广告宣传快速提高品牌及产品占领市场一个重要的渠道。</span>
						</div>
					</div>
					<div class="free">
						<img src="${ctx}/static/front/images/solve_free.jpg" alt="" />
						<div class="text">
							<span class="theme">免费为您服务</span>
							<span style="text-indent:25px;">您担心费用问题、无成效问题，欢迎您来找峰程7080，我们免费开放500个名额，免费帮您实现四建、六做、两定、七数据。我们以行动说话，以数据博您的掌声。</span>
						</div>
					</div>
					<div class="data2" style="margin-right: 0;">
						<img src="${ctx}/static/front/images/solve_data2.jpg" alt="" />
						<div class="text">
							<span class="theme">用数据博您掌声</span>
							<span>第一步填写免费体验登记表</span>
							<a href="${ctx}/free"><p class="apply">申请免费体验</p></a>
							<span>第二步您需要推荐10家中小型企业免费体验并参与（符合推荐企业要求即可参与免费体验名额及获得相应的服务</span>
							<a href="${ctx}/free"><p class="enterprise">查看推荐企业要求</p></a>
						</div>
					</div>
				</div>
				<!--banner3-->
				<div class="banner3">
					<img src="${ctx}/static/front/images/solve_banner3.jpg" alt="" />
				</div>
				<!--分割-->
				<div class="hr">
					<img src="${ctx}/static/front/images/solve_hr.png" alt="" />
				</div>
				<div class="internet_box">
					<div class="internet1">
						<img src="${ctx}/static/front/images/solve_internet1.jpg" alt="" />
						<div class="text">
							<span class="theme">“互联网+”</span>
							<span style="text-indent:25px;">2015年7月4日，国务院印发《国务院关于积极推进“互联网+”行动的指导意见》。</span>
							<span style="text-indent:25px;">2016年5月31日，教育部、国家语委在京发布《中国语言生活状况报告（2016）》。“互联网+”入选十大新词和十个流行语。</span>
						</div>
					</div>
					<div class="internet2">
						<img style="width: 285px;height: 450px;" src="${ctx}/static/front/images/solve_internet2.jpg" alt="" />
						<div class="text">
							<span class="theme">中国互联网+联盟”</span>
							<span style="text-indent:25px;">2015年12月16日，第二届世界互联网大会在浙江乌镇开幕。在举行“互联网+”的论坛上，中国互联网发展基金会联合百度、阿里巴巴、腾讯共同发起倡议，成立“中国互联网+联盟”。</span>
						</div>
					</div>
					<div class="internet3">
						<img src="${ctx}/static/front/images/solve_internet3.jpg" alt="" />
						<div class="text">
							<span class="theme" >《中国制造2025》和"联网+"</span>
							<span style="text-indent:25px;">2016年06月28日李克强指出，首先，《中国制造2025》和“互联网+”是不可分割的，这是因为我们要推动中国制造升级，必须向智能化的方向发展。而要使中国制造向智能化的方向发展，必须依靠互联网，依靠云计算，依靠大数据，这样才能使中国200多项产量占世界第一的工业产品能够跃上新的水平。</span>
						</div>
					</div>
					<div class="internet4" style="margin-right: 0;">
						<img src="${ctx}/static/front/images/solve_internet4.jpg" alt="" />
						<div class="text">
						<span class="theme">虚拟经济服务实体经济</span>
						<span style="text-indent:25px;">2017年3月6日，发改委副主任张勇表示，虚拟经济产生于实体经济，服务于实体经济，这个原则是不能变的。</span>
						<span style="text-indent:25px;"> 2017年3月15日，李克强说，“‘双创’可以说是应运而生，在全球化、‘互联网+’的时代，我们推动‘放管服’改革，也促进了‘大众创业、万众创新’。其实‘双创’不仅是中小微企业的事，也是大企业的事，现在许多大企业也在推动‘双创’，在线上创造很多众创空间，让线上的工人当创客，和订单背后的市场需求结合起来，更适应消费者的需要。双创覆盖了一二三产业、大中小企业，是有着很强的生命力的。”</span>
							
						</div>



					</div>
				</div>
			</div>
		</section>
		<jsp:include page="/static/front/comm/footer.jsp"/>
		<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
		<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
		<script>
			$('.module_box>div').hover(function(){
				console.log(this);
				$(this).children("div").css('display','block');
			},function(){
				$(this).children("div").css('display','none');
			});
		</script>
	</body>
</html>
