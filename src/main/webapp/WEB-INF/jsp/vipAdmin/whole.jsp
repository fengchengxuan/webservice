<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>全部会员</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="${ctx}/static/background/css/top.css">
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <!--引用会员管理样式-->
    <link rel="stylesheet" href="${ctx}/static/background/css/Guest.css" type="text/css">
    <style>
        .35{
            background: #3eb7f3;
        }
        .select_model{    margin-left: 10px;
            height: 42px;
            position: relative;

        }
        .select_model{
            position: relative;
        }
        .Selected{border-radius: 3px;
            padding-left: 4px;
            border: 1px solid #ccc;
            height: 24px;
            line-height: 20px;
            cursor: pointer;
            text-align: center;
            font-size: 12px;
        }
        .Selected{
            width: auto;
            height: 26px;
            line-height: 22px;
            cursor: pointer;
            text-align: center;
            font-size: 12px;

        }
        .ddoli{
            position: absolute;
            left: 0;
        }
        .ddoli{
            position: absolute;
            left: 0;
            z-index: 5;
        }
        .ddoli ul {
            border: 1px solid #ccc;
            border-top: none;
            border-radius: 4px;
        }
        .ddoli ul li{
            width: 100px;
            cursor: pointer;
            height: 30px;
            line-height: 30px;
            text-align: center;
            background: #ffffff;
            color: #666;
            font-size: 12px;
            border-top: 1px solid #ccc;
            padding: 0 10px;
        }

        .ddoli ul li:hover{
            background: #24a1ee;
            color: #ffffff;
        }
        .contener .admlistbox{
            padding-bottom: 25px;
        }


        #link-mod{
            width: 100%;
            height: 800px;
            background: rgba(0,0,0,0.3);
            position: fixed;
            top:0;left:0;
            z-index: 9;
        }
        .link-mod-1{
            width: 554px;
            height: 410px;
            background: white;
            margin:100px auto 0 auto;
        }
        .link-mod-1>div img{
            cursor: pointer;
        }

        .link-mod-1  .linkname-box{
            position: relative;top: 10px;
        }
        .linkname-box>div{
            float: left;
        }
        .linkname{
            margin-left: 40px;
            width: 110px;
            height: 30px;
            line-height: 30px;
            text-align: right;
        }
        .linkname-box input{
            padding-left: 5px;
            width: 320px;
            height: 30px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin-left: 10px;
        }

        .link-b-t input{
            width: 120px;
            height: 30px;
            background: #1b95d3;
            color: white;
            cursor: pointer;
            border-radius: 3px;
            border: 0;
            margin:60px 0 0 220px;
        }

    </style>

