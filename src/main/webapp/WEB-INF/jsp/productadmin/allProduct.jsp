<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>全部产品</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="${ctx}/static/background/css/top.css">
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/article.css" type="text/css">
    <style>
        .list19{
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
            <span>全部产品</span>
        </div>
        <div class="inner" style="height: 1126px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;全部产品</div>
            <div class="draftart-top">
                <button class="keywords">关键词</button>
                <input style="width: 269px" type="text" placeholder="例如：APP，网站建设，网络营销，网络推广">
                <button  id="KeySearch"   class="key-search" style="cursor: pointer">搜索</button>
                <button class="search-title">标题搜索</button>
                <input style="width: 283px" type="text" placeholder="网站建设/程序及功能定制研发/APP研发与定制">
                <button id="TitleSearch" class="title-search" style="cursor: pointer" >搜索</button>
            </div>
            <div class="draftartbox">
                <table class="artable">
                    <thead>
                    <tr>
                    <th style="width: 74px;">序号</th>
                    <th style="width: 97px;border-left: 1px solid #24a1e4">
                        <div class="select_model">
                            <div class="Selected" id="Selected"><span>全部类型</span><img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli">
                                <ul>
                                    <li style="border-top: none">全部类型</li>
                                    <li >网站建设/程序/APP研发与定制</li>
                                    <li >网络计划与制定</li>
                                    <li >网络营销</li>
                                    <li >网络推广</li>
                                    <li >网络文案</li>
                                    <li >视频制作与推广</li>
                                    <li >搜索优化</li>
                                    <li >网络媒体</li>
                                    <li >词条/百科</li>
                                    <li >网络运营</li>
                                    <li >数据统计</li>
                                    <li >网络传媒及线上线下各类广告投放</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 175px;border-left: 1px solid #24a1e4">产品标题</th>
                    <th style="width: 128px;border-left: 1px solid #24a1e4">
                        <div class="select_model">
                            <div class="Selected" id="Selected2"><span>管理员</span><img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
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
                    <th style="width: 180px;border-left: 1px solid #24a1e4">发布日期</th>
                    <th style="width: 119px;border-left: 1px solid #24a1e4">
                        <div class="select_model">
                            <div class="Selected" id="Selected3"><span>正常</span><img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli3">
                                <ul>
                                    <li style="border-top: none">正常</li>
                                    <li>草稿</li>
                                    <li>已删除</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 112px;border-left: 1px solid #24a1e4">编辑状态</th>
                    <th style="width: 106px;border-left: 1px solid #24a1e4">产品浏览量</th>
                    </tr>
                    </thead>
                    <tbody ng-init="c=false" id="showId">
                    </tbody>
                </table>
                <div class="darbtnbox">
                    <button class="thisfresh" onclick="reFresh()">当前页一键刷新</button>
                    <button class="allfresh" onclick="reFreshAll()">全部产品一键刷新</button>
                </div>
                <div class="darpages" id="darpageswwww">
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
    var oldState;
    var oldSystem;
    var oldProType;

    var newState="正常";;
    var newSystem="管理员";
    var newProType="全部类型";;
    $(document).ready(function () {
        $("#Selected").click(function(){
            oldProType= $(this).text();
            if("block" == $("#ddoli").css("display")){
                $("#ddoli").hide();
            }else{
                $("#ddoli").show();
            }
        });

        $("#ddoli>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected>span").html($(this).html());
                newProType= $(this).html();
                $("#ddoli").hide();
                if(oldProType!=newProType){
                    //状态显示
                    var value=newState;
                    var currentPage=$("#totalNum").val();
                    var newsType=newProType;
                    var systemId=newSystem;
                    reMovePage(currentPage);
                    $("#currentPage").val(1);
                    if(newsType!="全部类型"){
                        newsType=changeType(newsType)
                    }
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
                newSystem= $(this).html();
                $("#ddoli2").hide();
                if(oldSystem!=newSystem){
                    //管理员
                    var value=newState;
                    var currentPage=$("#totalNum").val();
                    var newsType=newProType;
                    var systemId=newSystem;
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
            oldState = $(this).text();
            if("block" == $("#ddoli3").css("display")){
                $("#ddoli3").hide();
            }else{
                $("#ddoli3").show();
            }
        });
        $("#ddoli3>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected3>span").html($(this).html());
                newState= $(this).html();
                $("#ddoli3").hide();
                if(oldState!=newState){
                    //状态显示
                    var value=newState;
                    var currentPage=$("#totalNum").val();
                    var newsType=newProType;
                    var systemId=newSystem;
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
    var total;      //总页数
    var  listPro;  //全部的产品
    //标题查询
  $("#TitleSearch").click(function () {
     var titleValue=$("#proTilevalue").val();
     sreach(titleValue,"");
 });
    //关键词查询
    $("#KeySearch").click(function () {
        var keyValue=$("#proKeyValue").val();
        sreach("",keyValue)

    });
    //条件查询
    function sreach(titleValue,keyValue) {
      $("#Selected").text("全部类型");   //类型条件
      $("#Selected2").text("管理员"); //管理员类型
        $("#showId").empty();
        $.ajax({
            url : '${ctx}/Product/Search',
            type : 'POST',
            data : "proTitle="+titleValue+"&proKey="+keyValue,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null && data!=""){
                    var oldPage=$("#currentPage").val();
                    reMovePage(oldPage);
                    $("#currentPage").val(1);
                    $("#showId").empty();
                    var currentPage= $("#currentPage").val();
                    var list=data.list;
                    var totalNum=data.totalNum;
                    listPro=list;
                    $("#totalNum").text("共"+totalNum+"页");
                    $("#totalNum").val(totalNum);
                    showPro(currentPage,list,totalNum);
                    showpage(currentPage,totalNum);
                }
            }
        })

    }
//分页查询
     //页面加载完
    $(document).ready(function(){
         $("#currentPage").val(1);     //设置当前页
        var proState=$("#Selected3").text();   //产品状态条件
        var proType=$("#Selected").text();   //类型条件
        var systemId=$("#Selected2").text(); //管理员类型
        $("#showId").empty();              //删除每一条产品内容
         pagingSreach(proState,proType,systemId);

    });
    //开始异步
    function pagingSreach(state,type,system){   //根据条件取到相应的产品
        var proState=state;
        var proType=type;
        var systemId=system;
        $.ajax({
            url : '${ctx}/Product/SearchAll',
            type : 'POST',
            data : "proState="+proState+"&proType="+proType+"&systemId="+systemId,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null && data!=""){
                    var currentPage= $("#currentPage").val();  //取当前页码
                    var list=data.list;
                    var totalNum=data.totalNum;
                    listPro=list;
                    total=totalNum;
                    $("#totalNum").text("共"+totalNum+"页");   //设值总页数
                    $("#totalNum").val(totalNum);
                    showPro(currentPage,list,totalNum);      //当前页 总产品 总页数
                    showpage(currentPage,totalNum);
                }
            }
        })
    }

    //显示数据
    function showPro(pageData, list,total) {
        $("#showId").empty();
        var currentPage=pageData;
        var list =list;
        var totalNum=total;
        var i=(currentPage-1)*20;        //每页显示20条数据
        if(currentPage!=totalNum &&currentPage<totalNum) {       //当前页不等于总页数
            var row="<tr style=\"width: 980px;height: 5px\"></tr>";
            $("#showId").append(row);
            var strip=i+20;
            for (i;i < strip ; i++) {
               var type= changeType(list[i].proType);
                var j = i + 1;
                var title= list[i].proTitle;
                var showRow = "<tr style=\"height: 36px;background-color: #F4F4F4 \">" +
                    "<td><input type=\"checkbox\" value=\""+list[i].id+"\" css=\"checkboxCss\" ng-checked=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + j + "</td>" +
                    "<td>" + type + "</td>" +
                   // "<td>" + list[i].proTitle + "</td>" +
                    "<td><a href=\"javascript:void(null)\" onclick=\"showDemand('"+title+"')\"><span style=\"color: #0D62F0\">"+title+"</span></a></td>"+
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
        if(currentPage==totalNum){   //当前页等于总页数
            var row="<tr style=\"width: 980px;height: 5px\"></tr>";
            $("#showId").append(row);
            for(i;i<list.length;i++){
                var j = i + 1;
                var title=list[i].proTitle;
                var type= changeType(list[i].proType);
                var showRow = "<tr style=\"height: 36px;background-color: #F4F4F4\">" +
                    "<td><input type=\"checkbox\"value=\""+list[i].id+"\" css=\"checkboxCss\" ng-checked=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + j + "</td>" +
                    "<td>" + type + "</td>" +
                    "<td><a href=\"javascript:void(null)\" onclick=\"showDemand('"+title+"')\"><span style=\"color: #0D62F0\">"+title+"</span></a></td>"+
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
        }//显示相隔颜色
        for(var j=1;j<=$("#showId").find("tr").length ;j++){
            if(j%2!=0){
                $("#showId").find("tr:eq("+j+")").css("background-color","#cccccc");
            }else{
                $("#showId").find("tr:eq("+j+")").css("background-color","#fffaff");
            }
        }//添加 checkbox
        var clickAll="<tr style=\"height: 52px;background: transparent\"><td>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" id=\"clickId\" onclick=\"clickAll()\" " +
            "ng-model=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;全选</td></tr><tr><td><a href=\"javascript:void(null)\" onclick=\"deleteAll()\">删除</a></td></tr>";
        $("#showId").append(clickAll);

    }
    //显示页码数  (根据当前页的在总页数的位置显示)
    function showpage(currentPage,totalNum){ //当前页  总页数
       if(currentPage<5){
          /* if(currentPage>totalNum){
                   $("#nextPage").before("<span id=\"page" +currentPage + "\"><a  href =javascript:void(null) onclick=\"otherPages(" + currentPage + ")\">" + currentPage + "</a></sqan>");
           }else{*/
               for( var i=1;i<=totalNum;i++){
                   $("#nextPage").before("<span id=\"page"+i+"\"><a href =javascript:void(null) onclick=\"otherPages("+i+")\" >"+i+"</a></sqan>");
                   if(i>10){
                       break;
                   }
           }
       }else if(currentPage>=5 && currentPage<totalNum-4){
           var i=currentPage-4;
           for(i;i<=totalNum;i++){
               $("#nextPage").before("<span id=\"page"+i+"\"><a  href =javascript:void(null) onclick=\"otherPages("+i+")\" >"+i+"</a></sqan>");
               if(i>10){
                   break;
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
        var totalNum=$("#totalNum").val();
        if(currentPage<5){
            if(totalNum==0){
                $("#page"+currentPage).remove();
            }
            for( var i=1;i<=totalNum;i++){
                $("#page"+i).remove();
                if(i>10){
                    break;
                }
            }
        }else if(currentPage>=totalNum-4 &&currentPage<=totalNum){
            var i=totalNum-10;
            for(i;i<=totalNum;i++){
                $("#page"+i).remove();
            }
        }
        else if(currentPage>=5 && currentPage<totalNum-4){
            var i=currentPage-4;
            for(i;i<=totalNum;i++){
                $("#page"+i).remove();
                if(i>10){
                   break;
                }
            }
        }

    }
    //点击页码
   function otherPages(data) { //当前页的值
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
       var currentPage= $("#currentPage").val();  //取当前页码
       var totalNum=$("#totalNum").val();       //取总页码
       var nextPage=currentPage-1;               //上一页的数
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
            alert("已经是最后一页了。");
        }
    });
    //删除
    function deletePro(data) {
     if($("#state").val()=="删除"){
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
                        reFreshAll()
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
        window.location.href = "${ctx}/admin/editproduct?code="+list[code].id;
    }
    //全刷新
    function reFreshAll(){
        $("#currentPage").val(1);
        var proState=$("#Selected3").text();   //产品状态条件
        var proType=$("#Selected").text();   //类型条件
        var systemId=$("#Selected2").text(); //管理员类型
        $("#showId").empty();
        var currentPage= $("#currentPage").val();
        reMovePage(currentPage);
        pagingSreach(proState,proType,systemId);
    }
   //当前页刷新
    function reFresh(){
        var currentPage= $("#currentPage").val();
        var proState=$("#Selected3").text();   //产品状态条件
        var proType=$("#Selected").text();   //类型条件
        $("#showId").empty();
        reMovePage(currentPage);
        otherPages(currentPage);
    }
    //全选
    function clickAll() {
       var clickFlat= $("#clickId").is(':checked');
       if(clickFlat){
          $("#showId").find("input[type='checkbox']").prop("checked",true);
       }else{
           $("#showId").find("input[type='checkbox']").prop("checked",false);
       }
    }
    //全删除
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
                    if (data != null && data != ""){
                        alert(data[0]);
                        reFreshAll();
                    }
                  }
                });
           }
    }
    function showDemand(data) {
        window.location.href="${ctx}/admin/product?title="+data;
    }
    function changeType(type){
        if(type=="develop"){
            return "网站建设/程序/APP研发与定制";
        }else if(type=="网站建设/程序/APP研发与定制"){
            return "develop";
        }else if(type=="plan"){
            return "网络计划与制定";
        }else if(type=="网络计划与制定"){
            return "plan";
        }else if (type=="marketing"){
            return "网络营销";
        }else if (type=="网络营销"){
            return "marketing";
        }else if (type=="popularize"){
            return "网络推广";
        }else if (type=="网络推广"){
            return "popularize";
        }else if (type=="document"){
            return "网络文案";
        }else if (type=="网络文案"){
            return "document";
        }else if (type=="video"){
            return "视频制作与推广";
        }else if (type=="视频制作与推广"){
            return "video";
        }else if (type=="seo"){
            return "搜索优化";
        }else if (type=="搜索优化"){
            return "seo";
        }else if (type=="media"){
            return "网络媒体";
        }else if (type=="网络媒体"){
            return "media";
        }else if (type=="baike"){
            return "词条/百科";
        }else if (type=="词条/百科"){
            return "baike";
        }else if (type=="operation"){
            return "网络运营";
        }else if (type=="网络运营"){
            return "operation";
        }else if (type== "data"){
            return "数据统计";
        }else if (type=="advertisement"){
            return "网络传媒及线上线下各类广告投放";
        }else if (type=="网络传媒及线上线下各类广告投放"){
            return "advertisement";
        }else if (type=="数据统计"){
            return "data";
        }
    }
</script>
</body>
</html>