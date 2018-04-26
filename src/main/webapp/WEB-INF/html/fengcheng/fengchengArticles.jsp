<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>文章页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link rel="stylesheet" href="${ctx}/static/front/index/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/Article.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/my-pagination.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/my-paginationg.css" type="text/css">

</head>

<style>
    table,tr,td,th{
        background: #fff;
    }
    table,tr{color: #656565;}
    .footer{
        position: relative;
        top: 33px;
        clear: both;
    }
</style>

<body>

<jsp:include page="/static/front/comm/top.jsp"/>

<div id="base">
    <div id="Article-left">
        <div class="Article-left-1" id="nava"><img src="${ctx}/static/front/images/wz-l-t.jpg"></div>
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

        <div style="margin-top: 10px;">
            <img src="${ctx}/static/front/images/wz-l-bom.jpg" alt="">
        </div>

    </div>



    <p class="A-nav">
        <span>首页</span>
        <span>></span>
        <span>我们与峰程</span>
        <span>></span>
        <span id="topPage"></span>
    </p>

    <div id="Article-right">
<div class="fenye fenye1" id="fenyeDiv">
</div>
        <div class="AE-pl">
            <form>
                <textarea placeholder="我有话要说..." id="content"></textarea>

                <div class="Article-right-pre">
                    <pre class="pre">对于我这样的菜鸟表示看不懂，有没有视频可看啊      2017年5月20日  14：36    fengcheng01    来自玉林电信用户</pre>
                    <pre class="pre">对于我这样的菜鸟表示看不懂，有没有视频可看啊      2017年5月20日  14：36    fengcheng01    来自玉林电信用户</pre>
                </div>
                <div class="Article-right-submit">

                    <div type="button"  id="submit" >提交评论</div>

                    <div style="background: #999" type="button" >取消评论</div>
                </div>
            </form>
        </div>
<div class="fenye fenye2">
        <table class="data-tablie1">
            <tr style="height: 38px">
                <th style="width: 172px;font-size: 18px;color: #D8220B"><img src="${ctx}/static/front/images/huo.png" alt="">浏览最多的文章</th>
                <th style="width: 110px">排行榜</th>
                <th style="width: 110px">浏览次数</th>

            </tr>
            <tr style="color:#D8230B;">
                <td>网站数据如何查询如何统计</td>
                <td>1</td>
                <td>1124</td>

            </tr>
            <tr style="color:#D8230B;">
                <td>网站数据如何查询如何统计</td>
                <td>2</td>
                <td>1124</td>

            </tr>
            <tr style="color:#D8230B;">
                <td>网站数据如何查询如何统计</td>
                <td>3</td>
                <td>1124</td>

            </tr>
            <tr>
                <td>网站数据如何查询如何统计</td>
                <td>4</td>
                <td>1124</td>

            </tr>
            <tr>
                <td>网站数据如何查询如何统计</td>
                <td>5</td>
                <td>1124</td>

            </tr>
            <tr>
                <td>网站数据如何查询如何统计</td>
                <td>6</td>
                <td>1124</td>

            </tr>
            <tr>
                <td>网站数据如何查询如何统计</td>
                <td>7</td>
                <td>1124</td>

            </tr>
            <tr>
                <td>网站数据如何查询如何统计</td>
                <td>8</td>
                <td>1124</td>

            </tr>
            <tr>
                <td>网站数据如何查询如何统计</td>
                <td>9</td>
                <td>1124</td>

            </tr>

        </table>
        <div style="height: 180px;width: 2px;background: #EDEDED;margin: 0 0 0 400px;position: relative;top: 30px"></div>
    <table class="data-tablie2">
        <tr style="height: 38px">
            <th style="width: 172px;font-size: 18px;color: #0EA0E1"><img src="${ctx}/static/front/images/dp.png" alt="">点评最多的文章</th>
            <th style="width: 110px">排行榜</th>
            <th style="width: 110px">点评次数</th>

        </tr>
        <tr style="color:#0EA0E1;">
            <td>网站数据如何查询如何统计</td>
            <td>1</td>
            <td>1124</td>

        </tr>
        <tr style="color:#0EA0E1;">
            <td>网站数据如何查询如何统计</td>
            <td>2</td>
            <td>1124</td>

        </tr>
        <tr style="color:#0EA0E1;">
            <td>网站数据如何查询如何统计</td>
            <td>3</td>
            <td>1124</td>
        </tr>
        <tr>
            <td>网站数据如何查询如何统计</td>
            <td>4</td>
            <td>1124</td>
        </tr>
        <tr>
            <td>网站数据如何查询如何统计</td>
            <td>5</td>
            <td>1124</td>

        </tr>
        <tr>
            <td>网站数据如何查询如何统计</td>
            <td>6</td>
            <td>1124</td>
        </tr>
        <tr>
            <td>网站数据如何查询如何统计</td>
            <td>7</td>
            <td>1124</td>
        </tr>
        <tr>
            <td>网站数据如何查询如何统计</td>
            <td>8</td>
            <td>1124</td>
        </tr>
        <tr>
            <td>网站数据如何查询如何统计</td>
            <td>9</td>
            <td>1124</td>
        </tr>

    </table>
    </div>



</div>
</div>

<!--导入页脚-->
<jsp:include page="/static/front/comm/footer.jsp"/>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/nav-nava.js" type="text/javascript"></script>
<script type="text/javascript">
    var id='${param.id}';
    var type='${param.type}'
    $(document).ready(function () {
        if(id==null||id==""){
            alert("输出错误,请选择相应的文章类型");
            window.location.href="${ctx}/index";
            return ;
        }
        $.ajax({
            url : '${ctx}/Article/showDateOrFC',
            type : 'POST',
            data : "id="+id+"&type="+type,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {

                if(data!=null && data!="") {
                    if(data.length>0){
                        $("#fenyeDiv").empty();
                        $("#topPage").text(data[0].artTitle);
                        var qq="${ctx}/static/front/images/QQ.png";
                        var wx="${ctx}/static/front/images/wx.png";
                        var wb="${ctx}/static/front/images/wb.png";
                        var xlwb="${ctx}/static/front/images/xlwb.png";
                        var row="  <div style=\"position: relative;z-index: 99\">" +
                            "        <div class=\"h1\">"+data[0].artTitle+"</div>" +
                            "    <div class=\"Article-right-tt\"><span>编辑者："+data[0].userName+"</span><span>发布时间："+data[0].crateDate+"</span>   <span>浏览次数："+data[0].artBrowser+"</span>          分享<span style=\"cursor: pointer\">" +
                            "            <img src=\""+qq+"\" alt=\"\">" +
                            "            <img src=\""+wx+"\" alt=\"\">" +
                            "            <img src=\""+wb+"\" alt=\"\">" +
                            "            <img src=\""+xlwb+"\" alt=\"\">" +
                            " </span></div>"+
                            "  <div class=\"p\">"+data[0].htmlText+"</div>";
                        $("#fenyeDiv").append(row);
                    }
                }
            }
        })
    })
    $("#submit").click(function () {

        $.ajax({
            url:'${ctx}/articleComment',
            type : 'POST',
            data : "content="+$("#content").val()+"&id="+id+"&type="+type,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data.ok){
                    alert("成功")
                    location.reload();
                }else{
                    alert("错误")
                }

            }
        })
    })
</script>
</body>
</html>