</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=false;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox" style="height: 1200px;">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>会员管理</span>
            <span>></span>
            <span>全部会员</span>
        </div>
        <!-- 内部内容 -->

        <div class="inner inner-1" style=" width: 980px;height: 70px;
            background-color: white;">
            <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;全部会员</div>

        </div>

        <div class="inner inner-2" style=" width: 980px;height: 1300px;
            background-color: white;position: relative;top: -10px">
            <ul style="color:white;">
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #1993d4;width: 90px;">序号</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background:#1993d4;border-left: 1px solid #125ed4;width:91px">
                    <label>
                    <select class="vip-select" id="userType" style="width: 91px;padding-left: 18px">
                        <option value="用户类型">用户类型</option>
                        <option value="手机用户">手机用户</option>
                        <option value="邮箱用户">邮箱用户</option>
                        <option value="匿名用户">匿名用户</option>
                    </select>
                    </label>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #1993d4;border-left: 1px solid #125ed4;width:144px">用户昵称/ID</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #1993d4;border-left: 1px solid #125ed4;width:197px">注册时间</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background:#1993d4;border-left: 1px solid #125ed4;width:144px">用户所在地区</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #1993d4;border-left: 1px solid #125ed4;width:197px">
                    <label>
                    <select style="border: 0;width: 170px;padding-left: 28px;" id="dimension" >
                        <option style="display: block;">用户在本站维度</option>
                        <option style="display: block;">订单</option>
                        <option style="display: block;">新闻评价</option>
                        <option style="display: block;">文章评价</option>
                        <option style="display: block;">咨询</option>
                    </select>
                    </label>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #1993d4;border-left: 1px solid #125ed4;width:107px">
                    <label>
                    <select style="border: 0;width: 107px;padding-left: 25px;" id="state">
                        <option style="display: block;">用户状态</option>
                        <option style="display: block;">正常</option>
                        <option style="display: block;">拦截</option>
                        <option style="display: block;">删除</option>
                        <option style="display: block;">注销</option>
                    </select>
                    </label>
                </li>
            </ul>

            <div style="width: 980px;height: 360px;">
                <ul>
                    <li style="width: 980px;height: 42px;display: block"></li>
                </ul>
                <table style="border: 0;margin: 0;padding: 0;text-align: center;font-family: '微软雅黑',sans-serif;font-size: 12px;" id="Ulist">
                    <tr style="height: 10px;background: #fff"></tr>
                </table>

                <div>
                    <div style="float: left;line-height: 36px;margin-left: 14px;"><input type="checkbox"id="checkAll" class="checkAll" placeholder=""></div>
                    <div style="float: left;line-height: 36px;margin-left: 10px;" class="checkAll" >
                        <span style="margin:0 10px;" >全选</span>
                        <span><a href="javascript:void(null)" onclick="deleteOrder()">删除</a></span></div>
                </div>
            </div>
            <div  class="link-b-t" style="clear: both">
                <input type="submit" value="添加" onclick="hidetext()" style="margin:10px 0 20px 344px;position: relative;z-index: 3">
                <input type="submit" value="修改" onclick="hidetext()" style="margin:-50px 0 20px 508px;">
            </div>
            <div style="position: relative;left:392px;top:0;font-size: 16px;font-family:'黑体',sans-serif;color:#fff;">
                <input type="hidden" id="currentPage"/>
                <span id="totalNum" >共1页</span>&nbsp;
                &nbsp;
                <span id="oldPage"><a href =javascript:void(null)>上一页</a></span>
                <span id="nextPage"><a href =javascript:void(null)>下一页</a></span>
            </div>
        </div>
    </div>
</div>


<div id="link-mod" style="display: none;">
    <div class="link-mod-1">
        <div  >
            <img src="${ctx}/static/background/images/x.png" alt="" onclick="linkmoddel()" style="margin-left: 520px;">
        </div>
        <div style="height: 15px;clear: both"></div>
        <div class="linkname-box">
            <div class="linkname">
                用户类型
            </div>
            <div class="namei-t">
                <input type="text">
            </div>
        </div>
        <div style="height: 20px;clear: both"></div>
        <div class="linkname-box">
            <div class="linkname">
                用户昵称/ID
            </div>
            <div class="namei-t">
                <input type="text">
            </div>
        </div>
        <div style="height: 20px;clear: both"></div>
        <div class="linkname-box">
            <div class="linkname">
                用户所在地区
            </div>
            <div class="namei-t">
                <input type="text">
            </div>
        </div>
        <div style="height: 20px;clear: both"></div>
        <div class="linkname-box">
            <div class="linkname">
                用户在本站维度
            </div>
            <div class="namei-t">
                <div class="select_model">
                    <div class="Selected" id="Selected"><span style="font-size: 12px">订单</span>&nbsp;<img src="${ctx}/static/background/images/right-l2.png" alt="下拉"></div>
                    <div style="display: none" class="ddoli" id="ddoli">
                        <ul>
                            <li style="border-top: none">订单</li>
                            <li style="border-top: none">新闻评价</li>
                            <li >文章评价评价</li>
                            <li >咨询</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="linkname-box" style="clear: both">
            <div class="linkname">
                用户状态
            </div>
            <div class="namei-t">
                <div class="select_model">
                    <div class="Selected" id="Selected2"><span style="font-size: 12px">正常</span>&nbsp;<img src="${ctx}/static/background/images/right-l2.png" alt="下拉"></div>
                    <div style="display: none" class="ddoli" id="ddoli2">
                        <ul>
                            <li style="border-top: none">正常</li>
                            <li >拦截</li>
                            <li >删除</li>
                            <li >注销</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div  class="link-b-t" >
            <input type="submit" value="确认添加">
        </div>
    </div>
</div>



