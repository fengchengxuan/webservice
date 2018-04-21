<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>文章评价</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <style>
        .list27{
            background: #3eb7f3;
        }
        .contener .inner .darbtnbox button{
            width: 110px;
            height: 36px;
        }

        .artable{
            width: 980px;
        }
        table{
            border-collapse: collapse;
        }
        th,td{
            padding: 0;
        }

        tr:nth-of-type(even){
            background: #F5F5F5;
            height: 40px;
            text-align: center;
        }
        tr:nth-of-type(odd){
            background: #fff;
            height: 50px;
        }
        input:nth-of-type(odd){
            border: 0;background: #fff;
        } /*弹框*/
        .modal .draftartbox div{
            margin-left: 90px;
            margin-top: 18px;
        }
        .modal .draftartbox input,.modal .draftartbox textarea,.draftartbox select{
            border-radius: 6px;
            border: 1px solid #ccc;
            margin-left: 18px;
        }
        .modal .draftartbox textarea{
            max-width:341px;
            max-height:89px;
            width:341px;
            height:89px;
        }
        .modal .draftartbox input{
            width: 342px;
            height: 28px;
            color: #666;
            position: relative;
        }
        .modal .draftartbox select{
            width:115px;
            height: 25px;
        }
        .modal p{
            color: red;
            font-size: 10px;
            margin: 5px 0 0 33px;

            position: relative;
            left: 31px;
        }
        .modal .draftartbox span{
            text-align:justify;
            text-align-last:justify;
        }
        .modal .draftartbox span{
            line-height:0;
            width: 102px;
            text-align: right;
            display: block;
            margin-top: 8px;
        }
        .modal .draftartbox-left{
            width: 232px;
            height: 30px;
            display: block;
            float: left;
        }
        .p{
            position: relative;
            /*left: 370px;*/
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
            border-left:1px solid #2090cc;
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
            text-align: center;
            background: #ffffff;
            color: #666;
            font-size: 14px;
            border-top: 1px solid #ccc;
        }
        #ddoli ul li{
            width: 105px;
        }
        #ddoli2 ul li{
            width: 111px;
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
<div class="contentbox">
    <div class="top">
        <img src="${ctx}/static/background/images/FZ.png" alt="">
        <span>当前位置</span>
        <span>></span>
        <a href="${ctx}/admin/hyperchannel">  <span>订单管理</span></a>
        <span>></span>
        <a href="${ctx}/admin/allorder"> <span>我的全部评价</span></a>
        <span>></span>
        <span>文章评价</span>

    </div>
    <div class="inner" style="height: 1126px">
        <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;文章评价</div>
        <div class="draftart-top">
            <button class="keywords">关键词</button>
            <input style="width: 269px" type="text" placeholder="例如：体验名额、开放、中小型企业">
            <button class="key-search">搜索</button>
            <button class="search-title">标题搜索</button>
            <input style="width: 283px" type="text" placeholder="例如：我们与峰程的故事">
            <button class="title-search">搜索</button>
        </div>
        <div class="draftartbox">
            <table class="artable">
                <thead>
                <tr>
                <th style="width: 62px;">序号</th>
                <th style="width: 147px;border-left: 1px solid  #24a1e4">文章标题</th>
                <th style="width: 107px;border-left: 1px solid  #24a1e4">
                    <div class="select_model">
                        <div class="Selected" id="Selected"><span>用户类型</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli">
                            <ul>
                                <li style="border-top: none">来宾户</li>
                                <li >会员户</li>
                                <li >用户类型</li>
                            </ul>
                        </div>
                    </div>
                </th>
                <th style="width: 105px;border-left: 1px solid  #24a1e4">用户昵称/ID</th>
                <th style="width: 155px;border-left: 1px solid  #24a1e4">评价语</th>
                <th style="width: 113px;border-left: 1px solid  #24a1e4">
                    <div class="select_model">
                        <div class="Selected" id="Selected2"><span>评价类型</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli2">
                            <ul>
                                <li style="border-top: none;color: #333">好评</li>
                                <li>中评</li>
                                <li>差评</li>
                            </ul>
                        </div>
                    </div>
                </th>
                <th style="width: 103px;border-left: 1px solid  #24a1e4">评价状态</th>
                <th style="width: 109px;border-left: 1px solid  #24a1e4">处理方式</th>
                </tr>
                </thead>
                <tbody id="showComment">
                <tr style="height: 10px;"><td></td></tr>
                <%--<tr>--%>
                    <%--<td><input type="checkbox" placeholder="" ng-checked="m" style="position: relative;top: 2px;">1</td>--%>
                    <%--<td style="width:147px;"><input type="text" value="飞燕轻便系列防水防..." title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="background: #f5f5f5"></td>--%>
                    <%--<td>会员客户</td>--%>
                    <%--<td>fc7080</td>--%>
                    <%--<td>还赠送一个鼠标垫及...</td>--%>
                    <%--<td>好评</td>--%>
                    <%--<td>正常</td>--%>
                    <%--<td>删除</td>--%>
                <%--</tr>--%>
                </tbody>

            </table>
            <div>
                <div style="float: left;line-height: 36px;margin-left: 14px;"><input type="checkbox" placeholder=""onclick="clickAll()" id="checkAll" class="checkAll" ng-model="m"></div>
                <div style="float: left;line-height: 36px;margin-left: 10px;" class="checkAll"> 全选  &nbsp;<a href=javascript:void(null) onclick="deleteAll()">删除</a></div>
            </div>

            <div class="darbtnbox">
                <button class="thisfresh" data-toggle="modal" data-target="#myModapl2">添加</button>
                <button class="allfresh" >修改</button>
            </div>
            <div class="darpages">
                <input type="hidden" id="currentPage"/>
                <span id="totalNum"></span>&nbsp;
                &nbsp;
                <span id="oldPage"><a href =javascript:void(null)>上一页</a></span>
                <span id="nextPage"><a href =javascript:void(null)>下一页</a></span>
            </div>
        </div>
    </div>
