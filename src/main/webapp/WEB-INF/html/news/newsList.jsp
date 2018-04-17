<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>文章列表页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link rel="stylesheet" href="${ctx}/static/front/index/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/Article.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/my-pagination.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/my-paginationg.css" type="text/css">
    <style>
        .footer{
            position: relative;top: 50px;
        }
    </style>
</head>
<body style="height: 505px">

<jsp:include page="/static/front/comm/top.jsp"/>

<div id="base">
    <div id="Article-left">
        <div class="Article-left-1"><img src="${ctx}/static/front/images/list-l-t.jpg"></div>
        <div class="Article-left-pas"><img src="${ctx}/static/front/images/zdkf.png"></div>
        <div class="Article-left-li Article-left-li-t-p">网站建设/程序/APP  研 发 与 定 制<i> </i></div>
        <div class="Article-left-li">网 络 计 划 与 制 定<i> </i></div>
        <div class="Article-left-li">网 络 计 划 与 制 定<i> </i></div>
        <div class="Article-left-li">视 频 制 作 与 推 广<i> </i></div>
        <div class="Article-left-li Article-left-li-lan">搜 索 优 化<i> </i></div>
        <div class="Article-left-li">网 络 媒 体<i> </i></div>
        <div class="Article-left-li">词 条 / 百 科<i> </i></div>
        <div class="Article-left-li">数 据 统 计<i> </i></div>
        <div class="Article-left-li Article-left-li-b-m">网 络 传 媒 及 线 上 线 下 各 类 广 告 投 放 等<i> </i></div>
    </div>



    <p class="A-nav">
        <span>首页</span>
        <span>></span>
        <span>新闻快报</span>
    </p>
    <div id="Article-right">
        <div class="listfy1" id="nava">
                <div id="table2">
            <ul>
                <li>
                    <img src="${ctx}/static/front/images/list.jpg" alt="" class="list-img">
                    <div class="list-ul-text" id="type1">
                        <a href="${ctx}/newsArticles" target="_blank"><p style="color: #333;font-size: 16px">敬请期待  <span></span></p></a>
                        <p class="list-ul-textp"></p>
                        <a href="${ctx}/newsArticles" target="_blank"><p class="list-ul-textp1"><span></span></p></a>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <img src="${ctx}/static/front/images/list.jpg" alt="" class="list-img">
                    <div class="list-ul-text" id="type2">
                        <a href="${ctx}/newsArticles" target="_blank"><p style="color: #333;font-size: 16px">敬请期待   <span></span></p></a>
                        <p class="list-ul-textp"></p>
                        <a href="${ctx}/newsArticles" target="_blank"><p class="list-ul-textp1"><span></span></p></a>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <img src="${ctx}/static/front/images/list.jpg" alt="" class="list-img">
                    <div class="list-ul-text" id="type3">
                        <a href="${ctx}/newsArticles" target="_blank"><p style="color: #333;font-size: 16px">敬请期待  <span></span></p></a>
                        <p class="list-ul-textp"></p>
                        <a href="${ctx}/newsArticles" target="_blank"><p class="list-ul-textp1"><span></span></p></a>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <img src="${ctx}/static/front/images/list.jpg" alt="" class="list-img">
                    <div class="list-ul-text">
                        <a href="${ctx}/newsArticles" target="_blank"><p style="color: #333;font-size: 16px">敬请期待   <span></span></p></a>
                        <p class="list-ul-textp"></p>
                        <a href="${ctx}/newsArticles" target="_blank"><p class="list-ul-textp1"><span></span></p></a>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <img src="${ctx}/static/front/images/list.jpg" alt="" class="list-img">
                    <div class="list-ul-text">
                        <a href="${ctx}/newsArticles" target="_blank"><p style="color: #333;font-size: 16px">敬请期待   <span></span></p></a>
                        <p class="list-ul-textp"></p>
                        <a href="${ctx}/newsArticles" target="_blank"><p class="list-ul-textp1"><span></span></p></a>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <img src="${ctx}/static/front/images/list.jpg" alt="" class="list-img">
                    <div class="list-ul-text">
                        <a href="${ctx}/newsArticles" target="_blank"><p style="color: #333;font-size: 16px">敬请期待   <span></span></p></a>
                        <p class="list-ul-textp"></p>
                        <a href="${ctx}/newsArticles" target="_blank"><p class="list-ul-textp1"><span></span></p></a>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <img src="${ctx}/static/front/images/list.jpg" alt="" class="list-img">
                    <div class="list-ul-text">
                        <a href="${ctx}/newsArticles" target="_blank"><p style="color: #333;font-size: 16px">敬请期待   <span></span></p></a>
                        <p class="list-ul-textp"></p>
                        <a href="${ctx}/newsArticles" target="_blank"><p class="list-ul-textp1"><span></span></p></a>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <img src="${ctx}/static/front/images/list.jpg" alt="" class="list-img">
                    <div class="list-ul-text">
                        <a href="${ctx}/newsArticles" target="_blank"><p style="color: #333;font-size: 16px">敬请期待   <span></span></p></a>
                        <p class="list-ul-textp"></p>
                        <a href="${ctx}/newsArticles" target="_blank"><p class="list-ul-textp1"><span></span></p></a>
                    </div>
                </li>
            </ul>

            </div>



            <div class="list-fenye">
                <p>
                    <span id="spanFirst">首页</span>
                    <span id="spanPre">上一页</span>
                    <span id="spanNext">下一页</span>
                    <span id="spanLast">尾页</span>
                    第
                    <span id="spanPageNum"></span>
                    页/共
                    <span id="spanTotalPage"></span>
                    页
                </p>
            </div>
        </div>
    </div>
