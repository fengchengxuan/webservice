<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>订单评价</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <style>
        .list26{
            background: #3eb7f3;
        }
        td span{
            cursor: pointer;
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
        .contener .inner .darbtnbox button{width: 110px}
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
        }
        /*弹框*/
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
            line-height: 30px;
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
        }.pjy{
            clear: both;
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
        <a href="${ctx}/admin/hyperchannel"> <span>订单管理</span></a>
        <span>></span>
        <a href="${ctx}/admin/orderestimate">  <span>我的全部评价</span></a>
        <span>></span>
        <span>订单评价</span>

    </div>
    <div class="inner" style="height: auto;padding-bottom: 20px;">
        <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;订单评价</div>
        <div class="draftart-top">
            <button class="keywords">关键词</button>
            <input style="width: 269px" type="text" placeholder="例如：APP，网站建设，网络营销，网络推广">
            <button class="key-search">搜索</button>
            <button class="search-title">标题搜索</button>
            <input style="width: 283px" type="text" placeholder="网站建设/程序及功能定制研发/APP研发与定制">
            <button class="title-search">搜索</button>
        </div>
        <div class="draftartbox">
            <table class="artable">
                <thead>
                <tr>
                <th style="width: 62px;">序号</th>
                <th style="width: 81px;border-left: 1px solid #24a1e4">编号
                </th>
                <th style="width: 147px;border-left: 1px solid #24a1e4">订单标题</th>
                <th style="width: 107px;border-left: 1px solid #24a1e4">
                    <div class="select_model">
                        <div class="Selected" id="Selected"><span >用户类型</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli">
                            <ul>
                                <li style="border-top: none">来宾户</li>
                                <li >会员户</li>
                            </ul>
                        </div>
                    </div>
                </th>
                <th style="width: 105px;border-left: 1px solid #24a1e4">用户昵称/ID</th>
                <th style="width: 155px;border-left: 1px solid #24a1e4">评价语</th>
                <th style="width: 113px;border-left: 1px solid #24a1e4">
                    <div class="select_model">
                        <div class="Selected" id="Selected2"><span>评价类型</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli2">
                            <ul>
                                <li style="border-top: none">好评</li>
                                <li>中评</li>
                                <li>差评</li>
                            </ul>
                        </div>
                    </div>
                </th>
                <th style="width: 103px;border-left: 1px solid #24a1e4">评价状态</th>
                <th style="width: 109px;border-left: 1px solid #24a1e4">处理方式</th>
                </tr>
                </thead>

                <tr style="height: 10px;"><td></td></tr>
                <tr>
                    <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                    <td>FC001</td>
                    <td style="width:147px;color: #1994d3;font-size: 14px;" title="网站建设/程序/APP研发与定制">网站建设/程序/APP...</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <!--<td title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="width: 147px;">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->
                    <td style="width:147px;color: #0d63f0">体验版-网站建设</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="还真的免费体验，峰程7080真的免费帮我公司建一个网站，我们老总非常满意">还真的免费体验，峰程...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333">
                                    <span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                                    <span style="color: red">删除</span>
                    </td>
                </tr>

                <tr>
                    <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;2</td>
                    <td>FC005</td>
                    <td style="width:147px;color: #1994d3;font-size: 14px;" >网络营销</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0">基础版-SEM</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="以前的网络公司只是帮我们弄好网站，网站上线1年多都没有收录，也没有关键词排名，交给峰程7080接管后，3个月时间品牌及产品有了关键词排名，在百度里也能找到。">以前的网络公司只是帮...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0">基础版-SNS</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="微博、微信全部交给峰程7080管理，关注的粉丝越来越多，也有不少消费者从这些平台找到我们购买商品。">微博、微信全部交给峰...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0">基础版-O2O</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="通过策划一场活动，线下拍意向订单到线下附近门店进行挑选、体验，完成线下付款，线上的推广及效果确实比我们以前没有投放这块强许多，业绩也翻了一两翻。">通过策划一场活动，线...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0">基础版-B2B</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="峰程7080帮我们上架不少商品在一些B2B平台里，我们客服部时不时会有电话打入，都是在咨询商品及发货相关事宜，比我们发广告单，投放公交广告效果更好。">峰程7080帮我们上架不...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0">基础版-B2C</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="有企业想批量订购我们的商品，也有个人散订购，以前我们都不接个人订单，现在快递普及消费者及企业都可以使用我们的商品，这一切都要感谢峰程7080全体工作人员。">有企业想批量订购我们...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0">基础版-C2C</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="峰程7080专门帮我们搭建一个自主购物下订单商城，供目前散客使用，这一块设计及运营对我们企业发展及消费者体验相当好。">峰程7080专门帮我们...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0" TITLE="基础版-News marketing">基础版-News...</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="这个星期本来有几个大客户对我们企业生产及供货能力表示怀疑，查看到国内主流权威媒体有我们的品牌及产品报道，果断下订单签定合作协议。">这个星期本来有几个...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0" TITLE="基础版-Video marketing">基础版-Video...</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="峰程7080工作人员亲自亲临我们的办公场地及生产场地，对我们整体生产、出货、办公、后续服务进行全程高清拍照及录制视频，同时将我们的品牌及产品信息发布目前国内主流的视频平台，这点对于不了解我们的实际能力，视频将是最好的诠释。">峰程7080工作人员亲自...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0" TITLE="基础版-advertising
marketing">基础版-adver...</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="总结来说一个字好，再加2个字very good!">总结来说一个字好，再...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>
                <%--3--%>
                <tr>
                    <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;3</td>
                    <td>FC006</td>
                    <td style="width:147px;color: #1994d3;font-size: 14px;" >网络推广</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0">加强版-SEO</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="6个月时间过去了，我们搜索一下核心关键词、目录关键词均有排名，在百度、SOGOU、360搜索都有显示，这点做到我们公司对峰程7080是相当认可的。">6个月时间过去了，我...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0">加强版-SNS</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="数据与我们没有交给峰程7080之前数据有6倍的翻值，在线咨询与联系我们多了。">数据与我们没有交给...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0">加强版-O2O</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="特别是节假日时线上我们活动与线下同步，最终交易在线下完成，从线上过来的消费比我们平时3个月的总数。">特别是节假日时线上...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0">加强版-B2B</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="经过半年的合作，反馈给我们的KPI及ROI，我们相当满意。">经过半年的合作，反...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0">加强版-B2C</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="经过半年的合作，反馈给我们的KPI及ROI，我们相当满意。">经过半年的合作，反...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0">加强版-C2C</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="经过半年的合作，反馈给我们的KPI及ROI，我们相当满意。">经过半年的合作，反...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0" title="加强版-News
 marketing">加强版-News...</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="经过半年的合作，反馈给我们的KPI及ROI，我们相当满意。">经过半年的合作，反...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0" title="加强版-Video marketing">加强版-Video...</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="经过半年的合作，反馈给我们的KPI及ROI，我们相当满意。">经过半年的合作，反...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td style="width:147px;color: #0d63f0" title="加强版-advertising
 marketing">加强版-adver...</td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td title="经过半年的合作，反馈给我们的KPI及ROI，我们相当满意。">经过半年的合作，反...</td>
                    <td style="color: #1994d3">好评</td>
                    <td>正常</td>
                    <td style="color: #333"><span style="color: #0D62F0">修改</span> &nbsp;|&nbsp;
                        <span style="color: red">删除</span></td>
                </tr>


            </table>
            <div>
                <div style="float: left;line-height: 36px;margin-left: 14px;"><input type="checkbox" placeholder="" class="checkAll" ng-model="m"></div>
                <div style="float: left;line-height: 36px;margin-left: 10px;" class="checkAll"> 全选  &nbsp;删除</div>
            </div>

            <div class="darbtnbox">
                <button class="thisfresh" data-toggle="modal" data-target="#myModapl2">添加</button>
                <button class="allfresh"  data-toggle="modal" data-target="#myModapl4">修改</button>
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

    });
