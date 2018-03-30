<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>草稿产品</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/article.css" type="text/css">
    <style>
        .list22{
            background: #3eb7f3;
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
            padding: 6px 0;
            text-align: center;
            background: #ffffff;
            color: #666;
            font-size: 14px;
            border-top: 1px solid #ccc;
        }
        #ddoli ul li{
            width: 95px;
            height: auto;
        }
        #ddoli2 ul li{
            width: 126px;
            height: auto;
        }
        #ddoli3 ul li{
            width: 117px;
            height: auto;
        }
        .ddoli ul li:hover{
            background: #24a1ee;
            color: #ffffff;
        }
        .contener .admlistbox{
            height: auto;
            padding-bottom: 25px;
        }
    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=false;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=false;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <a href="${ctx}/admin/hyperchannel"> <span>产品管理</span></a>
            <span>></span>
            <span>草稿产品</span>

        </div>
        <div class="inner" style="height: 620px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;草稿产品</div>
            <div class="draftart-top">
                <button class="keywords">关键词</button>
                <input style="width: 269px" type="text" placeholder="例如：APP，网站建设，网络营销，网络推广">
                <button class="key-search">搜索</button>
                <button class="search-title">标题搜索</button>
                <input style="width: 283px" type="text" placeholder="">
                <button class="title-search">搜索</button>
            </div>
            <div class="draftartbox">
                <table class="artable">
                    <thead>
                    <tr>
                    <th style="width: 97px;">序号</th>
                    <th style="width: 97px;border-left: 1px solid #057836">
                        <div class="select_model">
                            <div class="Selected" id="Selected"><span>全部类型</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli">
                                <ul>
                                    <li style="border-top: none">全部类型</li>
                                    <li style="line-height: 20px">网站建设/程序/APP研发与定制</li>
                                    <li>网络计划与制定</li>
                                    <li>网络营销</li>
                                    <li>网络推广</li>
                                    <li>网络文案</li>
                                    <li>视频制作与推广</li>
                                    <li>搜索优化</li>
                                    <li>网络媒体</li>
                                    <li>词条/百科</li>
                                    <li>网络运营</li>
                                    <li>数据统计</li>
                                    <li style="line-height: 20px">网络传媒及线上线下各类广告投放</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 141px;border-left: 1px solid #057836">产品标题</th>
                    <th style="width: 128px;border-left: 1px solid #057836">
                        <div class="select_model">
                            <div class="Selected" id="Selected2"><span>管理员</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli2">
                                <ul>
                                    <li style="border-top: none">管理员</li>
                                    <li>系统管理员</li>
                                    <li>运营管理员</li>
                                    <li>普通管理员</li>
                                    <li>编辑管理员</li>

                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 180px;border-left: 1px solid #057836">发布日期</th>
                    <th style="width: 119px;border-left: 1px solid #057836">
                        <div class="select_model">
                            <div class="Selected" id="Selected3"><span>正常</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli3">
                                <ul>
                                    <li style="border-top: none">正常</li>
                                    <li>草稿</li>
                                    <li>已删除</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 112px;border-left: 1px solid #057836">编辑状态</th>
                    <th style="width: 106px;border-left: 1px solid #057836">文章浏览量</th>
                    </tr>
                    </thead>
                    <tbody ng-init="c=false" id="showId">

                    </tbody>
                </table>
                <div class="darbtnbox">
                    <button class="thisfresh" onclick="reFresh()">当前页一键刷新</button>
                    <button class="allfresh" onclick="reFreshAll()">全部产品一键刷新</button>
                </div>
                <div class="darpages">
                    <input type="hidden" id="currentPage"/>
                    <span id="totalNum"></span>&nbsp;
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
        $("#Selected3").click(function(){
            oldState= $(this).text();
            if("block" == $("#ddoli3").css("display")){
                $("#ddoli3").hide();
            }else{
                $("#ddoli3").show();
            }
        });

        $("#ddoli3>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected3>span").html($(this).html());
                state= $(this).html();
                $("#ddoli3").hide();
                if(oldState!=state){
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

        $("#Selected3").blur(function(){
            $("#ddoli3").hide();
        });

    });
