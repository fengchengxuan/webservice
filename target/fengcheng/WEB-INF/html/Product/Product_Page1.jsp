<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/taglib.jsp"%>
<html ng-app>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
		<link rel="stylesheet" href="${ctx}/static/front/css/Product_Page.css" type="text/css">
		<style type="text/css">
			.buy span{
				width: 760px;
				display: inline-block;
				vertical-align: text-top;
				font-size: 14px;
			}.buy span div{
				 width: 218px;
				 float: left;
				 line-height: 22px;
			 }
		</style>
	</head>

	<body style="background-color: #EDEDED;color: #666666;">
	<jsp:include page="/static/front/comm/top.jsp"/>
		<section class="product_page">
			<div class="crumbs">
				<span>首页</span>
				<span>></span>
				<span>您从我们这里得到什么</span>
				<span>></span>
                <span id="topPage"></span>
			</div>
			<div class="top_adv">
				<div class="money_box">
					<div class="money">
                        <b id="moenyT"></b>
                        <span id="price">元起</span>
					</div>
					<div class="btn" onclick=" proOrder()">立即付款</div>

					<a href="">直达客户经理>></a>

				</div>

			</div>
			<div class="content">
				<div class="list_box">
					<div class="demand list">
						<div class="img_box">
							<img src="${ctx}/static/front/images/product_demand.jpg" alt="" />
						</div>

						<div class="text">
							<p id="">需求定位</p>
							<span class="a">网站建设</span>
							<span class="b">手机网站</span>
							<span class="c">程序</span>
							<span class="d">app研发与定制</span>
						</div>
					</div>

				</div>
				<div class="list_box">
					<div class="understand list">
						<div class="img_box">
							<img src="${ctx}/static/front/images/product_understand.jpg" alt="" />
						</div>
						<div class="text">
							<p>五了解</p>
							<span>了解品牌</span>
							<span>了解产品</span>
							<span>了解市场</span>
							<span>了解消费者</span>
							<span>了解竞争对手</span>
						</div>
					</div>

				</div>
				<div class="list_box">
					<div class="programme list">
						<div class="img_box">
							<img style="margin-top: 25px;" src="${ctx}/static/front/images/product_programme.jpg" alt="" />
						</div>

						<div class="text">
							<p>四方案</p>
							<div style="margin-top: 10px;">
								<i></i>
								<span>基础方案</span>
								<strong>只想展示或者在网络上能够找到我们品牌及产品信息即可制定的方案   </strong>
							</div>
							<div>
								<i></i>
								<span class="jj">方案一</span>
								<strong>一份根据三了解制定的方案   </strong>
							</div>
							<div>
								<i></i>
								<span class="jj">方案二</span>
								<strong>一份站在网络运营角度制定的方案 </strong>
							</div>
							<div>
								<i></i>
								<span class="jj">方案三</span>
								<strong>一份根据客户需求及要求制定的方案 </strong>
							</div>
						</div>

					</div>

				</div>
				<div class="list_box">
					<div class="book list">
						<div class="img_box">
							<img style="margin-left: 15px;" src="${ctx}/static/front/images/product_book.jpg" alt="" />
						</div>

						<div class="text">
							<p>三书</p>
							<span>项目合作协议书</span>
							<span>网站建设规划确认书</span>
							<span>产品体验协议书</span>
						</div>
						<div class="contract">
							<i></i>
							<span></span>
						</div>
					</div>

				</div>
				<div class="list_box">
					<div class="build list">
						<div class="img_box">
							<img src="${ctx}/static/front/images/product_build.jpg" alt="" />
						</div>

						<div class="text">
							<p>八建</p>
							<span class="d">建 网 站<i> </i></span>
							<span class="d1">建 手 机 官 网<i> </i></span>
							<span class="d2">建 微 信 公 众 号<i> </i></span>
							<span class="d3">建 微 博<i></i></span>
							<span class="d">建 视 频<i> </i></span>
							<span class="d1">建 推 广<i> </i></span>
							<span class="d2">营 销 及 文 案<i> </i></span>
							<span class="d3">建 网 化 运 营 战 略<i> </i></span>
						</div>
					</div>

				</div>
				<div class="list_box">
					<div class="doing list">
						<div class="img_box">
							<img src="${ctx}/static/front/images/product_doing.jpg" alt="" />
						</div>

						<div class="text">
							<p>六做</p>
							<span class="d1">网 站 运 营 与 维 护<i> </i></span>
							<span class="d2">微 博 / 微 信 公 众 号 运 营<i> </i></span>
							<span class="d3">品 牌 信 息 建 设<i> </i></span>
							<span class="d1">产 品 信 息 建 设<i></i></span>
							<span class="d2">关 键 词 优 化<i> </i></span>
							<span class="d3">视 频 及 媒 体 策 划 及 宣 传 推 广<i> </i></span>
						</div>
					</div>

				</div>
				<div class="list_box">
					<div class="timing  list">
						<div class="img_box">
							<img src="${ctx}/static/front/images/product_timing.jpg" alt="" />
						</div>
						<div class="text">
							<p>两定</p>
							<span>定月维护</span>
							<span>定月工作报告</span>

						</div>
					</div>

				</div>
				<div class="list_box">
					<div class="data list">
						<div class="img_box">
							<img src="${ctx}/static/front/images/product_data.jpg" alt="" />
						</div>
						<div class="text dataa">
							<p class="">十二数据</p>
							<span class="d1"> 网 站 数 据<i> </i></span>
							<span class="d2"> SEO 数 据<i> </i></span>
							<span class="d3"> 新 闻 数 据<i> </i></span>
							<span class="d1"> 视 频 数 据<i></i></span>
							<span class="d2"> 图 片 数 据<i> </i></span>
							<span class="d3"> 社 交 数 据<i> </i></span>
							<span class="d1"> 问 答 数 据<i> </i></span>
							<span class="d2"> 文 库 数 据<i> </i></span>
							<span class="d3"> 百 科 数 据<i> </i></span>
							<span class="d1"> 微 信 数 据<i></i></span>
							<span class="d2"> 通 讯 数 据<i> </i></span>
							<span class="d3"> 销 售 数 据<i> </i></span>
						</div>
					</div>
				</div>
				<!--
					
				-->
				<div class="pay_box">
					<div class="pay">
						<ul>
							<li class="scheme demand" id="demand">
								<b>需求定位：</b>
								<%--<span class="a active">网站建设</span>--%>
							<%--<span class="b">手机网站</span>--%>
							<%--<span class="c">程序</span>--%>
							<%--<span class="d">app研发与定制</span>--%>
							</li>
							
							<li class="scheme serve" id="scheme">
								<b>服务标准：</b>
								<span class="experience active">体验版</span>
								<span class="basics">基础版</span>
								<span class="reinforce">加强版</span>
								<span class="customization">定制版</span>
								<span class="business">商业版</span>
							</li>
							<li class="buy">
								<b>已选服务：</b>
								<span>网站建设体验版 ;</span>
							</li>
                            <input type="hidden" id="demandObj">
                            <input type="hidden" id="schemeObj">
                            <input type="hidden" id="timeObj">
							<li class="time"id="time">
								<b>购买时长：</b>
								<span class="active tiyan" style="border-left: 1px solid #BFBFBF;">试客体验</span><span class="t">3个月</span><span class="t">6个月</span><span class="t">1年</span><span class="t2">2年</span><span class="t">3年</span><span class="t">4年</span><span class="t">5年</span>
							</li>
							<li class="num">
								<b>购买数量：</b>
								<span class="rmove">-</span><i class="number">1</i><span class="add">+</span>
							</li>
							<li class="money">
								<b>应付金额：</b>
								<span id="money"></span><i>元起</i>
							</li>
							<li class="btn_box">
								<div class="btn" onclick="proOrder()"></div>
								<a href="">直达客服经理>></a>
							</li>
						</ul>
					</div>
				</div>

			</div>
			<div class="comment">
				<div class="comment_tab_box">
					<div class="comment_tab">
						<span class="active">产品档案</span>
						<span>累计评论</span>
						<span>服务保障</span>
						<span>你问我答</span>
					</div>
				</div>

				<div>
					<!--产品档案-->
					<ul class="record_list">
						<li>
							<span>产品名称</span><p class="name">网站建设/程序/APP研发与定制——网站建设</p>
						</li>
						<li>
							<span>硬性配置</span><p class="hardware">源程序+页面模板（不含有域名、虚拟主机、vps、云主机、服务器等）</p>
						</li>
						<li>
							<span>软性配置</span><p class="software">产品结构策划师+程序员+网面美工+web制作</p>
						</li>
						<li>
							<span>人员配置</span><p class="personnel">4（人）</p>
						</li>
						<li>
							<span>产品时间配备范围</span><p class="time">1~3天 （不含修改时间）</p>
						</li>
						<li>
							<span>适合用户</span><p class="user">中小型企业/个体</p>
						</li>
						<li>
							<span>数据统计</span><p class="dataInfo">无</p>
						</li>
						<li>
							<span>购买数量</span><p class="num">1</p>
						</li>
						<li>
							<span>购买时长</span><p class="howlong">6个月~5年</p>
						</li>
						<li>
							<span>专属客服经理</span><p class="service">1名</p>
						</li>
						<li>
							<span>技术服务</span><p class="technology">自拍下订单日期起一年内有页面图片替换、系统存在异常、页面出现错乱、存在安全隐患等我方提供技术服务（根据具体技术问题目前暂定一个技术问题以10元收取标准，如有调整则另行通知）</p>
						</li>
						<li>
							<span>服务保障</span><p class="safeguard">五了解：了解品牌、了解产品、了解市场、了解消费者、了解竞争对手。一书：产品体验协议书</p>
						</li>
						<li>
							<span>赠送</span><p class="safeguard1">1、上传目前各大应用APP市场及商店，并保持每一个上传应用市场及应用商店有10000个下载量。; 2、注册APP版权，并根据系统升级要求，一年内升级2个版本。</p>
						</li>

					</ul>
					<!--累计评论-->
					<div class="comment_all">
						<div class="comment_list">
							<div class="comment_box">
								<ul>
									<li class="name_box">
										<div class="name">
											<span>昵称</span><i>qktz666666666</i>
										</div>
										<div class="product_name">
											<span>点评产品名称</span><i>网站建设/程序/APP研发与定制</i>
										</div>
									</li>
									<li>
										<p>很少网络公司会了解企业品牌、产品、市场、消费者，深入了解产品及消费者，根据企业自身问题制定的网站，以前接触的网络公司很少会有一家会你家一样认真负责到底。很少网络公司会了解企业品牌、产品、市场、消费者，深入了解产品及消费者，根据企业自身问题制定的网站，以前接触的网络公司很少会有一家会你家一样认真负责到底。</p>
									</li>
									<li class="time">
										<span>来自玉林市区</span><i>2017年5月24日20:02:36</i>
									</li>
								</ul>
								<div class="star">
									<p>评价类型</p>
									<ul>
										<li>
											<span>需 求 定 位<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>五 了 解<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>四 方 案<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>三 书<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>八 建<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>六 做<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>两 定<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>十 二 数 据<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
									</ul>
								</div>
							</div>

						</div>
						<div class="comment_list">
							<div class="comment_box">
								<ul>
									<li class="name_box">
										<div class="name">
											<span>昵称</span><i>qktz666666666</i>
										</div>
										<div class="product_name">
											<span>点评产品名称</span><i>网站建设/程序/APP研发与定制</i>
										</div>
									</li>
									<li>
										<p>很少网络公司会了解企业品牌、产品、市场、消费者，深入了解产品及消费者，根据企业自身问题制定的网站，以前接触的网络公司很少会有一家会你家一样认真负责到底。很少网络公司会了解企业品牌、产品、市场、消费者，深入了解产品及消费者，根据企业自身问题制定的网站，以前接触的网络公司很少会有一家会你家一样认真负责到底。</p>
									</li>
									<li class="time">
										<span>来自玉林市区</span><i>2017年5月24日20:02:36</i>
									</li>
								</ul>
								<div class="star">
									<p>评价类型</p>
									<ul>
										<li>
											<span>需 求 定 位<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>五 了 解<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>四 方 案<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>三 书<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>八 建<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>六 做<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>两 定<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
										<li>
											<span>十 二 数 据<i></i></span>
											<i class="drak">
									<i class="light"></i>
											</i>
										</li>
									</ul>
								</div>
							</div>

						</div>
					</div>
					<!--服务保障-->
					<ul class="safeguard_list">
						<li>
							<span>准时报告</span><p class="frist">每个月准时发送给客户（关于项目计划、实施、进度、结果）具体进展到那一步，取得什么样的成绩让企业主及负责人随时随地掌握动态</p>
						</li>
						<li>
							<span>准时数据</span><p>定周、定月、定季度、定年给客户发送工作进度及阶段期间所取得数据</p>
						</li>
						<li>
							<span>时间承诺</span><p>我们承诺客户在规定时间内达到客户预期的效果，如果达不到客户将获得我们的责任理赔</p>
						</li>
						<li>
							<span>结果承诺</span><p>项目合作协议上规定达到某种结果，我方承诺一定要达到并且要超出客户预期</p>
						</li>
						<li>
							<span>责任理赔</span><p>如我方导致项目合作协议上预期无法达到，或者导致客户网络访问不稳定，带来安全隐患按照项目合作协议上进行理赔</p>
						</li>
						<li>
							<span>专属客服经理</span><p>自合作协议生效我方配置专属的客服经理</p>
						</li>
					</ul>
					<!--评论-->
					<div class="comment_publish">
						<div class="comment_publish_star">
							<textarea name="" rows="" cols="" placeholder="我有话要说..."></textarea>
							<div class="btn_box">
								<div id="submit">提交评论</div>
							</div>
							<div class="QA">
								<ul>
									<li>
										<div class="Q">
											<span>用户提问：对于我这样的菜鸟表示看不懂，有没有视频可看啊  </span>
											<div>
												<i class="time">2017年5月20日   14：36 </i>
												<i class="name">fengcheng01</i>
												<i class="from">来自玉林电信用户</i>
											</div>
										</div>
										<div class="A">
											<span>管理员回答：有啊 请前往www.fengcheng7080.com观看，谢谢！</span>
											<div>
												<i class="time">2017年5月20日   14：40 </i>
												<i class="name">管理员1</i>
												<i class="from">来自南宁电信用户</i>
											</div>
										</div>

									</li>
									<li>
										<div class="Q">
											<span>用户提问：对于我这样的菜鸟表示看不懂，有没有视频可看啊  </span>
											<div>
												<i class="time">2017年5月20日   14：36 </i>
												<i class="name">fengcheng01</i>
												<i class="from">来自玉林电信用户</i>
											</div>
										</div>
										<div class="A">
											<span>管理员回答：有啊 请前往www.fengcheng7080.com观看，谢谢！</span>
											<div>
												<i class="timeAllocation">2017年5月20日   14：40 </i>
												<i class="name">管理员1</i>
												<i class="from">来自南宁电信用户</i>
											</div>
										</div>

									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</section>
		<jsp:include page="/static/front/comm/footer.jsp"/>

		<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
		<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
		<script  type="text/javascript">
		//需求定位
		$(".pay .scheme span").click(function(){  //点击服务标准
            var scheme=$(this).text();
			$(this).toggleClass("active");
			var hasclass=$('.pay .demand span').hasClass("active");		//定位为空时取消服务选定
		if(hasclass==false){                                                                     
				$(".pay .serve span").removeClass("active");
			}else{
            showProInfo($("#demandObj").val(),scheme,$("#timeObj").val());
		}
            showSpecies();
		});

        function showSpecies(){                                        //显示购买的项目
            $('.buy span').html("");
            var demand;
            var service;
            var time=$("#timeObj").val();
            $(".pay .demand .active").each(function(){
                var pro=[];
                pro+=$(this).text();
                $(".pay .serve .active").each(function(){
                    var obj=$(this).text();
                    $("#schemeObj").val(obj);
                    aaa=[];
                    for(var j=0;j<proInfo.length;j++){
                         if(proInfo[j].service==obj&&proInfo[j].demand==pro&&proInfo[j].timeValue==$("#timeObj").val()){
                            aaa+=" <div> "+"√ "+pro+"-"+obj+";"+"</div>";
                        }
                    }
                    if(aaa.length<1){
                        // aaa+=pro+"-"+obj+"(暂无) ; ";
                        aaa+=" <div> "+"√ "+pro+obj+"(暂无);"+"</div>";
                    }
                    $(".buy span").append(aaa);
                });
            });
            showPay();
        }
		//底部切换	
			$('.comment_tab span').click(function() {
				var list = $(this).html();
				$(this).addClass("active");
				$(this).siblings().removeClass('active');
				if(list == '产品档案') {
					$('.record_list').css('display', 'block');
					$('.record_list').siblings().css('display', 'none');
				} else if(list == "累计评论") {
					$('.comment_all').css('display', 'block');
					$('.comment_all').siblings().css('display', 'none');
				} else if(list == "服务保障") {
					$('.safeguard_list').css('display', 'block');
					$('.safeguard_list').siblings().css('display', 'none');
				} else if(list == "你问我答") {
					$('.comment_publish').css('display', 'block');
					$('.comment_publish').siblings().css('display', 'none');
				};
			});

		//选择时间
			$('.pay .time span').click(function() { //时间点击
				$(this).addClass("active");
                $("#timeObj").val($(this).text());
				$(this).siblings().removeClass("active");
                showSpecies();
			});
			//btn
			$('.pay .num .add').click(function(){
				var num = $('.pay .number').html();
				console.log(num);
				if(num<99){
					num++
					$('.pay .number').html(num);
				}
                showPay();
			});
			$('.pay .num .rmove').click(function(){  //数量点击
				var num = $('.pay .number').html();
				console.log(num);
				if(num>0){
					num--;
					$('.pay .number').html(num);
				}
                showPay();
			});
			
		</script>
	<script type="text/javascript">
        var proObj;//产品
        var proInfo;//产品下的需求定位
        var proInfoAll;
        var titleId;
        window.onload=function(){//页面加载触发
            var  timeValue;
            var pro_serice;
            var type='${requestScope.typeValue}';
            var position='${requestScope.position}';//锚点
            $.ajax({
                url : '${ctx}/Product/proShow',
                type : 'POST',
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if (data != null && data != "") {
                        for (var i = 0; i < data.length; i++) {
                            if (data[i].proType == type) {
                                proInfoAll = data[i].proInfoList;
                                var demand;             //需求定位
                                var proSerice;         //需求方案
                                var price;             //服务金额
                                if (proInfoAll.length < 1) {
                                    break;
                                }
                                if (proInfoAll.length == 1) {
                                    demand = proInfoAll[0].demand;
                                    proSerice = proInfoAll[0].service;
                                    price = proInfoAll[0].servicePrice;
                                    titleId=data[i].id;
                                    pro_serice = proSerice;
                                    timeValue=proInfoAll[0].timeValue;
                                } else {
                                    for(var j = 0; j < proInfoAll.length; j++) {
                                        if (proInfoAll[j].service != "体验版") {//取第一个不是体验版的价格
                                            demand = proInfoAll[j].demand;
                                            proSerice = proInfoAll[j].service;
                                            price = proInfoAll[j].servicePrice;
                                            titleId=data[i].id;
                                            pro_serice = proSerice;
                                            timeValue=proInfoAll[j].timeValue;
                                            break;
                                        }
                                    }
                                    for (var j = 0; j < proInfoAll.length; j++) {
                                        if (proInfoAll[j].service != "体验版") {//取最小的价格
                                            if (price * 1 > proInfoAll[j].servicePrice * 1) {
                                                titleId=data[i].id;
                                                price = proInfoAll[j].servicePrice;
                                                demand = proInfoAll[j].demand;
                                                proSerice = proInfoAll[j].service;
                                                pro_serice = proSerice;
                                                timeValue=proInfoAll[j].timeValue;
                                            }
                                        }
                                    }
                                    if (price == null || price == "") {  //如果需求都是体验版
                                        for (var a = 0; a < proInfoAll.length; a++) {
                                            demand = proInfoAll[a].demand;
                                            proSerice = proInfoAll[a].service;
                                            price = proInfoAll[a].servicePrice;
                                            pro_serice = proSerice;
                                            titleId=proInfoAll[j].id;
                                            timeValue=proInfoAll[a].timeValue;
                                            break;
                                        }
                                    }
                                }
                                break;
                            }
                        }
                    }
                    if( titleId!=null && titleId!=""){
                        $.ajax({
                            url : '${ctx}/Product/sreachId',
                            type : 'POST',
                            data : "id="+titleId,
                            async:true,
                            cache:false,
                            dataType : 'json',
                            success : function(data){
                                if(data!=null){
                                    proObj=data[0];
                                    proInfo=proObj.proInfoList;
                                    if(data.length>0){
                                        $("#topPage").text(data[0].proTitle);        //显示面包屑导航
                                        for(var j=0;j<proInfo.length;j++){
                                            if(proInfo[j].service==pro_serice&&proInfo[j].demand==demand&&proInfo[j].timeValue==timeValue){
                                                showDemand(proInfo,demand,pro_serice);     //显示产品的所有需求
                                                showProInfo(demand,pro_serice,timeValue);            //显示需求的详细信息
                                                $("#moenyT").text(data.price);//页顶显示价格
                                                $("#money").text(data.price);

												//--------------------------
                                                if(position!=null && position!=""){     //页面锚点
                                                    if(position=="prounderstand"){
                                                        document.getElementById('pro_understand').scrollIntoView();
                                                    }else if(position=="proscheme"){
                                                        document.getElementById('pro_scheme').scrollIntoView();
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        })
                    }
                }
            })
        };
        function showDemand(proInfoObj,demand,pro_serice){  //显示需求
            if(proInfo.length<1){
                return ;
            }
            var proInfoTotal="";
            var proInfoArr;
            var flag=0;
            for (var i=0;i<proInfoObj.length;i++){ //循环出每一个需求名
                flag=0;
                if(proInfoTotal.length<0){  //第一个就添加;
                    proInfoTotal=proInfoObj[0].demand+";";
                }else {
                    proInfoArr=proInfoTotal.split(";");
                    for (var j=0;j<proInfoArr.length;j++){
                        if(proInfoArr[j]==proInfoObj[i].demand){
                            flag++;
                            break;
                        }
                    }
                    if(flag==0){
                        flag=0;
                        proInfoTotal=proInfoTotal+ proInfoObj[i].demand+";";
                    }
                }
            }
            proInfoArr=proInfoTotal.split(";");
            var proInfoNum;
            for( proInfoNum=0;proInfoNum<proInfoArr.length-1;proInfoNum++){//取小于五个不同的需求  以及选择需求
                if(demand==proInfoArr[proInfoNum]){
                    $("#demand").append("<span  id=\"demand1"+proInfoNum+"\" class=\"demandClass active\" onclick='show("+proInfoNum+")'>"+proInfoArr[proInfoNum]+"</span>")
                    $("#demandObj").val(proInfoArr[proInfoNum]);
                }else{
                    $("#demand").append("<span id=\"demand1"+proInfoNum+"\" class=\"demandClass\" onclick='show("+proInfoNum+")'>"+proInfoArr[proInfoNum]+"</span>")
                }
            }
            var t = document.getElementById("time");//时间
            var nodeListT = t.getElementsByTagName("span");
            for( i = 0;i<nodeListT.length;i++){
                if(nodeListT[i].innerHTML=="3个月"){
                    $("#timeObj").val(nodeListT[i].innerHTML);
                    nodeListT[i].click();
                }
            }
            var d = document.getElementById("scheme");  //版本需求
            var nodeList = d.getElementsByTagName("span");
            for( i = 0;i<nodeList.length;i++){
                if(nodeList[i].innerHTML==pro_serice){
                    $(".pay .serve span").removeClass("active");
                    nodeList[i].click();
                    $("#schemeObj").val(nodeList[i].innerHTML);
                }
            }
        }
        function showProInfo(demand,service1,timeValue){     //显示需求详细信息
            if(demand!=null && demand!="" && service1!=null) {
                for (var x = 0; x < proInfo.length; x++) {
                    if (demand == proInfo[x].demand && service1==proInfo[x].service && timeValue==proInfo[x].timeValue) {
                        $(".name").text(proObj.proTitle + "——" + proInfo[x].demand);
                        $(".hardware").text(proInfo[x].hard_Configuration);
                        $(".software").text(proInfo[x].soft_Configuration);
                        $(".personnel").text(proInfo[x].personnel);
                        $(".timeAllocation").text(proInfo[x].time_Allocation);
                        $(".user").text(proInfo[x].user_range);
                        $(".dataInfo").text(proInfo[x].data);
                        $(".service").text(proInfo[x].pro_manager);
                        $(".technology").text(proInfo[x].technical_service);
                        $(".safeguard").text(proInfo[x].serviceGuarante);
                        $(".proNum").text(proInfo[x].totalNum);
                        //添加赠送内容
                        var text="(无)";
                        if(proInfo[x].givenFreeList!=null){
                            text="";
                            var givenFree=proInfo[x].givenFreeList;
                            for(var i=0;i<givenFree.length;i++){
                                text=text+(i+1)+"、"+givenFree[i].type;
                            }
                        }
                        $(".safeguard1").text(text);
                        return ;
                    }
                }
            }
        }

   function show(proInfoNum) {
       if($("#demand1"+proInfoNum+"").hasClass("active")){
           $("#demand1"+proInfoNum+"").removeClass("active");
       }else{
           $("#demand1"+proInfoNum+"").addClass("active");
           $("#demandObj").val($("#demand1"+proInfoNum+"").text());
           showProInfo($("#demandObj").val(),$("#schemeObj").val(),$("#timeObj").val());  //显示需求档案
       }
       showSpecies();
   }
        function showPay(){   //显示金额
            $.ajax({
                url : ctx+'/Product/showPay',
                type : 'POST',
                data : "row="+$(".buy span").text()+"&time="+$("#timeObj").val()+"&num="+$(".number").text()+"&titleId="+titleId,
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if(data!=null && data!=""){
                        $("#moenyT").text(data.price);//页顶显示价格
                        $("#money").text(data.price);
                    }
                }
            })
        }
   //--------------------------------
        function proOrder() {//跳转订单页
            $.ajax({
                url : ctx+'/Product/proOrder',
                type : 'POST',
                data : "row="+$(".buy span").text()+"&time="+$("#timeObj").val()+"&num="+$(".number").text()+"&titleId="+titleId,
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