</script>
</body>
</html>


<!--修改评论-->
<div class="modal fade" id="myModapl4" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog" >
        <div class="modal-content" style="width:620px;height: auto;padding-bottom: 20px;">
            <div >
                <button type="button"  data-dismiss="modal"
                        aria-hidden="true" style="background: transparent;color: #009F43;border: 0;position: relative;left: 584px;font-size:25px;">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>
            <div class="modal-body" style="margin-left: 18px;padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;">

                <div class="inner" style="height: auto">
                    <div class="draftartbox">
                        <form action="" method="post">
                            <div><span  class="draftartbox-left" >
                编号</span><input  type="text" placeholder="" >
                            </div>
                            <div>
                <span  class="draftartbox-left pjy" >
                订单标题</span>
                                <input type="text" placeholder="" >
                            </div>

                            <div>
                                <span class="draftartbox-left pjy" >用户类型</span>
                                <label>
                                    <select style="font-weight: 400">
                                        <option>会员</option>
                                        <option>来宾</option>
                                    </select>
                                </label>
                                <p style="position: relative;left:150px;top: -24px">可选其中一项</p>
                            </div>
                            <div>
                                <span class="draftartbox-left pjy" >评价类型</span>
                                <label>
                                    <select style="font-weight: 400">
                                        <option>好评</option>
                                        <option>差评</option>
                                    </select>
                                </label>
                                <p style="position: relative;left:150px;top: -24px">可选其中一项</p>
                            </div>

                            <div>
                                <span class="draftartbox-left pjy" >用户昵称/ID</span>
                                <input type="text" placeholder="" style="margin-left: 16px" >
                            </div>
                            <div>
                                <span class="draftartbox-left pjy" >评价语</span>
                                <textarea placeholder=""></textarea>
                                <p style="position: relative;left:90px;">可自定义评语</p>
                            </div>
    <button style="margin:20px 0 0 35px;width:166px;height: 40px;border-radius:6px;border: 0;color:#fff;background: #2196d4;">添加到草稿</button>
                            <button  style="margin:20px 0 0 235px;width:166px;height: 40px; border-radius:6px;border: 0;color:#fff;background: #2196d4;">提交</button>
                        </form>
                    </div>


                    <div></div>
                </div>

            </div>

        </div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!--添加评论-->