</div>
    </div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
<script>
var   newUserType;
var  newCommontType="好评";
    $(document).ready(function () {
        $("#Selected").click(function(){
            oldUserType= $(this).val();
            if("block" == $("#ddoli").css("display")){
                $("#ddoli").hide();
            }else{
                $("#ddoli").show();
            }
        });
        $("#ddoli>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected>span").html($(this).html());
                newUserType= $(this).html();
                changeShow(newUserType,newCommontType)
                $("#ddoli").hide();
            });
        });

        $("#Selected").blur(function(){
            $("#ddoli").hide();
        });
        $("#Selected2").click(function(){
            if("block" == $("#ddoli2").css("display")){
                $("#ddoli2").hide();
            }else{
                $("#ddoli2").show();
            }
        });

        $("#ddoli2>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected2>span").html($(this).html());
                newCommontType=$(this).html();
                 changeShow(newUserType,newCommontType);
                $("#ddoli2").hide();
            });
        });

        $("#Selected2").blur(function(){
            $("#ddoli2").hide();
        });

    });
    var obj;//返回的列表
    $(document).ready(function () {
        $("#currentPage").val(1);
        $.ajax({//文章评价
            url : '${ctx}/admin/fcOrDateComment',
            type : 'POST',
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null &&data !=""){
                    obj=data.atrCommentsList;
                    $("#totalNum").text("共"+data.totalNum+"页");   //设值总页数
                    $("#totalNum").val(data.totalNum);
                    showComment( $("#currentPage").val(), $("#totalNum").val());
                }
            }
        });
    })
    function showComment(currentPage,totalNum) {
        var oldCurrentPage=$("#currentPage").val();
        $("#page"+oldCurrentPage).remove();
   $("#showComment").empty();
   $("#showComment").append("<tr style=\"height: 10px;\"><td></td></tr>");
        var i=(currentPage-1)*20;        //每页显示20条数据
        if(currentPage==totalNum){
         for( i;i<obj.length;i++){
             var    commenter
             var  commontType;
             if(obj[i].commenter=="0"){
                 commenter="会员户";
             }else{
                 commenter="来宾户";
             }
             if(obj[i].commontType=="0"){
                 commontType="好评";
             }else if(obj[i].commontType=="1"){
                 commontType="中评";
             }else if(obj[i].commontType=="2"){  commontType="差评";}

             var j = i + 1;
        var row=" <tr><td><input type=\"checkbox\" value='"+obj[i].id+"' placeholder=\"\" ng-checked=\"m\" style=\"position: relative;top: 2px;\">"+j+"</td>" +
        "<td style=\"width:147px;\"><input type=\"text\" value="+obj[i].artTitle+" title=\"飞燕轻便系列防水防尘键盘鼠标新品上市\"  disabled=\"disabled\" style=\"background: #f5f5f5\"></td>" +
        "<td>"+commenter+"</td><td>"+obj[i].user+"</td><td>"+obj[i].content+"</td>" +
        "<td>"+commontType+"</td><td>"+obj[i].status+"</td><td><a href=javascript:void(null) onclick=\"deleteComment('"+obj[i].id+"')\">删除</a></td></tr>"
        $("#showComment").append(row);
       }
        }else if(currentPage!=totalNum&&currentPage<totalNum){
            var strip=i+20;
            for( i;i<strip;i++){
                var j = i + 1;
                var    commenter
                var  commontType;
                if(obj[i].commenter=="0"){
                    commenter="会员户";
                }else {
                    commenter="来宾户";
                }
                if(obj[i].commontType=="0"){
                    commontType="好评";
                }else if(obj[i].commontType=="1"){
                    commontType="中评";
                }else if(obj[i].commontType=="2"){  commontType="差评";}
                var row=" <tr><td><input type=\"checkbox\" value='"+obj[i].id+"' placeholder=\"\" ng-checked=\"m\" style=\"position: relative;top: 2px;\">"+j+"</td>" +
                    "<td style=\"width:147px;\"><input type=\"text\" value="+obj[i].artTitle+" title=\"飞燕轻便系列防水防尘键盘鼠标新品上市\"  disabled=\"disabled\" style=\"background: #f5f5f5\"></td>" +
                    "<td>"+commenter+"</td><td>"+obj[i].user+"</td><td>"+obj[i].content+"</td>" +
                    "<td>"+commontType+"</td><td>"+obj[i].status+"</td><td><a href=javascript:void(null) onclick=\"deleteComment('"+obj[i].id+"')\">删除</a></td></tr>"
                $("#showComment").append(row)
            }
         }
        $("#nextPage").before("<span id=\"page" + currentPage + "\">" + currentPage + "</sqan>");
        $("#page"+currentPage).css("color","red");
        }
    //上一页
    $("#oldPage").click(function () {
        var currentPage= $("#currentPage").val();  //取当前页码
        var totalNum=$("#totalNum").val();       //取总页码
        var nextPage=currentPage-1;               //上一页的数
        if(currentPage>1){
            showComment(nextPage,totalNum);

        }else if(currentPage==1){
            alert("这里是首页哦！！！！");
        }
    });
    //下一页
    $("#nextPage").click(function () {
        var currentPage= $("#currentPage").val();
        var totalNum=$("#totalNum").val();
        var nextPage=parseInt(currentPage)+parseInt(1);
        if(currentPage<totalNum){
            showComment(nextPage,totalNum);

        }else if(currentPage==totalNum){
            alert("已经是最后一页了。");
        }
    });
