<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>全部专题</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css">
    <style>
        .list34{
            background: #3eb7f3;
        }
        table{
            border-collapse: collapse;
        }
        th,td{
            padding: 0;
        }
        select{
            color: white;
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
        .xg,.del{
            cursor: pointer;
        }
        .xg{
            color: #00f;
        }
        .del{
            color: red;
        }
        select{
            font-weight: bold;
        }
        .allTHEMW1{
            line-height: 23px;
            background: url(${ctx}/static/background/images/allTHEMW1.jpg);
            width: 179px;height: 53px;
            color: white;text-align: center;
            text-align: justify;
            text-justify: inter-word;
            overflow: hidden;
            vertical-align: top;
            text-align: justify;
            text-justify: distribute-all-lines;
            text-align-last: justify;
            -moz-text-align-last: justify;
            padding: 0 12px;
        }
        .allTHEMW2{
            background: url(${ctx}/static/background/images/allTHEMW2.jpg);
            width: 179px;height: 53px;
            text-align: justify;
            text-justify: inter-word;
            overflow: hidden;
            vertical-align: top;
            text-align: justify;
            text-justify: distribute-all-lines;
            text-align-last: justify;
            -moz-text-align-last: justify;
            line-height: 53px;
            color: white;
            padding: 0 30px;
            color: #333333;
        }

        .allzt{
            width: 671px;
            height: 743px;
            background: #eef7fa;
            margin: 22px 0 0 20px;
        }
        .allzt>div >div{
            margin-top: 30px;
            margin-left: 30px;
        }
        .inner>div>div{
            margin-top: 5px;
        }
        .allzt input,.allzt select{
            padding-left: 3px;
            width: 184px;
            height: 25px;
            border: 1px solid #999999;
            border-radius: 4px;
            margin-left: 4px;
        }select{

             margin-left: 0;
             border-radius: 0;
             -webkit-appearance: none;
             background: url(${ctx}/static/background/images/Arrow.jpg) no-repeat scroll right center transparent;
         }
        .allthemebox{    margin: 0 auto;
            width: 290px;}
        .allthemebox input {
            width: 91px;
            height: 36px;background: #1994d3;color: white;border: 0;margin:20px 40px 0 0;
            text-align: center;cursor: pointer;
        }
    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=false;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=false;deputynava=true">

<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>广告管理</span>
            <span>></span>
            <span>全部专题</span>
        </div>

        <div class="inner" style="height:940px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;全部专题</div>


<div style="    height: 775px;background: white">
            <div style="width: 180px;height: 612px;margin: 20px 0 0 25px;float: left;" class="alltheme-box">
                <div class="allTHEMW1">网站建设/程序及功能定制研发/APP研发与定制<i> </i></div>
                <div class="allTHEMW2">网 络 计 划 与 制 定<i> </i></div>
                <div class="allTHEMW2">网 络 推 广<i> </i></div>
                <div class="allTHEMW2">网 络 营 销<i> </i></div>
                <div class="allTHEMW2">搜 索 优 化<i> </i></div>
                <div class="allTHEMW2">网 络 媒 体<i> </i></div>
                <div class="allTHEMW2">网 络 文 案<i> </i></div>
                <div class="allTHEMW2">视 频 制 作 与 推 广<i> </i></div>
                <div class="allTHEMW2">网 络 计 划 与 制 定<i> </i></div>
                <div class="allTHEMW2">网 络 运 营<i> </i></div>
                <div class="allTHEMW2">词 条 / 百 科<i> </i></div>
                <div class="allTHEMW2">数 据 统 计<i> </i></div>
                <div class="allTHEMW2">实 体 媒 体 及 广 告 投 放"<i> </i></div>
            </div>
            <div style="float: left" class="allzt">
                <div style="width: 310px;height: 420px;clear: both">
                <div>服务标准:
                    <select name="" id="" style="width: 75px">
                        <option>标准版</option>
                        <option>加强版</option>
                        <option>基础版</option>
                        <option>定制版</option>
                        <option>商业版</option>
                    </select>
                </div>
                    <div>客服名称:
                        <input type="text" placeholder="">
                    </div>

                    <div>制作日期:
                        <input type="text" placeholder="">
                    </div>

                    <div>交款日期:
                        <input type="text" placeholder="">
                    </div>

                    <div>演示地址:
                        <input type="text" placeholder="">
                    </div>

                    <div>演示地址:
                        <img src="${ctx}/static/background/images/all-xing.jpg" alt="">
                        <img src="${ctx}/static/background/images/all-xing.jpg" alt="">
                        <img src="${ctx}/static/background/images/all-xing.jpg" alt="">
                        <img src="${ctx}/static/background/images/all-xing.jpg" alt="">
                        <img src="${ctx}/static/background/images/all-xing.jpg" alt="">
                    </div>

                    <div>客户形象照片:
                        <img src="${ctx}/static/background/images/addall-titluser1.jpg" alt="">
                    </div>

                    <div>客户评价感言:
                        <textarea style="width: 563px;height: 123px;border: 1px solid #999999;border-radius: 4px;" placeholder=""></textarea>
                    </div>

                </div>
                <div style="margin: -385px 0 0 246px;">
                    <span style="position: relative;left: 183px;top: -185px;">
                    网站建设缩略图
                    </span>
                    <img src="${ctx}/static/background/images/add-thimguser1.jpg" alt="">
                </div>
<p>
                <button style="background: #1994d3;text-align: center;color: white;width: 144px;height: 36px;border: 0;margin: 255px  0 0 252px ">修改/保存</button>
            </p>
                <div >
                    <input type="checkbox" style="width: 15px;height: 14px;margin: 5px 0 0 50px;" placeholder=""> &nbsp;全选
                </div>
            </div>
        </div>





            <div class="allthemebox">
                <input type="text" value="添加" data-toggle="modal" data-target="#myModauserl2" placeholder="">
                <input type="text" value="修改" data-toggle="modal" data-target="#myModauserl2" placeholder="">
            </div>

            <div class="darpages">
                <span>共10页</span>&nbsp;
                <span>1</span>
                <span>2</span>
                <span>3</span>
                <span>4</span>
                <span>5</span>
                <span>6</span>
                <span>7</span>
                <span>8</span>
                <span>9</span>
                <span>10</span>&nbsp;
                <span>上一页</span>
                <span>下一页</span>
            </div>


        </div>

    </div>
        </div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js"></script>
<script type="text/javascript">
    var speObj;
    $(document).ready(function () {
        $("#currentPage").val(1);
        $("#themeInfo").empty();
        $.ajax({
            url : '${ctx}/Special/allSpecial',
            type : 'POST',
            data:"adminType="+$("#adminType").val()+"&state="+$("#state").val()+"&speType="+$("#speType").val(),
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data){
                if(data!=null){
                    speObj=data[0].specialList;
                  $("#totalNum").text("共"+data[0].totalNum+"页");
                  $("#totalNum").val(data[0].totalNum);
                    if(speObj.length>0){
                        showThemeInfo($("#currentPage").val(),speObj);//显示数据
                        showpage($("#currentPage").val(),$("#totalNum").val());
                    }

                }
            }
        })
    });
    function showThemeInfo(page,data){
        $("#themeInfo").empty();
        var  i=(page-1)*20;
        if(page<$("#totalNum").val()){
           var strip=i+20;
            for(i;i<strip;i++){
                var specialName;
                if(data[i].specialName.length>4){
                    specialName=data[i].specialName.substring(0,5)+"...";
                }else{
                    specialName=data[i].specialName;
                }
                var row="<tr><td><input type=\"checkbox\" style=\"position: relative;top: 2px;\"> "+(parseInt(i)+parseInt(1))+"</td>"+
                    "<td ><input value=\""+specialName+"\" title=\""+data[i].specialName+"\" disabled=\"disabled\" style=\"background: transparent;border: 0\"></td>"+
                    "<td>"+data[i].specialLink+"</td><td>"+data[i].structure+"</td> <td>"+data[i].speType+"</td>"+
                    "<td><span class=\"xg\">修改</span> | <span class=\"del\">删除</span></td>"+
                    "<td>"+data[i].speBrowser+"</td><td>"+data[i].adminType+"</td> </tr>";
                $("#themeInfo").append(row);
            }
        }else if(page==$("#totalNum").val()){
            for(i;i<data.length;i++){
                var specialName;
                if(data[i].specialName.length>4){
                    specialName=data[i].specialName.substring(0,5)+"...";
                }else{
                    specialName=data[i].specialName;
                }
                var row="<tr><td><input type=\"checkbox\" style=\"position: relative;top: 2px;\"> "+(parseInt(i)+parseInt(1))+"</td>"+
                    "<td ><input value=\""+specialName+"\" title=\""+data[i].specialName+"\" disabled=\"disabled\" style=\"background: transparent;border: 0\"></td>"+
                    "<!--<td title=\"飞燕轻便系列防水防尘键盘鼠标新品上市\"  disabled=\"disabled\" style=\"width: 147px;\">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->"+
                    "<td>"+data[i].specialLink+"</td><td>"+data[i].structure+"</td> <td>"+data[i].speType+"</td>"+
                    "<td><span class=\"xg\" onclick=\"upDate("+i+")\"><a href='javascript:void(null)'>修改</a></span> | <span class=\"del\" onclick=\" deleteSpecial("+i+")\"><a href='javascript:void(null)'>删除</a></span></td>"+
                    "<td>"+data[i].speBrowser+"</td><td>"+data[i].adminType+"</td> </tr>";
                $("#themeInfo").append(row);
            }
        }
    }
    function showpage(currentPage,totalNum){ //当前页  总页数
        if(currentPage<5){
            for( var i=1;i<=totalNum;i++){
                $("#nextPage").before("<span id=\"page"+i+"\"><a href =javascript:void(null) onclick=\"otherPages("+i+")\" >"+i+"</a></sqan>");
                if(i>10){
                    return;
                }
                $("#page"+currentPage).css("color","red");
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
    //上一页
    $("#oldPage").click(function () {
        var currentPage= $("#currentPage").val();  //取当前页码
        var totalNum=$("#totalNum").val();       //取总页码
        var nextPage=currentPage-1;               //上一页的数
        if(currentPage>1){
            reMovePage(currentPage);
            showpage(nextPage,totalNum);
            showThemeInfo(nextPage,speObj);
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
            showThemeInfo(nextPage,speObj);
            $("#currentPage").val(nextPage);

        }else if(currentPage==totalNum){
            alert("已经是最后一页了。");
        }
    });
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
    function otherPages(data) { //当前页的值
        var currentPage=data;
        var list=speObj;
        var totalNum=$("#totalNum").val();
        $("#currentPage").val(currentPage);
        reMovePage(currentPage);
        showThemeInfo(currentPage,list);
        showpage(currentPage,totalNum);
    }
    $(".key-search").click(function () {
        vagueSearch();
    });
    $(".title-search").click(function () {

        vagueSearch();
    });
    function vagueSearch() {
        $.ajax({
            url : '${ctx}/Special/vagueSearch',
            type : 'POST',
            data:"specialTitle="+ $("#textTitle").val()+"&specialKey="+ $("#textKey").val(),
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data){
                if(data!=null){
                    speObj=data.specialList;
                    if(speObj.length>0){
                        $("#currentPage").val(1);
                        var currentPage=$("#currentPage").val();
                        reMovePage(currentPage);
                        $("#totalNum").text("共"+data.totalNum+"页");
                        $("#totalNum").val(data.totalNum);
                        showpage(currentPage, $("#totalNum").val());
                        showThemeInfo(currentPage,speObj);
                    }
                }
            }
        })
    }
   function upDate(i){window.location.href = "${ctx}/admin/editTheme?code="+speObj[i].specialName;}
   function deleteSpecial(i){
       if (confirm("是否要删除，亲")) {
           $.ajax({
               url : '${ctx}/Special/delete',
               type : 'POST',
               data : "specialName="+speObj[i].specialName,
               async:true,
               cache:false,
               dataType : 'json',
               success : function(data) {
                   if(data!=null && data!=""){
                       if(data.msg){
                    if(data.ok){
                        window.location.href = "${ctx}/admin/alltheme";
                    }else{
                        alert("出错了");
                    }
                   }else {
                           alert("您还未登录!");
                       }
                   }
               }
           })

       }
   }




</script>

</body>
</html>