<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>全部新闻</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/article.css" type="text/css">
    <style>
        .list8{
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
            line-height: 30px;
            text-align: center;
            background: #ffffff;
            color: #666;
            font-size: 14px;
            border-top: 1px solid #ccc;
        }
        #ddoli ul li{
            width: 95px;
        }
        #ddoli2 ul li{
            width: 126px;
        }
        #ddoli3 ul li{
            width: 117px;
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
<body ng-init="sysa=true;basea=true;contenta=false;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=false;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <a href="${ctx}/admin/hyperchannel"> <span>内容管理</span></a>
            <span>></span>
            <span>全部新闻</span>
        </div>
        <div class="inner" style="height: 1126px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;全部新闻</div>
            <div class="draftart-top">
                <button class="keywords">关键词</button>
                <input style="width: 269px" type="text"  placeholder="例如：峰程7080，500名，免费体验，名额" id="newsKeyValue">
                <button class="key-search" id="KeySearch">搜索</button>
                <button class="search-title">标题搜索</button>
                <input style="width: 283px" type="text" placeholder="例如：峰程7080开放500名免费中小型企业体验名额诚邀您参与" id="newsTilevalue">
                <button class="title-search" id="TitleSearch">搜索</button>
            </div>
            <div class="draftartbox">
                <table class="artable">
                    <thead>
                    <tr>
                    <th style="width: 97px;">序号</th>
                    <th style="width: 97px;border-left: 1px solid #24a1e4">
                        <div class="select_model">
                            <div class="Selected" id="Selected"><span>十二数据</span>&nbsp;<img src=${ctx}/static/background/images/adm_icon.png alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli">
                                <ul>
                                    <li style="border-top: none">十二数据</li>
                                    <li>新闻快报</li>
                                    <li>我们与峰程</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 141px;border-left: 1px solid #24a1e4">产品标题</th>
                    <th style="width: 128px;border-left: 1px solid #24a1e4">
                        <div class="select_model">
                            <div class="Selected" id="Selected2"><span>管理员</span>&nbsp;<img src=${ctx}/static/background/images/adm_icon.png alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli2">
                                <ul>
                                    <li style="border-top: none">系统管理员</li>
                                    <li>运营管理员</li>
                                    <li>普通管理员</li>
                                    <li>编辑管理员</li>
                                    <li>管理员</li>
                                </ul>
                            </div>

                        </div>
                    </th>
                    <th style="width: 150px;border-left: 1px solid #24a1e4">发布日期</th>
                    <th style="width: 119px;border-left: 1px solid #24a1e4">
                        <div class="select_model">
                            <div class="Selected" id="Selected3"><span>全部</span>&nbsp;<img src=${ctx}/static/background/images/adm_icon.png alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli3">
                                <ul>
                                    <li style="border-top: none">全部</li>
                                    <li>正常</li>
                                    <li>草稿</li>
                                    <li>删除</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 112px;border-left: 1px solid #24a1e4">编辑状态</th>
                    <th style="width: 106px;border-left: 1px solid #24a1e4">文章浏览量</th>
                    </tr>
                    </thead>
                    <tbody ng-init="c=false" id="showId">
                    </tbody>
                </table>
                <div class="darbtnbox">
                    <button class="allfresh" onclick="deleteAll()">删除</button>
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
<script src="${ctx}/static/background/js/jquery-3.2.1.min.js"></script>
<script src="${ctx}/static/background/js/angular.min.js"></script>
<script type="text/javascript">
    var typeObj;
    var state="全部";
    var oldState;
    var type="十二数据";
    var oldType;
    var system="管理员";
    var oldSystem;
    $(document).ready(function (){
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
    if( $("#Selected").val()!=type){

    }

    var total;      //总页数
    var  listNews;  //全部新闻
    //标题查询
  $("#TitleSearch").click(function () {
     var titleValue=$("#newsTilevalue").val();
     sreach(titleValue,"");
 });
    //关键词查询
    $("#KeySearch").click(function () {
        var keyValue=$("#newsKeyValue").val();
        sreach("",keyValue)
    });
    //条件查询
    function sreach(titleValue,keyValue) {
      $("#newsType").val(0);
      $("#systemId").val(0);
        $("#showId").empty();
        $.ajax({
            url : '${ctx}/news/Search',
            type : 'POST',
            data : "newsTitle="+titleValue+"&newsKey="+keyValue,
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
                    listNews=list;
                    $("#totalNum").text("共"+totalNum+"页");
                    $("#totalNum").val(totalNum);
                    showNews(currentPage,list,totalNum);
                    showpage(currentPage,totalNum);
                }
            }
        })

    }