function clickAll() {
    var clickFlat= $("#checkAll").is(':checked');
    if(clickFlat){
        $("#showComment").find("input[type='checkbox']").prop("checked",true);
    }else{
        $("#showComment").find("input[type='checkbox']").prop("checked",false);
    }
}
function changeShow(newUserType,newCommontType){
    if(newUserType=="会员户"){
        newUserType="0";
    }else if(newUserType=="来宾户"){
        newUserType="1";
    }else{
        newUserType="";
    }
    if(newCommontType=="好评"){
        newCommontType="0";
    }else if(newCommontType=="中评"){
        newCommontType="1";
    }else if(newCommontType=="差评"){
        newCommontType="2";
    }
    $.ajax({//文章评价
        url : '${ctx}/admin/changeShowArticle',
        type : 'POST',
        data:"artType=2&userType="+newUserType+"&commontType="+newCommontType,
        async:true,
        cache:false,
        dataType : 'json',
        success : function(data) {
            if(data!=null &&data !=""){

                obj=data.atrCommentsList;
                $("#totalNum").text("共"+data.totalNum+"页");   //设值总页数
                $("#totalNum").val(data.totalNum);
                showComment( $("#currentPage").val(), $("#totalNum").val());
            }
        }
    });
}
//全删除
function deleteAll() {
    var checkboxAll=$("#showComment").find("input:checkbox:checked");
    if(checkboxAll==null || checkboxAll.length<1){
        alert("请选择一行");
        return ;
    }
    if(confirm("是否要删除勾选部分")){
        var listId=[];
        var proId;
        for(var i=0;i<checkboxAll.length;i++){
            proId= checkboxAll[i].value;
            listId.push(proId);
        }
        $.ajax({
            url : '${ctx}/admin/deleteAllComment',
            type : 'POST',
            data : "listId="+listId,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
               if(data.ok){
                   alert("删除成功");
                   location.reload();
               }
            }
        });
    }
}
</script>
</body>
</html>



