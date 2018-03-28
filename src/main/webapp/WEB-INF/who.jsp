<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp"%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>我们是谁</title>
		<link rel="stylesheet" href="${ctx}/static/front/index/css/style.css" type="text/css">
 		<link rel="stylesheet" href="${ctx}/static/front/css/who.css" type="text/css">
	</head>
	<body style="background-color: #EDEDED;">
		<jsp:include page="/static/front/comm/top.jsp"/>
		<section class="who">
			<div class="crumbs">
				<a href="http://www.fengcheng7080.com/"><span style="font-size: 12px;color: #666">首页</span></a>
				<span style="font-size: 12px;color: #666">></span>
				<a href="#"><span style="font-size: 12px">我们是谁</span></a>
			</div>
			<div class="content_box" id="nava">
					<div class="content">
				<div class="top">
				<ul>
					<li>
						<span class="active">公司概况</span>
					</li>
					<li>
						<span>公司简介</span>
					</li>
					<li>
						<span>公司结构</span>
					</li>
					<li>
						<span>经营理念</span>
					</li>
					<li>
						<span>团队面貌</span>
					</li>
					<li>
						<span>服务宗旨</span>
					</li>
					<li>
						<span>发展愿景</span>
					</li>
				</ul>
				<div class="img">
					<p>&nbsp;&nbsp;&nbsp;&nbsp;广西峰程璇网络科技有限公司由峰、程、璇三位合伙伙伴一起创立于2014年2月14日，经过2年时间构思及筹备，于2016年12月27日正式注册成立，座落于广西南宁良庆区五象新区总部基地凯旋路9号（海尔·青啤东盟联合广场）。</p>
					<div class="img_box">
						<img src="${ctx}/static/front/images/who_gaikuang.jpg" alt="" />
					</div>

				</div>
			</div>
			<div class="text">
				<p>
					 公司长远目标及宗旨主要为广西省中小企业、个体、个人提供（网站建设/程序/APP研发与定制、网络计划与制定、网络推广、网络文案、视频制作与推广、搜索优化、网络媒体、词条/百科、网络运营、数据统计、网络传媒及线上线下各类广告投放，旗下有五大平台（八桂之家、情锁1314、幸福1314、长长远远、当今桂平）覆盖整个广西在社企业、行业、新闻、民生、便民、信息、货运（搬家）、社交、情感等信息综合于一体。
				</p>
				<p>
     				经公司全体股东会决议，2017年3月1日~2017年12月31日止，每个月开放10~30个名额免费为全广西中小型企业免费提供网站建设、网络品牌策划及推广，仅限实体行业企业，从事互联网企业概不提供免费服务。目前五大平台正在规划建设中，预计2017年12月31日底全部上线完毕。					
				</p>
			</div>
			<div class="text">
				<span>名字由来</span>
				<p>程曾对璇说过一句话“你不知道你有多大能力，能够做多大事情。”刺激她北上，孤身一人闯北京。峰曾对璇说过句话“当一天我在报纸或媒体上见到你的身影时，我一定会很高兴，因为我曾经以微薄之力帮助一个日后成就一番事业的人。”高个子曾对璇说过一句话“要么适应环境要么改变环境。”，故公司名称由这三位合伙人各自的名字简称组合故广西峰程璇网络科技有限公司的名称就是这样得来，三位合伙人具有70后、80后、90后不同时代背景，不同时代性格和人生共同的目标追求，共同具有一个长远发展的目标，让三位合伙人从大江南北相聚一起创业。</p>
			</div>
			<div class="text">
				<span>树高万仗落叶归根</span>
				<p>当我们身处国际化大都市北京、上海、广州、深圳，见证快速发展的城市，外来的人拼命涌进这些大都市想在这里活下来，城里的人看不起外地人，欺负及嘲笑我们是外地来，讲着一口不正宗并且带有浓厚的家乡口音的普通话，乡巴老……从那时时候起，立身于大城市里，每天拼命工作，奉献自己的青春给大城市做嫁衣……大城市里的人依然嘲笑看不起。“游子身上衣，慈母手中线”于是这三位合伙各凭自己独具的能力、经验、执着、创新，一起携手共创属于自己的未来。</p>
			</div>
			</div>
			
			</div>
		
		</section>
		<jsp:include page="/static/front/comm/footer.jsp"/>
		<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
		<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
		<script type="text/javascript">
			$('.top span').click(function(){
				$(this).addClass("active");
				$(this).parent().siblings().find('span').removeClass('active');
			});
		</script>
	</body>
</html>