<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
<script type="text/javascript">
    var list;//会员
    var totalNum;//总页数
    $(document).ready(function () {
        $("#currentPage").val(1);
      $.ajax({
            url : '${ctx}/vip/showAll',
            type : 'POST',
            data :"",
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null && data!=""){
                    totalNum=data.totalNum;
                     list =data.list;
                    $("#totalNum").text("共"+totalNum+"页");   //设值总页数
                    showUser(list,$("#currentPage").val(),totalNum);
                   showpage($("#currentPage").val(),totalNum)
                }
            }
        })
    })
    function showUser(list,currentPage,totalNum){
        $("#Ulist").empty();
        $("#Ulist").append("<tr style=\"height: 10px;background: #fff\"></tr>");
        var i=(currentPage-1)*20;
        if(currentPage==totalNum){
            for(i;i<list.length;i++){
                var j=i+1;
                var row="<tr style=\"width: 980px;\">" +
                    "<td style=\"width: 45px;\"><input type=\"checkbox\" value=\""+list[i].userId+"|"+list[i].userType+"\" name=\"subBox\" readonly=\"readonly\" placeholder=\"\"></td>" +
                    "<td style=\"width: 45px;\">"+j+"</td>" +
                    "<td style=\"width: 92px;\">"+list[i].userType+"</td>"+
                    "<td style=\"width:145px\">"+list[i].loginName+"</td>"+
                    "<td style=\"width:198px\">"+list[i].registered+"</td>" +
                    "<td style=\"width:145px\">"+list[i].home+"</td>" +
                    "<td style=\"width:208px;\">"+list[i].dimension+"</td>" +
                    "<td style=\"width:103px\">"+list[i].state+"</td>"+
                    "</tr>";
                $("#Ulist").append(row);
            }
        }else if(currentPage<totalNum && currentPage>0){
            var end=i+20;
            for(i;i<end;i++){
                var j=i+1;
                var row="<tr style=\"width: 980px;\">" +
                    "<td style=\"width: 45px;\"><input type=\"checkbox\" value=\""+list[i].userId+"|"+list[i].userType+"\" name=\"subBox\" readonly=\"readonly\" placeholder=\"\"></td>" +
                    "<td style=\"width: 45px;\">"+j+"</td>" +
                    "<td style=\"width: 92px;\">"+list[i].userType+"</td>" +
                    "<td style=\"width:145px\">"+list[i].loginName+"</td>" +
                    "<td style=\"width:198px\">"+list[i].registered+"</td>" +
                    "<td style=\"width:145px\">"+list[i].home+"</td>" +
                    "<td style=\"width:208px;\">"+list[i].dimension+"</td>" +
                    "<td style=\"width:103px\">"+list[i].state+"</td>"+
                    "</tr>";
                $("#Ulist").append(row);
            }
        }
        //+"|"
        for(var j=1;j<=$("#Ulist").find("tr").length ;j++) {
            if (j % 2 != 0) {
                $("#Ulist").find("tr:eq(" + j + ")").css("background-color", "#cccccc");
            } else {
                $("#Ulist").find("tr:eq(" + j + ")").css("background-color", "#fffaff");
            }
        }
    }
    //显示页码数  (根据当前页的在总页数的位置显示)
    function showpage(currentPage,totalNum){ //当前页  总页数
        if(currentPage<5){
            for( var i=1;i<=totalNum;i++){
                $("#nextPage").before("<span id=\"page"+i+"\"><a href =javascript:void(null) onclick=\"otherPages("+i+")\" >"+i+"</a></sqan>");
                if(i>10){
                    return;
                }
            }
        }else if(currentPage>=5 && currentPage<totalNum-4){
            var i=currentPage-4;
            for(i;i<=totalNum;i++){
                $("#nextPage").before("<span id=\"page"+i+"\"><a  href =javascript:void(null) onclick=\"otherPages("+i+")\" >"+i+"</a></sqan>");
                if(i>10){
                    return;
                }
            }
        }else if(currentPage>=totalNum-4 && currentPage<=totalNum){
            var i=totalNum-10;
            for(i;i<=totalNum;i++) {
                if( i >0){
                    $("#nextPage").before("<span id=\"page" + i + "\"><a  href =javascript:void(null) onclick=\"otherPages(" + i + ")\">" + i + "</a></sqan>");
                }
            }
        }
        $("#page"+currentPage).find("a").css("color","red");
    }
    //删除页码
    function reMovePage(currentPage){
        if(currentPage<5){
            for( var i=1;i<=totalNum;i++){
                $("#page"+i).remove();
                if(i>10){
                    return;
                }
            }
        }else if(currentPage>=totalNum-4 &&currentPage<=totalNum){
            var i=totalNum-10;
            for(i;i<=totalNum;i++){
                $("#page"+i).remove();            }
        }
        else if(currentPage>=5 && currentPage<totalNum-4){
            var i=currentPage-4;
            for(i;i<=totalNum;i++){
                $("#page"+i).remove();
                if(i>10){
                    return;
                }
            }
        }
    }
    //点击页码
    function otherPages(data) { //当前页的值
        var currentPage=data;
        $("#currentPage").val(currentPage);
        reMovePage(currentPage);
        showUser(list,currentPage,totalNum);
        showpage(currentPage,totalNum);
    }
    //上一页
    $("#oldPage").click(function () {
        var currentPage= $("#currentPage").val();  //取当前页码
        var nextPage=currentPage-1;               //上一页的数
        if(currentPage>1){
            reMovePage(currentPage);
            showpage(nextPage,totalNum);
            showUser(list,nextPage,totalNum);
            $("#currentPage").val(nextPage);
        }else if(currentPage==1){
            alert("这里是首页哦！！！！");
        }
    });
    //下一页
    $("#nextPage").click(function () {
        var currentPage= $("#currentPage").val();
        var nextPage=parseInt(currentPage)+parseInt(1);
        if(currentPage<totalNum){
            reMovePage(currentPage);
            showpage(nextPage,totalNum);
            showUser(list,nextPage,totalNum);
            $("#currentPage").val(nextPage);
        }else if(currentPage==totalNum){
            alert("已经是最后一页了.");
        }
    });
    $("#userType").change(function (){

        showSomeUser()
    })
    $("#dimension").change(function (){
        showSomeUser()
    })
    $("#state").change(function (){
        showSomeUser()
    })
    function showSomeUser(){
        reMovePage( $("#currentPage").val());
    $.ajax({
        url : '${ctx}/vip/showSome',
        type : 'POST',
        data :"type="+$("#userType").val()+"&dimension="+ $("#dimension").val()+"&state="+ $("#state").val(),
        async:true,
        cache:false,
        dataType : 'json',
        success : function(data) {
            if(data!=null && data!=""){
                totalNum=data.totalNum;
                list =data.list;
                reMovePage( $("#currentPage").val());
                $("#totalNum").text("共"+totalNum+"页");
                showUser(list,$("#currentPage").val(),totalNum);
               showpage($("#currentPage").val(),totalNum)
            }
        }
    })
    }
    $("#checkAll").click(function () {
        var clickFlat= $("#checkAll").is(':checked');
        if(clickFlat){

            $("#Ulist").find("input[type='checkbox']").prop("checked",true);
        }else{
            $("#Ulist").find("input[type='checkbox']").prop("checked",false);
        }
    });
    //---------------删除
    function deleteOrder(){
        var checkboxAll=$("#Ulist").find("input[type='checkbox']:checked");
        if(checkboxAll == null || checkboxAll.length<1){
            alert("请选择一行");
            return ;
        }
        if(confirm("是否要删除勾选部分")){
            var list=[];
            var proId;
            for(var i=0;i<checkboxAll.length;i++){
                proId= checkboxAll[i].value;
                list.push(proId);
            }
            $.ajax({
                url : '${ctx}/vip/deleteAll',
                type : 'POST',
                data : "list="+list,
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if (data != null && data != ""){
                        if(data.vip_management){
                            var url=window.location.href;
                            window.location.href=url;
                        }else{
                            alert("您的权限不够")
                        }
                    }
                }
            });
        }
    }
</script>
<script>
    function hidetext()
    {
        var mychar = document.getElementById("link-mod").style.display ="block";

    }
    function linkmoddel()
    {
        var mychar = document.getElementById("link-mod").style.display ="none";

    }
</script>
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
            var oldType= $(this).val();
            if("block" == $("#ddoli2").css("display")){
                $("#ddoli2").hide();
            }else{
                $("#ddoli2").show();
            }
        });

        $("#ddoli2>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected2>span").html($(this).html());
                type= $(this).html();
                $("#ddoli2").hide();
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

        $("#Selected2").blur(function(){
            $("#ddoli2").hide();
        });

    });
</script>
</body>
</html>
