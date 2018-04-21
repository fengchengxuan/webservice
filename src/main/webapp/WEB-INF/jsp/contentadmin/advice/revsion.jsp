<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>修改咨询</title>
     <link rel="stylesheet" href="${ctx}/static/front/css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="${ctx}/static/background/css/top.css">
    <link rel="stylesheet" href="${ctx}/static/background/css/navstyle.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/advice.css" type="text/css">
    <style>
        .inner-revision{
            width: 980px;height: 1000px;
            background-color: white;position: relative;top: -10px;float:left;
        }
        .contentbox select {
            -webkit-appearance: none;
            background: url(${ctx}/static/background/images/Arrow.jpg) no-repeat scroll right center transparent;
        }
        .contentbox .inner .navbox .save,.exit{
            border: none;
            border-radius:6px;
            width: 91px;
            height: 36px;
            color: white;
            background-color: #1893D3;
        }

        .contentbox .inner .navbox .btnbox{
            margin: 125px 0 0 260px;
        }
        .contentbox .inner .navbox .exit{
            margin: 0 0 0 90px;
        }
        .contentbox .inner .navbox .nav-create{
            width: 406px;
            height: 31px;
            border-radius: 6px;
            margin: 0 0 0 30px;
            border: 1px solid #ccc;
        }
        .contentbox .inner .navbox .nav-create option{
            font-size: 12px;
            font-family: "微软雅黑",sans-serif;
            color: #333333;

        }
        .contentbox .inner .navbox .cnavbtn{
            width: 134px;
            height: 40px;
            background-color: #24a1e4;
            border-radius: 4px;
            color: white;
            font-family: "微软雅黑",sans-serif;
            font-size: 14px;
            border: none;
            letter-spacing: 1px;
        }
        .contentbox .inner .navbox .stext {
            color: #F70707;
            font-family: "微软雅黑",sans-serif;
            font-size: 12px;

        }
        .contentbox .inner .navbox .c-input,.key-input,.nsetnav-input{
            width: 406px;
            height: 39px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        .contentbox .inner .navbox .c-input{
            margin: 14px 0 0 166px;
        }
        .contentbox .inner .navbox .key-input{
            margin: 14px 0 0 30px;
        }
        .contentbox .inner .navbox .nsetnav-input{
            margin: 14px 0 0 36px;
        }
        .contentbox .inner .navbox .cnav-title .cntitle{
            font-family: '微软雅黑',sans-serif;
            font-size: 14px;
            color:#333333;
            position: relative;
            top:-30px;
        }
        .contentbox .inner .navbox .disc .disctitle{
            font-family: '微软雅黑',sans-serif;
            font-size: 14px;
            color:#333333;
            position: relative;
            top:-30px;
        }
        .contentbox .inner .navbox .statesel{
            height: 24px;
            border-radius: 4px;
            margin: 0 0 0 40px;
            border: 1px solid #ccc;
        }
        .contentbox .inner .navbox .opsonselect{
            border-radius: 4px;
            margin: 0 0 0 -3px;
            border: 1px solid #ccc;height: 24px;
        }
        .contentbox .top span{
            color: #656565;
            font-family: "微软雅黑",sans-serif;
            font-size: 8px;

        }
    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=false;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=false;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span style="cursor: pointer;">当前位置</span>
            <span>></span>
            <span style="cursor: pointer;">内容管理</span>
            <span>></span>
            <span style="cursor: pointer;">咨询管理</span>
            <span>></span>
            <span style="cursor: pointer;">修改咨询</span>
        </div>
        <!--标题-->
        <div class="inner inner-1" style=" width: 980px;height: 70px;
            background-color: white;">
            <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;修改咨询</div>

        </div>
        <!-- 内部内容 -->
        <div class="inner inner-revision" >
            <div style="margin:30px 0 0 120px"><span style=" letter-spacing: 10px "> 编&nbsp;&nbsp; 号</span><input type="text" placeholder="FC001" style="width: 406px;height: 25px;border: 1px solid #ccc;border-radius:6px; " ><span style="color: red;margin-left: 10px;">编号一旦生成不可修改</span></div>
            <div style="margin:30px 0 0 120px"><span style=" letter-spacing: 10px ">用 &nbsp;&nbsp;户</span><label><select style="border-radius: 6px;width: 135px;height: 27px;-webkit-appearance: none;border: 1px solid #ccc;"><option>来宾户</option><option>会员户</option></select></label><span style="color: red;margin-left: 10px;">编号一旦生成不可修改</span></div>
            <div style="margin:30px 0 0 120px"><span style=" letter-spacing:2px">咨 询 类 型 </span> <label><select style="border-radius: 6px;width: 135px;height: 27px;border: 1px solid #ccc;"><option>售前</option><option>售后</option><option>保障</option></select></label><span style="color: red;margin-left: 10px;">编号一旦生成不可修改</span></div>
            <div style="margin:30px 0 0 120px"><span style=" letter-spacing:2px;position: relative;top: -33px">咨 询 问 题 </span>  <textarea placeholder="" style="max-width: 406px;max-height: 87px;width:406px;height: 87px;border-radius: 6px;border: 1px solid #ccc;"></textarea><span style="position: relative;top: -33px;color: red;margin-left: 10px;">可修改用户咨询的问题</span></div>
            <div style="margin:30px 0 0 120px"><span style=" letter-spacing:2px ">咨 询 时 间 </span>  <input type="text" placeholder="2017年7月1日10：36" style="width: 406px;height: 25px;border: 1px solid #ccc;border-radius:6px; " > <span style="color: red;margin-left: 10px;">不可修改咨询时间</span></div>
            <div style="margin:30px 0 0 120px"><span style=" letter-spacing:2px ">回 复 时 间 </span>  <input type="text" placeholder="2017年7月1日10：36" style="width: 406px;height: 25px;border: 1px solid #ccc;border-radius:6px; " > <span style="color: red;margin-left: 10px;">不可修改回复时间</span></div>
            <div style="margin:30px 0 0 120px"><span style=" letter-spacing:2px ">咨 询 状 态 </span> <label><select style="border-radius: 6px;width: 135px;height: 27px;border: 1px solid #ccc;"><option>    系统管理员</option></select></label> <span style="color: red;margin-left: 10px;">不可修改</span></div>
            <div style="margin:30px 0 0 120px"><span style=" letter-spacing:2.3px ">咨询处理人
        </span>
                <label>
                <select style="border-radius: 6px;width: 135px;height: 27px;border: 1px solid #ccc;">
                    <option>  系统管理员</option>
                    <option>  运营管理员</option>
                    <option>  普通管理员</option>
                    <option>  编辑管理员</option>
                </select>
                </label>
                <span style="color: red;margin-left: 10px;">不可修改</span></div>
            <div style="margin:30px 0 0 120px"><span style=" letter-spacing:2px ">已 达 咨 询 </span>
                <label>
                <select style="border-radius: 6px;width: 135px;height: 27px;border: 1px solid #ccc;">
                    <option>    已处理</option>
                    <option>    未处理</option>
                </select>
                </label>
                <span style="color: red;margin-left: 10px;">不可修改</span></div>
            <div style="margin:30px 0 0 120px"><span style=" letter-spacing:2px;position: relative;top: -33px ">咨 询 问 题 </span><textarea placeholder="" style="max-width: 406px;max-height: 87px;width:406px;height: 87px;border-radius: 6px;border: 1px solid #ccc;"></textarea><span style="position: relative;top: -33px;color: red;margin-left: 10px;">可修改用户咨询的问题</span></div>
            <div style="margin:30px 0 0 120px"><span style="  "> 咨询处理结果 </span><input  type="text" placeholder="" style="width: 406px;height: 25px;border: 1px solid #ccc;border-radius:6px; " value="FC001" onfocus="this.value=''" onblur="if(this.value==''){this.value='FC001'}"><span style="color: red;margin-left: 10px;">编号一旦生成不可修改</span></div>

            <div style="width: 980px;height: 360px;">
                <div>
                </div>
                <button style="margin:80px 0 0 260px;width:166px;height: 40px; border-radius:6px;border: 0;color:#fff;background: rgb(0,160,65);">选中订单修改</button>
                <button style="margin:80px 0 0 110px;width:166px;height: 40px; border-radius:6px;border: 0;color:#fff;background: rgb(0,160,65);">批量选中订单修改</button>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>