</div>

    <!--导入页脚-->
    <jsp:include page="/static/front/comm/footer.jsp"/>
    <script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/front/js/my-pagination.js" type="text/javascript"></script>
    <script type="text/javascript">
        var anews;
        //页面加载激活  查询所有新闻
        $(document).ready(function () {
            $.ajax({
                url : '${ctx}/Article/artShow',
                type : 'POST',
                data:"artType=新闻快报",
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if(data!=null &&data !=""){
                        anews=data;
                        var num=anews.length;
                        $.ajax({
                            url : '${ctx}/Article/showTotal',
                            data:"num="+num,
                            type : 'POST',
                            async:true,
                            cache:false,
                            dataType : 'json',
                            success : function(total) {
                                if(total!=null &&total !=""){
                                    $("#spanPageNum").text(1);
                                    $("#spanTotalPage").text(total);
                                    showNewsData(anews);
                                }
                            }
                        });
                    }
                }
            })
        });

        //新闻显示
        function showNewsData(data) {
            //新闻快报
            if(!data.length>0){
                return ;
            }
           var currentPage= $("#spanPageNum").text();
           var totalNum= $("#spanTotalPage").text();
            var map="${ctx}/static/front/images/list.jpg";
            var path="/xw/";
            $("#table2").empty();
            if(currentPage==totalNum){
                var i=(currentPage-1)*8;
                for (i ; i < data.length; i++) {
                    var date=data[i].crateDate.substring(0,data[i].crateDate.length-6);
                      var num= date.split("-");
                     date=(num[0]+num[1]+num[2]).substring(0,(num[0]+num[1]+num[2]).length-1);
                    //标题 关键词
                    var row="<ul><li><img src="+map+" alt=\"\" class=\"list-img\">"+
                        "<div class=\"list-ul-text\" ><a style=\"color: #333;font-size: 16px;cursor: pointer\" href=\"javascript:window.open('"+path+date+"-"+data[i].id+"','_blank')\" onclick=\"newsMation(" + (i+1) +")\"><p>"+data[i].artTitle+" </a><span>"+data[i].crateDate+"</span></p><p class=\"list-ul-textp\">"+data[i].artAbstract+"</p>"+
                        "<a href=\"javascript:window.open('"+path+date+"-"+data[i].id+"','_blank')\" ><p class=\"list-ul-textp1\"><span>more</span></p></a></div></li></ul>";
                    $("#table2").append(row);
                }
                return;
            }else if(currentPage<=totalNum){
                var i=(currentPage-1)*8;
                var max=i+8;
                var j=i+1;
                for ( i ; i < max; i++) {
                    var date=data[i].crateDate.substring(0,data[i].crateDate.length-6);
                    var num= date.split("-");
                    date=(num[0]+num[1]+num[2]).substring(0,(num[0]+num[1]+num[2]).length-1);
                    //标题 关键词
                    var row="<ul><li><img src="+map+" alt=\"\" class=\"list-img\">"+
                        "<div class=\"list-ul-text\" ><a style=\"color: #333;font-size: 16px;cursor: pointer\" href=\"javascript:window.open('"+path+date+"-"+data[i].id+"','_blank')\" onclick=\"newsMation(" + (i+1) +")\"><p>"+data[i].artTitle+" </a><span>"+data[i].crateDate+"</span></p><p class=\"list-ul-textp\">"+data[i].artAbstract+"</p>"+
                        "<a href=\"javascript:window.open('"+path+date+"-"+data[i].id+"','_blank')\" ><p class=\"list-ul-textp1\"><span>more</span></p></a></div></li></ul>";
                    $("#table2").append(row);
                    j++;
                }
                return;
            }
            alert("出错了");
        }
            function totalPage(anews) {//显示总页数
                var num=anews.length;
                $.ajax({
                    url : '${ctx}/news/showTotal',
                    data:"num="+num,
                    type : 'POST',
                    async:true,
                    cache:false,
                    dataType : 'json',
                    success : function(data) {
                        if(data!=null &&data !=""){
                       $("#spanPageNum").text(1);
                       $("#spanTotalPage").text(data);
                        }
                    }
                })
            }
            $("#spanFirst").click(function () { //点击首页
                if( 1==$("#spanPageNum").text()){
                    alert("已经是首页了");
                    return;
                }
                $("#spanPageNum").text(1);
                showNewsData(anews);
            });
        $("#spanLast").click(function () {//点击尾页
            if( $("#spanPageNum").text()==   $("#spanTotalPage").text()){
                alert("已经是尾页了");
                return;
            }
            $("#spanPageNum").text($("#spanTotalPage").text());
            showNewsData(anews);
        });

        $("#spanPre").click(function () {//上一页
            if($("#spanPageNum").text() == 1){
                alert("已经是首页了");
                return;
            }
            var num= $("#spanPageNum").text()-1;
            $("#spanPageNum").text(num);
            showNewsData(anews);
        });
        $("#spanNext").click(function () {//下一页
            if($("#spanPageNum").text()==   $("#spanTotalPage").text()){
                alert("已经是尾页了");
                return;
            }
           var num= parseInt($("#spanPageNum").text())+parseInt(1);
            $("#spanPageNum").text(num);
            showNewsData(anews);
        })
    </script>
</body>
</html>
