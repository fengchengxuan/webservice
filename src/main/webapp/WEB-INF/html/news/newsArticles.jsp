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
        <span>新闻快报</span>
        <span>></span>
        <span id="topPage"></span>
    </p>

    <div id="Article-right">
<div class="fenye fenye1" id="fenyeDiv">
            <div style="position: relative;z-index: 99">
        <div class="h1">网站建了多久才会有网站数据</div>
    <div class="Article-right-tt"> 编辑者：chrislucy           <span>发布时间：2017年5月20日</span>         <span>浏览次数：146</span>          分享<span style="cursor: pointer">
            <img src="${ctx}/static/front/images/QQ.png" alt="">
            <img src="${ctx}/static/front/images/wx.png" alt="">
            <img src="${ctx}/static/front/images/wb.png" alt="">
            <img src="${ctx}/static/front/images/xlwb.png" alt="">
        </span></div>

        <div class="p">　　作为一个站长，每天最关注的事莫过于网站的收录和排名，特别是新站长，每天用站长工具的次数多达数十次，虽然明知道不会有什么变化，但还是希望看到收录上升。这种心情可以理解，因为我也是这样过来的，但是奉劝一句，站长工具的信息是一天一更的，因为搜索引擎的信息是一天一更的，百度的更新不稳定，有时一天可以会有多次，不过一个新站，怎么看都是收录0，反链0。</div>
        <div class="p">站长工具检查网站弊端</div>
        <div class="p">　　新站长每天看站长工具的时候，发现收录和反链就是不上去，于是就很担心，觉得自己的网站是不是哪里有问题啊?是不是域名不好?是不是空间不稳定?。。。各种想法都充斥在脑海里，就去百度查，然后才知道百度收录之前会有个考核期，前期收录的页面会在数据库里存储着，等着网站过了考核期才会放出来，看到这些心情就放松了一些——原来不是自己网站的问题，是考核没过，所以收录的页面才没有。</div>
        <div class="p">　　就这样又过了几天，收录和反链还是0，又有点慌了，怎么还没过考核期啊?考核期到底有多久?是不是过了考核期，之前收录的页面就会全部放出来?然后又去百度，发现搜索到的结果还是很多的，看来有这样疑问的站长不在少数。再看看别人的回答，都是很笼统的，什么快的2个星期，慢的半年，什么看看网站的优化。。。。。总之回答很多，但是觉得有用的就几乎没有，因为都是些理论，回答的人或许根本就没做过网站 、也没做过SEO，从别的地方看到了就复制过来。那么，百度的考核期到底有多久呢?</div>
        <div class="p">
            <img src="${ctx}/static/front/images/website.jpg" alt="" style="margin-left:270px">
        </div>
        <div class="h5">搜索引擎对新站收录潜规则</div>
        <div class="p">　　虽然网站很简陋，也没有内容，但是还是在发布之后的第五天，百度就收录了首页，看到首页这么快被收录，我就觉得自己应该就是网上说的那些，1、2个星期就过考核期的幸运站长，但事实真的是这样吗?当然不是，收录首页3天后，网站就完全做完了，就开始发布文章和内容，以为内页应该很快就会收录，但是又过了一星期，收录还是只有首页，内页纹丝不动。我就很担心，是不是网站不好?然后就去百度，知道了SEO这们技术，开始学习SEO技术，看到这里发现自己的网站不符合SEO，看到哪里，有觉得自己的网站不符合SEO，总之就是感觉哪里都不对。</div>
            </div>

    <p class="Article-right-page">
        第一页 1 2
        上一页
        下一页
        最后一页
    </p> <br>



</div>

<div class="AE-pl">
            <form>
                <textarea placeholder="我有话要说..."></textarea>

                <div class="Article-right-pre">
                    <pre class="pre">对于我这样的菜鸟表示看不懂，有没有视频可看啊      2017年5月20日  14：36    fengcheng01    来自玉林电信用户</pre>
                    <pre class="pre">对于我这样的菜鸟表示看不懂，有没有视频可看啊      2017年5月20日  14：36    fengcheng01    来自玉林电信用户</pre>

                </div>
                <div class="Article-right-submit">
                    <button>提交评论</button>
                    <button style="background: #999">取消评论</button>
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
            <th style="width: 172px;font-size: 18px;color: #0EA0E1"><img src="${ctx}/static/front/images/dp.png" alt="">浏览最多的文章</th>
            <th style="width: 110px">排行榜</th>
            <th style="width: 110px">浏览次数</th>

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
    $(document).ready(function () {
        var newType='${param.id}';
        if(newType==null||newType==""){
            alert("输出错误,请选择相应的文章类型");
            return ;
        }
        $.ajax({
            url : '${ctx}/news/upDateJump',
            type : 'POST',
            data : "id="+newType,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null && data!="") {
                    $.ajax({
                        url : '${ctx}/news/browserUp',
                        type : 'POST',
                        data : "newsTitle="+data[0].newsTitle,
                        async:true,
                        cache:false,
                        dataType : 'json',
                        success : function(data) {
                            if(data!=null && data!="") {
                                $("#fenyeDiv").empty();
                                var time = "[" + data[0].crateDate + "]";
                                $("#topPage").text(data[0].newsTitle);
                                for (var row = 0; row < data.length; row++){
                                    var time = "[" + data[row].crateDate + "]";
                                    var i = "<div class=\"h1\">" + data[row].newsTitle + "</div>" +
                                        "<span>" + time + "</span>" +"<div class=\"p\">"+data[row].htmlText+"</div>";
                                    $("#fenyeDiv").append(i);
                                }
                            }
                        }
                    })
                }
            }
        })
    })
</script>
</body>
</html>
