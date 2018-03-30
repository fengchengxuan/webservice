<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<html ng-app>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
		<link rel="stylesheet" href="${ctx}/static/front/css/contrat.css" type="text/css">
	</head>
	<body>
	
		<jsp:include page="/static/front/comm/top.jsp"/>
	<section class="contract">
		<div class="content">
			<div class="msg_box">
				<p class="msg">乙方信息</p>
				<div class="contract_list">
					<ul>
					<li style="">
						<span>选择合同类型</span>
						<div class="sel">
							<label>
							<select name="contrat_type">
								<option value="1">免费试用合同</option>
								<option value="2">正式合同</option>			
							</select>
							</label>
							<i></i>
						</div>
						
					</li>
					<li>
						<span >会员号</span>
						<div class="sel">
							<input type="text" class="membership" value="fengcheng009" placeholder="">
						</div>
						
					</li>
					<li>
						<span class="test">用户类型</span>
						<div class="sel">
							<label>
							<select name="userType" >
								<option value="1" selected>个人</option>
								<option value="2" >企业</option>			
							</select>
							</label>
							<i></i>
						</div>
						
					</li>
					<li>
						<span class="userType">用户名</span>
						<div class="sel">
							<input type="text" name="userName"  value="网易" placeholder="">
						</div>
						
					</li>
					<li>
						<span>证件类型</span>
						<div class="sel">
							<label>
							<select name="certifyType">
								<option value="1" selected>身份证</option>
								<option value="2">护照</option>			
								<option value="3">军官证</option>			
								<!--<option value="4">营业执照</option>			
								<option value="5">组织机构代码</option>			
								<option value="6">社会统一信用码</option>			-->
							</select>
							</label>
							<i></i>
						</div>
						
					</li>
					<li>
						<span>是否创建自动签名</span>
						<div class="sel">
							<label>
							<select name="createSignature">
								<option value="1">是</option>
								<option value="0">否</option>			
							</select>
							</label>
							<i></i>
						</div>
						
					</li>
					<li>
						<span>证件号</span>
						<div class="sel">
							<input type="text"  name="certifyNumber" value="44532219930221" placeholder="">
						</div>
						
					</li>
					<li>
						<span>联系电话</span>
						<div class="sel">
							<input type="text" name="cellNum" value="15777243603" placeholder="">
						</div>
						
					</li>
				</ul>
				</div>
				<div class="btn_box">
					<button onclick="addUser()">确认</button>
				
				</div>

			</div>
			<!--<div class="msg_box">
					<p class="msg">创建合同</p>
					<div class="contract_list">
						<ul>
							<li>
								<span>合同名称</span>
								<div class="sel">
									<input type="text" name="title" />
								</div>
							</li>
							<li>
								<span class="">合同编号</span>
								<div class="sel">
									<input type="text" name="defContractNo" />
								</div>

							</li>
							<li>
								<span class="">合同模板号</span>
								<div class="sel">
									<input type="text" name="templateId" value="11196"/>
								</div>

							</li>
							<li>
								<span>是否启用存证</span>
								<div class="sel">
									<select name="useCer" id="">
										<option value="1">是</option>
										<option value="2">否</option>
									</select>
									<i></i>
								</div>
							</li>
							<li>
								<span>签名位置</span>
								<div class="sel">
									<input class="sign_where" name="param" type="text" name="" />
								</div>
							</li>
						</ul>
					</div>
					<div class="CreateContract_template">
						<div class="btn">
						编辑合同占位符
						</div>
					<textarea name="param" rows="" cols=""></textarea>
				</div>
					<div class="upcontract">
						<div class="btn" id="templateContract" onclick="templateContract()">
						生成合同
						</div>
				</div>
				</div>
			-->
			<div class="token_box">
				<div class="token" id="getToken" onclick="getToken()" >点击开始签署合同</div>
			</div>
				<span class="token_msg" onclick="checkToken()">点击签署合同后您有30分钟的签署时间，若30分钟内没有完成签署请再次点击</span>
			<div class="sign_box">
				<ul>
					<li style="margin-right: 96px;">
						<span>合同编号</span>                                                                                                                                                                                                                                                                                                                                                                                       
						<div class="sel">
							<input name="contractId" placeholder="">
						</div>			
					</li>
					<li>
						<span id="addPartner" onclick="addPartner()">合同参与者</span>
						<div class="sel">
							<input type="text" id="partnters" placeholder="">
						</div>	
						
					</li>
				</ul>
				<div class="btn_box">
					<button id="autoSignContract" onclick="addPartner()" style="margin-left: 0;">确认和同参与者</button>
					<button id="signContract" onclick="signContract()">签署合同</button>
					<button id="invalid" onclick="invalid()">合同作废</button>
					<button id="contractDetail" onclick="contractDetail()">合同签署状态查询</button>
					<button id="contractDownload" onclick="contractDownload()">合同下载</button>
				</div>
			</div>
			<span class="bottom_text">如对合同有异议，请联系客服</span>
		</div>
		</section>
			<jsp:include page="/static/front/comm/footer.jsp"/>
		
	
	<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
	<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
	<script src="${ctx}/static/front/js/contrat.js" type="text/javascript"></script>
	</body>
</html>