//分页查询
     //页面加载完
    $(document).ready(function(){
         $("#currentPage").val(1);     //设置当前页
        var newsState=state;   //新闻状态条件
        var newsType=type;   //类型条件
        var systemId=system; //管理员类型
        $("#showId").empty();              //删除每一篇新闻内容
         pagingSreach(newsState,newsType,systemId);

    });
    //开始异步
    function pagingSreach(state,type,system){   //根据条件取到相应的新闻
      var  url;
        if(type=="新闻快报"){
            typeObj="新闻快报";
            url="${ctx}/Article/SearchAll"
        }else{
            typeObj="文章";
            url="${ctx}/Article/SearchAll"
        }
        $.ajax({
            url : url,
            type : 'POST',
            data : "state="+state+"&type="+type+"&systemId="+system,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null && data!=""){
                    var currentPage= $("#currentPage").val();  //取当前页码
                    var list=data.list;
                    var totalNum=data.totalNum;
                    listNews=list;
                    total=totalNum;
                    $("#totalNum").text("共"+totalNum+"页");   //设值总页数
                    $("#totalNum").val(totalNum);
                    if(type=="新闻快报"){
                        showArtcle(currentPage,list,totalNum);      //当前页 总新闻 总页数
                    }else{
                        showArtcle(currentPage,list,totalNum);
                    }
                    showpage(currentPage,totalNum);
                }
            }
        })

    }
    //显示数据
    function showNews(pageData, list,total) {
        $("#showId").empty();
        var currentPage=pageData;
        var list =list;
        var totalNum=total;
        var i=(currentPage-1)*20;        //每页显示20条数据
        if(currentPage!=totalNum&&currentPage<totalNum) {       //当前页不等于总页数
            var row="<tr style=\"width: 980px;height: 5px\"></tr>";
            $("#showId").append(row);
            var strip=i+20;
            for (i;i < strip ; i++) {
                var j = i + 1;
                var showRow = "<tr style=\"height: 36px;background-color: #F4F4F4 \">" +
                    "<td><input type=\"checkbox\" value=\""+list[i].id+"\" css=\"checkboxCss\" ng-checked=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + j + "</td>" +
                    "<td>" + list[i].newsType + "</td>" +
                    "<td>" + list[i].newsTitle + "</td>" +
                    "<td>" + list[i].userName + "</td>" +
                    "<td>" + list[i].crateDate + "</td>" +
                    "<td>" + list[i].newsState + "</td>" +
                    "<td>" +
                    "<a href=\"javascript:void(null)\" onclick=\"upDate("+i+")\"><span style=\"color: #0D62F0\">修改</span></a>" +
                    "&nbsp;|&nbsp;" +
                    "<a href=\"javascript:void(null)\" onclick=\"deleteNews("+i+")\"  ><span style=\"color: #EC2323\">删除</span></a>" +
                    " </td>" +
                    " <td>" + list[i].newsBrowser + "</td>" +
                    "</tr>";
                $("#showId").append(showRow);
            }
        }
        if(currentPage==totalNum){   //当前页等于总页数
            var row="<tr style=\"width: 980px;height: 5px\"></tr>";
            $("#showId").append(row);
            for(i;i<list.length;i++){
                var j = i + 1;
                var showRow = "<tr style=\"height: 36px;background-color: #F4F4F4\">" +
                    "<td><input type=\"checkbox\"value=\""+list[i].id+"\" css=\"checkboxCss\" ng-checked=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + j + "</td>" +
                    "<td>" + list[i].newsType + "</td>" +
                    "<td>" + list[i].newsTitle + "</td>" +
                    "<td>" + list[i].userName + "</td>" +
                    "<td>" + list[i].crateDate + "</td>" +
                    "<td>" + list[i].newsState + "</td><td>" +
                    "<a href=\"javascript:void(null)\" onclick=\"upDate("+i+")\"><span style=\"color: #0D62F0\">修改</span></a>" +
                    "&nbsp;|&nbsp;" +
                    "<a href=\"javascript:void(null)\" onclick=\"deleteNews("+i+")\"><span style=\"color: #EC2323\">删除</span></a>" +
                    " </td>" +
                    " <td>" + list[i].newsBrowser + "</td>" +
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
        }
        // /添加 checkbox
        var clickAll="<tr style=\"height: 52px;background: transparent\"><td>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" id=\"clickId\" onclick=\"clickAll()\" " +
            "ng-model=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;全选</td></tr>";
        $("#showId").append(clickAll);
    }
    //显示数据
    function showArtcle(pageData, list,total) {
        $("#showId").empty();
        var currentPage=pageData;
        var list =list;
        var totalNum=total;
        var i=(currentPage-1)*20;        //每页显示20条数据
        if(currentPage!=totalNum&&currentPage<totalNum) {       //当前页不等于总页数
            var row="<tr style=\"width: 980px;height: 5px\"></tr>";
            $("#showId").append(row);
            var strip=i+20;
            for (i;i < strip ; i++) {
                var j = i + 1;
                var showRow = "<tr style=\"height: 36px;background-color: #F4F4F4 \">" +
                    "<td><input type=\"checkbox\" value=\""+list[i].id+"\" css=\"checkboxCss\" ng-checked=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + j + "</td>" +
                    "<td>" + list[i].artType + "</td>" +
                    "<td>" + list[i].artTitle + "</td>" +
                    "<td>" + list[i].userName + "</td>" +
                    "<td>" + list[i].crateDate + "</td>" +
                    "<td>" + list[i].artState + "</td>" +
                    "<td>" +
                    "<a href=\"javascript:void(null)\" onclick=\"upDate("+i+")\"><span style=\"color: #0D62F0\">修改</span></a>" +
                    "&nbsp;|&nbsp;" +
                    "<a href=\"javascript:void(null)\" onclick=\"deleteNews("+i+")\"  ><span style=\"color: #EC2323\">删除</span></a>" +
                    " </td>" +
                    " <td>" + list[i].artBrowser + "</td>" +
                    "</tr>";
                $("#showId").append(showRow);
            }

        }
        if(currentPage==totalNum){   //当前页等于总页数
            var row="<tr style=\"width: 980px;height: 5px\"></tr>";
            $("#showId").append(row);
            for(i;i<list.length;i++){
                var j = i + 1;
                var showRow = "<tr style=\"height: 36px;background-color: #F4F4F4\">" +
                    "<td><input type=\"checkbox\"value=\""+list[i].id+"\" css=\"checkboxCss\" ng-checked=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + j + "</td>" +
                    "<td>" + list[i].artType + "</td>" +
                    "<td>" + list[i].artTitle + "</td>" +
                    "<td>" + list[i].userName + "</td>" +
                    "<td>" + list[i].crateDate + "</td>" +
                    "<td>" + list[i].artState + "</td>" +
                    "<td>" +
                    "<a href=\"javascript:void(null)\" onclick=\"upDate("+i+")\"><span style=\"color: #0D62F0\">修改</span></a>" +
                    "&nbsp;|&nbsp;" +
                    "<a href=\"javascript:void(null)\" onclick=\"deleteNews("+i+")\"><span style=\"color: #EC2323\">删除</span></a>" +
                    " </td>" +
                    " <td>" + list[i].artBrowser + "</td>" +
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
        }
        // /添加 checkbox
        var clickAll="<tr style=\"height: 52px;background: transparent\"><td>&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" id=\"clickId\" onclick=\"clickAll()\" " +
            "ng-model=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;全选</td>";
        $("#showId").append(clickAll);
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
   function otherPages(data) { //当前页的值
        var currentPage=data;
       var list=listNews;
       var totalNum=$("#totalNum").val();
       $("#currentPage").val(currentPage);
       reMovePage(currentPage);
       if(typeObj=="新闻快报"){
           showNews(currentPage,list,totalNum);
       }else{
           showArtcle(currentPage,list,totalNum);
       }
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
           showNews(nextPage,listNews,totalNum);
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
            showNews(nextPage,listNews,totalNum);
            $("#currentPage").val(nextPage);

        }else if(currentPage==totalNum){
            alert("已经是最后一页了。");
        }

    });
    //管理员显示
    $("#ddoli1").change(function () {
        var value=$("#state").val();
        var currentPage=$("#totalNum").val();
        var newsType=$("#newsType").val();
        var systemId=$("#systemId").val();
        reMovePage(currentPage);
        $("#currentPage").val(1);
        pagingSreach(value,newsType,systemId);
    });
    //删除
    function deleteNews(data) {
        var state;  //状态
        var url;
        var title;
      //  if( typeObj=="新闻快报"){
            url='${ctx}/Article/deleteArt';
            state=listNews[data].artState;
            title=listNews[data].artTitle;
        //}
        if(state=="删除"){
            alert("已经删除了 ，等待数据库删除");
            return;
        }
        if (confirm("是否要删除，亲")) {
            $.ajax({
                url : url,
                type : 'POST',
                data : "title="+title,
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
        var list=listNews;
       /* if("新闻快报"){
            if(list[code].newsState=="删除"){
                alert("已经删除了 ,不能再更改");
                return;
            }
        }else{*/
           if(list[code].artState=="删除"){
                alert("已经删除了 ,不能再更改");
                return;
         //   }
        }
        window.location.href = "${ctx}/admin/editnews?code="+list[code].id+"&type="+typeObj;
    }
    //全刷新
    function reFreshAll(){
        $("#currentPage").val(1);
        $("#showId").empty();
        var currentPage= $("#currentPage").val();
        reMovePage(currentPage);
        pagingSreach( state,type,system);
    }
   //当前页刷新
    function reFresh(){
        var currentPage= $("#currentPage").val();
        var newsState=state;
        var newsType=type;
        $("#showId").empty();
        reMovePage(currentPage);
        otherPages(currentPage);
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
    //全删除
    function deleteAll() {
       var checkboxAll=$("#showId").find("input:checkbox[css=checkboxCss]:checked");
        if(checkboxAll==null || checkboxAll.length<1){
            alert("请选择一行");
            return ;
        }
        if(confirm("是否要删除勾选部分")){
          var listId=[];
          var newsId;
           for(var i=0;i<checkboxAll.length;i++){
                newsId= checkboxAll[i].value;
                listId.push(newsId);
           }
          var url;
            if( typeObj=="新闻快报"){
                url='${ctx}/news/deleteAll';
            }else{
                url='${ctx}/Article/deleteAll';
            }
            $.ajax({
                url : url,
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