</script>
<script type="text/javascript">
    var total;
    var listPro;
  //
    $(document).ready(function () {
        $("#currentPage").val(1);
        var proState=$("#state").val();
        var proType=$("#proType").val();
        var systemId=$("#systemId").val();
        $("#showId").empty();
        pagingSreach(proState,proType,systemId);
    });

    function pagingSreach(state,type,system){
        var proState=state;
        var proType=type;
        var systemId=system;
        $.ajax({
            url : '${ctx}/Product/SearchAll',
            type : 'POST',
            data : "proState="+proState+"&proType="+proType+"&systemId="+system,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null && data!=""){
                    var currentPage= $("#currentPage").val();
                    var list=data.list;
                    var totalNum=data.totalNum;
                    listPro=list;
                    total=totalNum;
                    $("#totalNum").text("共"+totalNum+"页");
                   $("#totalNum").val(totalNum);
                    showPro(currentPage,list,totalNum);
                    showpage(currentPage,totalNum);
                }
            }
        })
    }
    //数据显示
    function showPro(pageData, list,total) {
        $("#showId").empty();
        var currentPage=pageData;
        var list =list;
        var totalNum=total;
        var i=(currentPage-1)*20;
        if(currentPage!=totalNum) {
            var row="<tr style=\"width: 980px;height: 5px\"></tr>";
            $("#showId").append(row);
            var strip=i+20;
            for (i;i < strip ; i++) {
                var j = i + 1;
                var showRow = "<tr style=\"height: 36px;background-color: #F4F4F4 \">" +
                    "<td><input type=\"checkbox\" value=\""+list[i].id+"\" css=\"checkboxCss\" ng-checked=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + j + "</td>" +
                    " <td>" + list[i].proType + "</td>" +
                    "<td>" + list[i].proTitle + "</td>" +
                    "<td>" + list[i].userName + "</td>" +
                    "<td>" + list[i].crateDate + "</td>" +
                    "<td>" + list[i].proState + "</td>" +
                    "<td>" +
                    "<a href=\"javascript:void(null)\" onclick=\"upDate("+i+")\"><span style=\"color: #0D62F0\">修改</span></a>" +
                    "&nbsp;|&nbsp;" +
                    "<a href=\"javascript:void(null)\" onclick=\"deletePro("+i+")\"  ><span style=\"color: #EC2323\">删除</span></a>" +
                    " </td>" +
                    " <td>" + list[i].proBrowser + "</td>" +
                    "</tr>";
                $("#showId").append(showRow);
            }

        }
        if(currentPage==totalNum){
            var row="<tr style=\"width: 980px;height: 5px\"></tr>";
            $("#showId").append(row);
            for(i;i<list.length;i++){
                var j = i + 1;
                var showRow = "<tr style=\"height: 36px;background-color: #F4F4F4\">" +
                    "<td><input type=\"checkbox\" value=\""+list[i].id+"\" css=\"checkboxCss\"  ng-checked=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + j + "</td>" +
                    " <td>" + list[i].proType + "</td>" +
                    "<td>" + list[i].proTitle + "</td>" +
                    "<td>" + list[i].userName + "</td>" +
                    "<td>" + list[i].crateDate + "</td>" +
                    "<td>" + list[i].proState + "</td>" +
                    "<td>" +
                    "<a href=\"javascript:void(null)\" onclick=\"upDate("+i+")\"><span style=\"color: #0D62F0\">修改</span></a>" +
                    "&nbsp;|&nbsp;" +
                    "<a href=\"javascript:void(null)\" onclick=\"deletePro("+i+")\"><span style=\"color: #EC2323\">删除</span></a>" +
                    " </td>" +
                    " <td>" + list[i].proBrowser + "</td>" +
                    "</tr>";
                $("#showId").append(showRow);
            }
        }
        for(var j=1;j<=$("#showId").find("tr").length ;j++){
            if(j%2!=0){
                $("#showId").find("tr:eq("+j+")").css("background-color","#cccccc");
            }else{
                $("#showId").find("tr:eq("+j+")").css("background-color","#fffff7");
            }
        }
        var clickAll="<tr style=\"height: 52px\"><td>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" id=\"clickId\" onclick=\"clickAll()\" " +
            "ng-model=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;全选</td></tr><tr><td><a href=\"javascript:void(null)\" onclick=\"deleteAll()\">删除</a></td></tr>";
        $("#showId").append(clickAll);

    }
    //显示页码
    function showpage(currentPage,totalNum){
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
    }
    //删除页面
    function reMovePage(currentPage){

        var totalNum=$("#totalNum").val();
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
    function otherPages(data) {

        var currentPage=data;
        var list=listPro;
        var totalNum=$("#totalNum").val();
        $("#currentPage").val(currentPage);
        reMovePage(currentPage);
        showPro(currentPage,list,totalNum);
        showpage(currentPage,totalNum);


    }
    //上一页
    $("#oldPage").click(function () {
        var currentPage= $("#currentPage").val();
        var totalNum=$("#totalNum").val();
        var nextPage=currentPage-1;
        if(currentPage>1){
            reMovePage(currentPage);
            showpage(nextPage,totalNum);
            showPro(nextPage,listPro,totalNum);
            $("#currentPage").val(nextPage);

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
            reMovePage(currentPage);
            showpage(nextPage,totalNum);
            showPro(nextPage,listPro,totalNum);
            $("#currentPage").val(nextPage);

        }else if(currentPage==totalNum){
            alert("已经是最后一页了 ");
        }

    });
    //状态显示
    $("#state").change(function () {
        var value=$("#state").val();
        var currentPage=$("#totalNum").val();
        var proType=$("#proType").val();
        var systemId=$("#systemId").val();
        reMovePage(currentPage);
        $("#currentPage").val(1);
        pagingSreach(value,proType,systemId);

    });
    //类型显示
    $("#proType").change(function () {
        var value=$("#state").val();
        var currentPage=$("#totalNum").val();
        var proType=$("#proType").val();
        var systemId=$("#systemId").val();
        reMovePage(currentPage);
        $("#currentPage").val(1);
        pagingSreach(value,proType,systemId);
    });
    //管理员显示
    $("#systemId").change(function () {
        var value=$("#state").val();
        var currentPage=$("#totalNum").val();
        var proType=$("#proType").val();
        var systemId=$("#systemId").val();
        reMovePage(currentPage);
        $("#currentPage").val(1);
        pagingSreach(value,proType,systemId);
    });
    //删除
    function deletePro(data) {
        if($("#state").val()=="3"){
            alert("已经删除了 ，等待数据库删除");
            return;
        }
        if (confirm("是否要删除，亲")) {
            var code=data;
            var list=listPro;
            $.ajax({
                url : '${ctx}/Product/deletePro',
                type : 'POST',
                data : "proTitle="+list[code].proTitle,
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if(data!=null && data!=""){
                        alert(data[0]);
                        reFreshAll();
                    }
                }
            })


        }
    }
    //更新
    function upDate(data){
        var code=data;
        var list=listPro;
        if($("#state").val()=="3"){
            alert("已经删除了 ,不能再更改");
            return;
        }
        window.location.href = "${ctx}/User/editproduct?code="+list[code].id;

    }
    //全选
    function clickAll() {
        var clickFlat= $("#clickId").is(':checked');
        if(clickFlat){
            $("#showId").find("input[type='checkbox']").attr("checked",true);
        }else{
            $("#showId").find("input[type='checkbox']").attr("checked",false);
        }
    }
    //全刷新
    function reFreshAll(){
        $("#currentPage").val(1);
        var proState=$("#state").val();
        var proType=$("#proType").val();
        var systemId=$("#systemId").val();
        $("#showId").empty();
        var currentPage= $("#currentPage").val();
        reMovePage(currentPage);
        pagingSreach(proState,proType,systemId);
    }
    //当前页刷新
    function reFresh(){
        var currentPage= $("#currentPage").val();
        var proState=$("#state").val();
        var proType=$("#proType").val();
        $("#showId").empty();
        reMovePage(currentPage);
        otherPages(currentPage);
    }
    //删除勾选部分
    function deleteAll() {
        var checkboxAll=$("#showId").find("input:checkbox[css=checkboxCss]:checked");
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
                url : '${ctx}/Product/deleteAll',
                type : 'POST',
                data : "listId="+listId,
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if (data != null && data != "") {
                        alert(data[0]);
                        reFreshAll();
                    }
                }
            })
        }
    }
</script>
</body>
</html>