<div class="modal fade" id="myModapl2" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog" >
        <div class="modal-content" style="width:620px;height: auto;padding-bottom: 20px;">
            <div >
                <button type="button"  data-dismiss="modal"
                        aria-hidden="true" style="background: transparent;color: #009F43;border: 0;position: relative;left: 584px;font-size:25px;">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>
            <div class="modal-body" style="margin-left: 18px;padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;">

                <div class="inner" style="height: auto">
                    <div class="draftartbox">
                        <form action="" method="post">
                            <div><span  class="draftartbox-left" >
                编号</span><input  type="text" placeholder="" >
                            </div>
                            <div>
                <span  class="draftartbox-left pjy" >
                订单标题</span>
                                <input type="text" placeholder="" >
                            </div>

                            <div>
                                <span class="draftartbox-left pjy" >用户类型</span>
                                <label>
                                    <select style="font-weight: 400">
                                        <option>会员</option>
                                        <option>来宾</option>
                                    </select>
                                </label>
                                <p style="position: relative;left:150px;top: -24px">可选其中一项</p>
                            </div>
                            <div>
                                <span class="draftartbox-left pjy" >评价类型</span>
                                <label>
                                    <select style="font-weight: 400">
                                        <option>好评</option>
                                        <option>差评</option>
                                    </select>
                                </label>
                                <p style="position: relative;left:150px;top: -24px">可选其中一项</p>
                            </div>

                            <div>
                                <span class="draftartbox-left pjy" >用户昵称/ID</span>
                                <input type="text" placeholder="" style="margin-left: 16px" >
                            </div>
                            <div>
                                <span class="draftartbox-left pjy" >评价语</span>
                                <textarea placeholder=""></textarea>
                                <p style="position: relative;left:90px;">可自定义评语</p>
                            </div>

    <button style=" margin:20px 0 0 35px; width:166px;height: 40px;border-radius:6px;border: 0;color:#fff;background: #2196d4;">添加到草稿</button>
                            <button  style="margin:20px 0 0 235px;width:166px;height: 40px; border-radius:6px;border: 0;color:#fff;background: #2196d4;">提交</button>
                        </form>
                    </div>


                    <div></div>
                </div>

            </div>

        </div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
