<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<html ng-app>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
		<link rel="stylesheet" href="${ctx}/static/front/css/CreateContrat.css" type="text/css">

	</head>

	<body>
		<jsp:include page="/static/front/comm/top.jsp"/>
		<section class="CreateContract">
			<div class="content">
				<div class="msg_box">
					<p class="msg">创建合同</p>
					<div class="CreateContract_list">
						<ul>
							<li>
								<span>合同名称</span>
								<div class="sel">
									<input type="text" name="title" placeholder="">
								</div>
							</li>
							<li>
								<span class="">合同编号</span>
								<div class="sel">
									<input type="text" name="defContractNo" placeholder="">
								</div>

							</li>
							<li>
								<span class="">合同模板号</span>
								<div class="sel">
									<input type="text" name="templateId" placeholder="">
								</div>

							</li>
							<li>
								<span>是否启用存证</span>
								<div class="sel">
									<label>
									<select name="useCer" id="">
										<option value="1">是</option>
										<option value="2">否</option>
									</select>
									</label>
									<i></i>
								</div>
							</li>
							<!--<li>
								<span>签名位置</span>
								<div class="sel">
									<input class="sign_where" name="param" type="text" name="" />
								</div>
							</li>-->
						</ul>
					</div>
				</div>
				<div class="CreateContract_template">
					<div class="btn">
						编辑合同占位符
					</div>
					<textarea name="param" rows="" cols="" placeholder=""></textarea>
				</div>
				<div class="upcontract">
					<div class="btn" id="templateContract" onclick="templateContract()">
						生成合同
					</div>
				</div>
				<!--<div class="examine_contrat">
					<div></div>
				</div>-->
			</div>
		</section>
			<jsp:include page="/static/front/comm/footer.jsp"/>
		<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
		<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
		<script src="${ctx}/static/front/js/contrat.js" type="text/javascript"></script>
	</body>

</html>