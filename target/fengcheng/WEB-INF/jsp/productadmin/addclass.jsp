<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>添加类产品</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/revnews.css">
    <style>
        .list20{
            background: #3eb7f3;
        }
        .select_model{
            height: 42px;
            position: relative;
        }
        .Selected{
            padding-left: 4px;
            border: 1px solid #ccc;
            height: 31px;
            line-height: 27px;
            cursor: pointer;
            text-align: center;
            font-size: 12px;
            margin: 20px 0 0 97px;
        }
        .ddoli{
            position: absolute;
            left: 97px;
            z-index: 6;
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
            font-size: 12px;
            border-top: 1px solid #ccc;
        }
        #ddoli ul li{
            width: 95px;
            height: auto;
        }
        #ddoli2 ul li{
            width: 115px;
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
    <link rel="stylesheet" href="${ctx}/static/background/css/index.css">
</head>
<style>
    select{
        margin-left: 0;
        border-radius: 0;
        -webkit-appearance: none;
        background: url(${ctx}/static/background/images/Arrow.jpg) no-repeat scroll right center transparent;
    }
    .contener .inner .setnewsbox span{
        letter-spacing: 6px;
    }
    #time span{
        letter-spacing: 0;
    }
    .contener .inner .setnewsbox{
        height: auto;
        padding-bottom: 10px;
    }

    #searchresult{
        left: 10.6%;
        top: 46.44%;
        position: relative;
        z-index: 1;
        background: #ffffff;
        border-top: none;
        width: 512px;
        height: 0;
        cursor: pointer;
    }

    .fanan div span{
        text-align: right;
        width: 82px;
        display: block;
        float: left;
    }.fanan>div{
         margin-top: 20px;
     }
    .text-fangan input{
        width: 60px;
        height: 40px;
    }
    .pay li.time span{
        display: inline-block;
        width: 80px;
        height: 30px;
        border: 1px solid #BFBFBF;
        border-left-width: 1px;
        border-left-style: solid;
        border-left-color: rgb(191, 191, 191);
        border-left: none;
        text-align: center;
        line-height: 30px;
        cursor: pointer;
    }
    .pay li.num span{
        color: white;
        display: inline-block;
        background-color: #1994d3;
        border: 1px solid #BFBFBF;
        width: 35PX;
        height: 30PX;
        text-align: center;
        line-height: 30px;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        -khtml-user-select: none;
        -ms-user-select: none;
    }
    .pay li.num i{
        display: inline-block;
        width: 60px;
        height: 30px;
        border-bottom: 1px solid #BFBFBF;
        border-top: 1px solid #BFBFBF;
        font-style: normal;
        text-align: center;
        line-height: 30px;
    }
    #proNumber{
        float: left;
    }
    .pay li.time span.active {
        background-color: #00A2E5;
        color: #FFFFFF;}
    .time{
        clear: both;position: relative;
        top: 20px;
    }
</style>
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

            <a href="${ctx}/admin/hyperchannel">  <span>产品管理</span></a>
            <span>></span>
            <span>添加类产品</span>
        </div>
        <div class="inner" style="height: auto">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;您正在添加类产品操作</div>
            <label style="font-weight: 400">
                <%--<select name="" id="productType" class="revnewselect" style="font-weight: 400">--%>
                    <%--<option value="">选择产品发布类型</option>--%>
                    <%--<option value="develop">网站建设/程序/APP研发与定制</option>--%>
                    <%--<option value="plan">网络计划与制定</option>--%>
                    <%--<option value="marketing">网络营销</option>--%>
                    <%--<option value="popularize">网络推广</option>--%>
                    <%--<option value="document">网络文案</option>--%>
                    <%--<option value="video">视频制作与推广</option>--%>
                    <%--<option value="seo">搜索优化</option>--%>
                    <%--<option value="media">网络媒体</option>--%>
                    <%--<option value="baike">词条/百科</option>--%>
                    <%--<option value="operation">网络运营</option>--%>
                    <%--<option value="data">数据统计</option>--%>
                    <%--<option value="advertisement">网络传媒及线上线下各类广告投放</option>--%>
                <%--</select>--%>

                <div class="select_model">
                    <div class="Selected" id="Selected"><span style="font-size: 12px">选择产品发布类型</span>&nbsp;<img src="${ctx}/static/background/images/right-l.png" alt="下拉"></div>
                    <div style="display: none" class="ddoli" id="ddoli">
                        <ul>
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
            </label>
            <div class="setnewsbox">
                <div class="newstitle">
                    <span class="head" style="letter-spacing: 5px" >产品标题</span>
                    <input type="text" id="productTitle" placeholder="">
                    <div id="searchresult"></div>
                    <p class="end">产品标题字数不能超30个字，超出字数无法进行提交。</p>
                </div>
                <div class="newkeyw" style="margin: 30px 0 0 0">
                    <span class="head" style="letter-spacing: 1px">产品关键词</span>
                    <input type="text" id="productKey" placeholder="">
                    <p class="end">整篇产品页最核心关键词及目标关键词、长尾关键词，字数15个字以内。</p>
                </div>
                <div class="abs" style="margin: 30px 0 0 0">
                    <span class="head" style="letter-spacing: 12px;position: relative;top:-50px">摘&nbsp;&nbsp;要</span>
                    <textarea class="abstext" id="productAbstract" placeholder=""></textarea>
                    <p class="end" style="position: relative;top:38px">
                        <%--产品页摘要字数不能超100个字，超出字数无法进行提交。--%>
                    </p>
                </div>

                <div class="fanan">
<hr>
                    <div>
                         <span>
                    需求定位
                         </span>
                        <input type="text" name="" id="demand" placeholder="" style="width: 239px;height: 33px">
                    </div>

                    <div>
                         <span >
                    服务标准
                         </span>
                        <label style="font-weight: 400">

                            <div class="select_model">
                                <div class="Selected" id="Selected2" style="margin: 0 0 0 10px;"><span style="font-size: 12px;">体验版</span>&nbsp;<img src="${ctx}/static/background/images/right-l.png" alt="下拉"></div>
                                <div style="display: none;left: 10px;" class="ddoli" id="ddoli2">
                                    <ul>
                                        <li style="border-top: none">体验版</li>
                                        <li>基础版</li>
                                        <li>加强版</li>
                                        <li>商业版</li>
                                        <li>定制版</li>

                                    </ul>
                                </div>
                            </div>
                        </label>

                    </div>




                    <div style="margin-left: 12px;margin-bottom: 50px;    margin-top: 20px;">
                        <div>
                            <ul class="pay">
                                <li class="num">
                                    <p style="width: 82px;letter-spacing: 6px; margin-right: 10px;margin-left: -10px;float: left;">购买数量</p>
                                    <span class="rmove">-</span><i class="number" id="proNumber">1</i><span class="add">+</span>
                                </li>
                                <li class="time" id="time">
                                    <p style="float: left;width: 82px;position: relative;left: -10px;letter-spacing: 6px;">购买时长</p>
                                    <span class="t" style="border-left: 1px solid #BFBFBF;">试客体验</span><span class="t active">3个月</span><span class="t">6个月</span><span class="t">1年</span><span class="t">2年</span><span class="t">3年</span><span class="t">4年</span><span class="t">5年</span>
                                </li>
                            </ul>
                        </div>
                    </div>

<%--添加按钮--%>
<div>
    <input id="submit" type="submit" value="确定添加" style="border: 0;width: 146px;height: 46px;color: white;background: #1994d3;letter-spacing: 3px;    font-size: 18px;border-radius: 4px;margin: 20px 0 20px 335px;">
</div>

                </div>
            </div>

        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8" src="${ctx}/static/background/editor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${ctx}/static/background/editor/ueditor.all.js"></script>
<script type="text/javascript" charset="utf-8" src="${ctx}/static/background/editor/lang/zh-cn/zh-cn.js"></script>
<script src="${ctx}/static/background/editor/ueditor.parse.js" type="text/javascript"></script>
<script src="${ctx}/static/background/js/jquery-1.11.3.js" type="text/javascript"></script>
<script src="${ctx}/static/background/js/md5.js" type="text/javascript"></script>
<script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例




    //选择时间确定价钱

    //			$("#time span").click(function(){
    //				var time=$(this).html();
    //				if(this=='试客体验'){
    //					if()
    //				}
    //			})

    $('.pay .time span').click(function() {
        $(this).addClass("active");
        $(this).siblings().removeClass("active");
    });
    //btn
    $('.pay .num .add').click(function(){
        var num = $('.pay .number').html();
        console.log(num);
        if(num<99){
            num++;
            $('.pay .number').html(num);
        }
    });
    $('.pay .num .rmove').click(function(){
        var num = $('.pay .number').html();
        if(num>0){
            num--;
            $('.pay .number').html(num);
        }
    });
    $("#preferential").click(function () {
        if($(this).prev().is(':checked')){

        }else{
            alert("请打钩");
            $(this).val("");
            $(this).blur();
        };
    });
    var timeValue;
    $(document).ready(function () {
        $("#time").find("span").eq(1).click();
        timeValue= $("#time").find("span").eq(1).text();
    })
    $(".t").click(function () {
        timeValue=$(this).text();
    })
    $("#submit").click(function(){

        $.ajax({
            url : '${ctx}/Product/addClass',
            type : 'POST',
            data : "productType="+$("#productType").val()+"&productTitle="+$("#productTitle").val()+"&productService="+$("#service").val()+"&productKey="+$("#productKey").val()+
            "&productAbstract="+$("#productAbstract").val()+"&proNumber="+$("#proNumber").text()+ "&demand="+$("#demand").val()+"&timeValue="+timeValue,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data){
                if(data!=null){
                    alert(data[0]);
                    if(data[0]=="信息添加成功"){
                        window.location.href="${ctx}/admin/addclass";
                    }
                }

            }
        });
    })

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