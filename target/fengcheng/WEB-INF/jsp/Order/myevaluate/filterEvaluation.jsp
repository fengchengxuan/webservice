<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>过滤评价</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
<style>
    .list29{
        background: #3eb7f3;
    }
    #Ulist tr:nth-of-type(odd){
        background: #F5F5F5;
        height: 40px;
        text-align: center;
    }
    #Ulist tr:nth-of-type(even){
        background: #fdfdfd;
        height: 50px;
    }
    select{
        color: #fff;
    }
    table{
        border-collapse: collapse;
    }
    th,td{
        padding: 0;
    }
    .select_model{
        height: 42px;
        position: relative;
    }
    .Selected{
        height: 42px;
        line-height: 42px;
        cursor: pointer;
        text-align: center;
        font-size: 14px;
    }
    .ddoli{
        position: absolute;
        left: 0;
        top: 43px;
    }
    .ddoli ul {
        border: 1px solid #ccc;
        border-top: none;
    }
    .ddoli ul li{
        cursor: pointer;
        height: 30px;
        line-height: 30px;
        text-align: center;
        background: #ffffff;
        color: #666;
        font-size: 14px;
        border-top: 1px solid #ccc;
    }
    #ddoli ul li{
        width: 109px;
    }
    #ddoli2 ul li{
        width: 106px;
    }
    .ddoli ul li:hover{
        background: #24a1ee;
        color: #ffffff;
    }
    .contener .admlistbox{
        padding-bottom: 25px;
    }
</style>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=false;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=false;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
<div class="contentbox" style="height: 1200px;">
    <div class="top">
        <img src="${ctx}/static/background/images/FZ.png" alt="">
        <span>当前位置</span>
        <span>></span>
        <a href="${ctx}/admin/hyperchannel"> <span>订单管理</span></a>
        <span>></span>
        <a href="${ctx}/admin/hyperchannel"> <span>我的评价管理</span></a>
    </div>
    <!-- 内部内容 -->

    <div class="inner inner-1" style=" width: 980px;height: 70px;
            background-color: white;">
        <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;过滤评价</div>
    </div>

    <div class="inner inner-2" style=" width: 980px;height: 1300px;
            background-color: white;position: relative;top: -10px">
        <ul style="color:white;">
            <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;width: 90px;">序号</li>
            <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #208fca;width:95px;">编号</li>
            <li style="text-align:center;float: left;height: 43px;line-height: 43px;background:  #24a1e4;border-left: 1px solid  #208fca;width:91px">用户</li>
            <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #208fca;width:144px">咨询类型</li>
            <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #208fca;width:197px">咨询问题过虑敏感词</li>
            <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #208fca;width:144px">设置动作</li>
            <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #208fca;width:111px">
                <div class="select_model">
                    <div class="Selected" id="Selected"><span>处理人</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                    <div style="display: none" class="ddoli" id="ddoli">
                        <ul>
                            <li style="border-top: none">系统管理员</li>
                            <li >运营管理员</li>
                            <li>普通管理员</li>
                            <li>编辑管理员</li>
                        </ul>
                    </div>
                </div>
            </li>
            <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #208fca;width:108px">
                <div class="select_model">
                    <div class="Selected" id="Selected2"><span>过滤状态</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                    <div style="display: none" class="ddoli" id="ddoli2">
                        <ul>
                            <li style="border-top: none">已处理</li>
                            <li >未处理</li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>

        <div style="width: 980px;height: 360px;">
                <ul>
                    <li style="width: 980px;height: 42px;background: red;display: block"></li>
                </ul>
            <table style="border: 0px;margin: 0;padding: 0;text-align: center;font-family: '微软雅黑';font-size: 12px;" id="Ulist">

                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly="readonly"></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
                <tr style="width: 980px;">
                    <td style="width: 45px"><input type="checkbox" placeholder="" ng-checked="m" name="subBox" readonly></td>
                    <td style="width: 45px;">1</td>
                    <td style="width: 95px">FC001</td>
                    <td style="width: 91px">来宾户</td>
                    <td style="width:144px">售前</td>
                    <td style="width:197px"><input type="text" value="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:170px;"title="⑴含有色情，暴力，恐怖内容。⑵具有广告性质。⑶含有反动内容。⑷含有人身攻击内容。⑸含有违背伦理道德内容。⑹具有恶意，无聊，灌水性质。⑺涉及违法犯罪的内容。⑻其它违反法律的内容。"  disabled="disabled" ></td>
                    <td style="width:144px">拦截</td>
                    <td style="width:131px">系统管理员</td>
                    <td style="width:88px">已处理</td>
                </tr>
            </table>

            <div>
                <div style="float: left;line-height: 36px;margin-left: 14px;"><input type="checkbox" placeholder="" class="checkAll" ng-model="m"></div>
                <div style="float: left;line-height: 36px;margin-left: 10px;" class="checkAll"> 全选  &nbsp;删除</div>
            </div>
        </div>

        <div style="position: relative;left:300px;top:650px;font-size: 16px;font-family:'黑体';color:#fff;">

            <p style="color:#333;position: relative;top: 20px;left: 80px;font-size:13px;font-family: '黑体'">共2页&nbsp; 1&nbsp; 2&nbsp; 上一页&nbsp; 下一页</p>
        </div>
    </div>

</div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        $("#Selected").click(function(){
            var oldType= $(this).val();
            if("block" == $("#ddoli").css("display")){
                $("#ddoli").hide();
            }else{
                $("#ddoli").show();
            }
        });

        $("#ddoli>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected>span").html($(this).html());
                type= $(this).html();
                $("#ddoli").hide();
                if(oldType!=type){
                    //状态显示
                    var value=state;
                    var currentPage=$("#totalNum").val();
                    var newsType=type;
                    var systemId=system;
                    reMovePage(currentPage);
                    $("#currentPage").val(1);
                    pagingSreach(value,newsType,systemId);
                }


            });
        });

        $("#Selected").blur(function(){
            $("#ddoli").hide();
        });
        $("#Selected2").click(function(){
            oldSystem=$(this).text();
            if("block" == $("#ddoli2").css("display")){
                $("#ddoli2").hide();
            }else{
                $("#ddoli2").show();
            }
        });

        $("#ddoli2>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected2>span").html($(this).html());
                system= $(this).html();
                $("#ddoli2").hide();
                if(oldSystem!=system){
                    //状态显示
                    var value=state;
                    var currentPage=$("#totalNum").val();
                    var newsType=type;
                    var systemId=system;
                    reMovePage(currentPage);
                    $("#currentPage").val(1);
                    pagingSreach(value,newsType,systemId);
                }
            });
        });

        $("#Selected2").blur(function(){
            $("#ddoli2").hide();
        });

    });
</script>
</body>
</html>