<!--修改新闻评论-->
<div class="modal" id="myModapl4" >
    <div class="modal-dialog" >
        <div class="modal-content" style="width:720px;height: auto;padding-bottom: 20px;">
            <div >
                <button type="button"  class="del" style="background: transparent;color: #009F43;border: 0;position: relative;left: 684px;font-size:25px;">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>
            <div class="modal-body" style="margin-left: 18px;padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;">

                <div class="inner" style="height: auto">
                    <div class="draftartbox">
                        <form action="" method="post">
                            <div><span  class="draftartbox-left" >
                新闻标题</span><input  type="text" placeholder=""  id="changeNewsTitle" readonly = "true">
                            </div>
                            <%--<div>--%>
                <%--<span  class="draftartbox-left" >--%>
                <%--文章标题</span>--%>
                                <%--<input type="text" placeholder="" >--%>
                            <%--</div>--%>

                            <div>
                                <span class="draftartbox-left" style="color:black">用户类型</span>
                                <%--<label>--%>
                                    <%--<select style="font-weight: 400" id="">--%>
                                        <%--<option>会员</option>--%>
                                        <%--<option>来宾</option>--%>
                                    <%--</select>--%>
                                <%--</label>--%>
                              <input type="text" width="30px" id="changeUserType" readonly="true"/>
                              <%--<p style="position: relative;left:150px;top: -24px">可选其中一项</p>--%>
                            </div>
                            <div>
                                <span class="draftartbox-left " style="color:black" >评价类型</span>
                                <label>
                                    <select style="font-weight: 400" id="changeCommontType">
                                        <option value="0">好评</option>
                                        <option value="1">中评</option>
                                        <option value="2">差评</option>
                                    </select>
                                </label>
                                <p style="position: relative;left:150px;top: -24px">可选其中一项</p>
                            </div>

                            <div>
                                <span class="draftartbox-left" >用户昵称/ID</span>
                                <input type="text" placeholder="" style="margin-left: 16px" id="changeUserName" readonly="true">
                            </div>
                            <div>
                                <span class="draftartbox-left" >评价语</span>
                                <textarea placeholder="" id="changeContent"></textarea>
                                <p style="position: relative;left:90px;">当来宾用户或会员用户提供评价为差评时或中评时，都可以随时进行修改并保存。</p>
                            </div>
    <button style="margin:20px 0 0 35px;width:166px;height: 40px;border-radius:6px;border: 0;color:#fff;background: #2196d4;">添加到草稿</button>
                            <input  style="margin:-38px 0 0 235px;width:166px;height: 40px; border-radius:6px;border: 0;color:#fff;background: #2196d4;text-align: center;line-height: 40px" onclick="updateComment()" value="提交"></input></div>
                        </form>
                    </div>


                    <div></div>
                </div>

            </div>

        </div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>

    $(".del").click(function () {

        $('#myModapl4').css('display','none')
    })
    var commentId;
        $(".allfresh").click(function () {
            var checkboxAll=$("#showComment").find("input:checkbox:checked");
            if( checkboxAll.length==1){
                for(var i=0;i<obj.length;i++){
                   if(obj[i].id==checkboxAll.val()){
                        commentId = obj[i].id;
                        $("#changeNewsTitle").val(obj[i].artTitle);
                        var commenter;
                        if(obj[i].commenter=="0"){
                            commenter="会员户"
                        }else {
                            commenter="来宾户";
                        }
                       $("#changeUserType").val(commenter);
                       $("#changeCommontType").val(obj[i].commontType);
                        $("#changeUserName").val(obj[i].user);
                        $("#changeContent").val(obj[i].content);
                    }
                }
            $('#myModapl4').css('display','block')
        }else{
              alert("请选择一行");
              return;
            }
        })
    function updateComment() {

        $.ajax({
            url : '${ctx}/admin/updateComment',
            type : 'POST',
            data : "artCommentId="+commentId+"&commontType="+ $("#changeCommontType").val()+"&content="+ $("#changeContent").val(),
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data.ok){
                    alert("更改成功");
                    location.reload();
                }
            }
        });
    }
    function deleteComment(id) {
        if(!confirm("确认删除吗？")){
            return ;
        }
        $.ajax({
            url : '${ctx}/admin/deleteComment',
            type : 'POST',
            data : "id="+id,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data.ok){
                    alert("删除成功");
                    location.reload();
                }
            }
        });
    }
</script>


