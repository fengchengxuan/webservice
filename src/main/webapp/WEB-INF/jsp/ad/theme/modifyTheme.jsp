<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>修改专题</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/column.css" type="text/css">
    <style>
        .Stars img{
            margin: 4px 0 0 7px;
        }
        .xingxing>div{
            margin-bottom: 20px;
        }
       .Stars a:hover { text-decoration: none; }
        .Stars .clearfix::after{ display:block; content:''; height:0; overflow:hidden; clear:both;}
        /*星星样式*/
        .Stars .content{ width:600px; margin:0 auto; padding-top:20px;}
        .Stars .title{ margin-bottom:10px;}
        .block{ width:100%; margin:0 0 20px 0; padding-left:50px; line-height:21px;}
        .block .star_score{ float:left;}
        .star_list{height:21px;margin:50px; line-height:21px;}
        .block p,.block .attitude{ padding-left:20px; line-height:21px; display:inline-block;}
        .block p span{ color:#C00; font-size:16px; font-family:Georgia, "Times New Roman", Times, serif;}
        .star_score {  width:200px; height:28px;  position:relative; }
        .star_score a{ height:28px; display:block; text-indent:-999em; position:absolute;left:0;}
        .starttwo .star_score ,
        .starttwo1 .star_score,
        .starttwo2 .star_score,
        .starttwo3 .star_score,
        .starttwo4 .star_score,
        .starttwo5 .star_score,
        .starttwo6 .star_score,
        .starttwo7 .star_score,
        .starttwo8 .star_score

        { background:url(${ctx}/static/background/images/Stars0.png);
            position: relative;top: 4px;
        }

         .starttwo .star_score a.clibg,
        .starttwo1 .star_score a.clibg,
        .starttwo2 .star_score a.clibg,
        .starttwo3 .star_score a.clibg,
        .starttwo4 .star_score a.clibg,
        .starttwo5 .star_score a.clibg,
        .starttwo6 .star_score a.clibg,
        .starttwo7 .star_score a.clibg,
        .starttwo8 .star_score a.clibg
        { background:url(${ctx}/static/background/images/Stars.png);left:0;}

        /*星星样式*/
        .show_number{ padding-left:50px; padding-top:20px;}
        .show_number li{ width:240px; border:1px solid #ccc; padding:10px; margin-right:5px; margin-bottom:20px;}
        .show_number li span{ display:inline-block; line-height:21px;}

    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=false;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=false;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox" style="height: auto;">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>广告管理</span>
            <span>></span>
            <span>专题管理</span>
            <span>></span>
            <span>添加专题</span>
        </div>
        <!-- 内部内容 -->
        <div class="inner inner-1" style=" width: 980px;height:auto;background-color: white;padding: 0 0 30px 0;">
            <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;添加专题</div>
            <!--专题名称-->
            <form action="" method="post">
            <div class="title-tb">
                <span class="title-tb-1">专题名称</span>
                <input type="text" id="SpecialName" placeholder="">
                <span class="title-tb-2" id="titlePrompt">可自定义专题名称</span>
            </div>
            <!--Title 专题标题-->
            <div class="title-tb bt-gjc">
                <span class="title-tb-1">专题标题</span>
                <textarea id="SpecialTitle" placeholder=""></textarea>
                <span class="title-tb-2 title-tb-2-1">可自定义专题标题</span></div>
            <!--KeyWords 专题关键词-->
            <div class="title-tb bt-gjc">
                <span class="title-tb-1">专题关键词</span>
                <textarea id="SpecialKey" placeholder=""></textarea>
                <span class="title-tb-2 title-tb-2-1">可自定义关键词</span></div>
            <!--Description 图片描述-->
            <div class="title-tb">
                <span class="title-tb-1">图片描述</span>
                <textarea id="Description" placeholder=""></textarea>
                <span class="title-tb-2 title-tb-2-2">可自定义专题描述</span></div>
            <!--专题链接地址-->
            <div class="title-tb">
                <span class="title-tb-1">专题链接地址</span>
                <input type="text" id="SpecialLink" placeholder="">
                <span class="title-tb-2">可自定义专题链接地址</span>
            </div>
            <!--专题结构-->
            <div class="title-tb">
                <span class="title-tb-1">专题结构</span>
                <label>
                <select class="title-tb-3" id="Structure">
                    <option>默认</option>
                    <option>左右结构</option>
                    <option>上下结构</option>
                    <option>自定义结构</option>
                </select>
                </label>
                <span class="title-tb-2">可自定义选择</span>
            </div>
                <!--专题类型-->
                <div class="title-tb">
                    <span class="title-tb-1">专题类型</span>
                    <label>
                    <select class="title-tb-3" id="speType">
                        <option>广告</option>
                        <option>产品</option>
                        <option>活动</option>
                        <option>其他</option>
                    </select>
                    </label>
                    <span class="title-tb-2">可自定义选择</span>
                </div>
            <!--专题状态-->
            <div class="title-tb">
                <span class="title-tb-1">专题状态</span>
                <label>
                <select class="title-tb-3" id="State">
                    <option>正常</option>
                    <option>草稿</option>
                    <option>删除</option>
                </select>
                </label>
                <span class="title-tb-2">可自定义选择</span>
            </div>
            <!--创建专题操作人-->
            <div class="title-tb">
                <span class="title-tb-1">创建专题操作人</span>
                <label>
                <select class="title-tb-3" id="AdminType">
                    <option>系统管理员</option>
                    <option>运营管理员</option>
                    <option>普通管理员</option>
                    <option>编辑管理员</option>
                </select>
                </label>
                <span class="title-tb-2">可自定义选择</span>
            </div>




                <div class="add-1110">

                    <div class="title-tb">
                        <span class="title-tb-1">客户名称</span>
                        <input type="text" id="UserName" placeholder="">
                    </div>
                    <div class="title-tb">
                        <span class="title-tb-1">制作日期</span>
                        <input type="text" id="MakingDate" placeholder="">
                    </div>
                    <div class="title-tb">
                        <span class="title-tb-1">交付日期</span>
                        <input type="text" id="DeliveryDate" placeholder="">
                    </div>
                    <div class="title-tb">
                        <span class="title-tb-1">演示地址</span>
                        <input type="text" id="DemoAddress" placeholder="">
                    </div>

                </div>


                <div>
                    <div style="width: 151px;height: 37px;text-align: center;line-height: 37px;background: #1b95d3;color: white;margin: 20px auto">客户星级</div>

                    <div class="xingxing">

                        <div style="width: 283px;height: 37px;background: url(${ctx}/static/background/images/add-images-bg.jpg);float: left;margin-left: 20px;font-size: 14px">
                            <div style="width: 79px;float: left;line-height: 37px;color: white;text-align: center">
                                页面结构
                            </div>
                            <div class="Stars">
                                <div class="starttwo1 block clearfix">
                                    <div  class="star_score" id="pageStructure"></div>
                                    <input type="hidden" id="structureVal" placeholder="">
                                </div>
                            </div>

                        </div>
                        <div style="width: 308px;height: 37px;background: url(${ctx}/static/background/images/add-images-bg1.jpg);float: left;margin-left: 20px;font-size: 14px">
                            <div style="width: 96px;float: left;line-height: 37px;color: white;text-align: center">
                                页面美观度
                            </div>

                            <div class="Stars" >
                                <div class="starttwo2 block clearfix" id="aesthetics">
                                    <input type="hidden" id="aestheticsVal" placeholder="">
                                    <div  class="star_score"></div>
                                </div>
                            </div>

                        </div>
                        <div style="width: 308px;height: 37px;background: url(${ctx}/static/background/images/add-images-bg1.jpg);float: left;margin-left: 20px;font-size: 14px">
                            <div style="width: 96px;float: left;line-height: 37px;color: white;text-align: center">
                                网站程序使用
                            </div>

                            <div class="Stars" >
                                <div class="starttwo3 block clearfix" id="appaction">
                                    <input type="hidden" id="appactionVal" placeholder="">
                                    <div  class="star_score"></div>
                                </div>
                            </div>

                        </div>

                        <div style="width: 283px;height: 37px;background: url(${ctx}/static/background/images/add-images-bg.jpg);float: left;margin-left: 20px;font-size: 14px">
                            <div style="width: 79px;float: left;line-height: 37px;color: white;text-align: center">
                                运营
                            </div>
                            <div class="Stars">
                                <div class="starttwo4 block clearfix" id="operate">
                                    <input type="hidden" id="operateVal" placeholder="">
                                    <div  class="star_score"></div>
                                </div>
                            </div>

                        </div>
                        <div style="width: 308px;height: 37px;background: url(${ctx}/static/background/images/add-images-bg1.jpg);float: left;margin-left: 20px;font-size: 14px">
                            <div style="width: 96px;float: left;line-height: 37px;color: white;text-align: center">
                                营销
                            </div>

                            <div class="Stars" >
                                <div class="starttwo5 block clearfix" id="marketing">
                                    <input type="hidden" id="marketingVal" placeholder="">
                                    <div  class="star_score"></div>
                                </div>
                            </div>

                        </div>
                        <div style="width: 308px;height: 37px;background: url(${ctx}/static/background/images/add-images-bg1.jpg);float: left;margin-left: 20px;font-size: 14px">
                            <div style="width: 96px;float: left;line-height: 37px;color: white;text-align: center">
                                文案
                            </div>

                            <div class="Stars" >
                                <div class="starttwo6 block clearfix" id="copy">
                                    <input type="hidden" id="copyVal" placeholder="">
                                    <div  class="star_score"></div>
                                </div>
                            </div>

                        </div>

                        <div style="width: 283px;height: 37px;background: url(${ctx}/static/background/images/add-images-bg.jpg);float: left;margin-left: 20px;font-size: 14px">
                            <div style="width: 79px;float: left;line-height: 37px;color: white;text-align: center">
                                十二数据
                            </div>
                            <div class="Stars">
                                <div class="starttwo7 block clearfix" id="data">
                                    <input type="hidden" id="dataVal" placeholder="">
                                    <div  class="star_score"></div>
                                </div>
                            </div>

                        </div>
                        <div style="width: 308px;height: 37px;background: url(${ctx}/static/background/images/add-images-bg1.jpg);float: left;margin-left: 20px;font-size: 14px">
                            <div style="width: 96px;float: left;line-height: 37px;color: white;text-align: center">
                                总体
                            </div>

                            <div class="Stars" >
                                <div class="starttwo8 block clearfix" id="population">
                                    <input type="hidden" id="populationVal" placeholder="">
                                    <div  class="star_score"></div>
                                </div>
                            </div>

                        </div>
                        <div style="width: 308px;height: 37px;background: url(${ctx}/static/background/images/add-images-bg1.jpg);float: left;margin-left: 20px;font-size: 14px">
                            <div style="width: 96px;float: left;line-height: 37px;color: white;text-align: center">
                                工作报告
                            </div>

                            <div class="Stars" >
                                <div class="starttwo block clearfix" id="workReportion">
                                    <input type="hidden" id="workReportionVal" placeholder="">
                                    <div  class="star_score" id="star"></div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            <div class="title-tb" style="clear: both">
                <button class="button1" type="button">添加</button>
                <button class="button" type="reset">取消</button>
            </div>
            </form>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js"></script>
<script src="${ctx}/static/background/js/jquery-1.9.1.min.js"></script>
<script>
    $(document).ready(function () {
       var code= '${param.code}';
      if(code!="" && code!=null){
          $("#SpecialName").val(code);
          $.ajax({
              url : '${ctx}/Special/findEntity',
              type : 'POST',
              data:"specialName="+code,
              async:true,
              cache:false,
              dataType : 'json',
              success : function(data){
                  if(data.data!=null){
                      var SpecialObj=data.data;
                      $("#SpecialTitle").val(SpecialObj.specialTitle);
                      $("#SpecialKey").val(SpecialObj.specialKey);
                      $("#Description").val(SpecialObj.description);
                      $("#SpecialLink").val(SpecialObj.specialLink);
                      $("#Structure").val(SpecialObj.structure);
                      $("#State").val(SpecialObj.state);
                      $("#AdminType").val(SpecialObj.adminType);
                      $("#UserName").val(SpecialObj.userName);
                      $("#MakingDate").val(SpecialObj.makingDate);
                      $("#DeliveryDate").val(SpecialObj.deliveryDate);
                      $("#DemoAddress").val(SpecialObj.demoAddress);
                      var evalObj= SpecialObj.evalEntity;
                      var pageStructure= evalObj.pageStructure;
                      $(".xingxing").find("#pageStructure").find("a").eq(pageStructure-parseInt(1)).click();
                      var pageAesthetics= evalObj.pageAesthetics;
                      $(".xingxing").find("#aesthetics").find("a").eq(pageAesthetics-parseInt(1)).click();
                      var pageAppaction= evalObj.pageAppaction;
                      $(".xingxing").find("#appaction").find("a").eq(pageAppaction-parseInt(1)).click();
                      var operate= evalObj.operate;
                      $(".xingxing").find("#operate").find("a").eq(operate-parseInt(1)).click();
                      var marketing= evalObj.marketing;
                      $(".xingxing").find("#marketing").find("a").eq( marketing-parseInt(1)).click();
                      var pageCopy= evalObj.pageCopy;
                      $(".xingxing").find("#copy").find("a").eq( pageCopy-parseInt(1)).click();
                      var data= evalObj.data;
                      $(".xingxing").find("#data").find("a").eq( data-parseInt(1)).click();
                      var population= evalObj.population;
                      $(".xingxing").find("#population").find("a").eq( population-parseInt(1)).click();
                      var  workReport= evalObj. workReport;
                      $(".xingxing").find("#workReportion").find("a").eq(  workReport-parseInt(1)).click();
                  }
              }
          });
      }
    });
    function scoreFun(object, opts) {
        var defaults = {
            fen_d: 16,
            ScoreGrade: 10,
            nameScore: "fenshu",
            parent: "star_score",
            attitude: "attitude"
        };
        options = $.extend({}, defaults, opts);
        var countScore = object.find("." + options.nameScore);
        var startParent = object.find("." + options.parent);
        var atti = object.find("." + options.attitude);
        var now_cli;
        var fen_cli;
        var atu;
        var fen_d = options.fen_d;
        var len = options.ScoreGrade;
        startParent.width(fen_d * len);
        var preA = (5 / len);
        for (var i = 0; i < len; i++) {
            var newSpan = $("<a href='javascript:void(0)'></a>");
            newSpan.css({"left": 0, "width": fen_d * (i + 1), "z-index": len - i});
            newSpan.appendTo(startParent)

        }
        startParent.find("a").each(function (index, element) {
            $(this).click(function () {
                now_cli = index;
                show(index, $(this))
            });
            $(this).mouseenter(function () {
                show(index, $(this))
            });
            $(this).mouseleave(function () {
                if (now_cli >= 0) {
                    var scor = preA * (parseInt(now_cli) + 1);
                    startParent.find("a").removeClass("clibg");
                    startParent.find("a").eq(now_cli).addClass("clibg");
                    var ww = fen_d * (parseInt(now_cli) + 1);
                    startParent.find("a").eq(now_cli).css({"width": ww, "left": "0"});
                    if (countScore) {
                        countScore.text(scor)
                    }
                } else {
                    startParent.find("a").removeClass("clibg");
                    if (countScore) {
                        countScore.text("")
                    }
                }
            })
        });
        function show(num, obj) {
            var n = parseInt(num) + 1;
            var lefta = num * fen_d;
            var ww = fen_d * n;
            var scor = preA * n;
//            atu = options.types[parseInt(num)];
            object.find("a").removeClass("clibg");
            obj.addClass("clibg");
            obj.css({"width": ww, "left": "0"});
            countScore.text(scor);
            atti.text(atu)
        }
    }
</script>
<script>
    scoreFun($(".starttwo1"),{
         fen_d:40,//每一个a的宽度
        ScoreGrade:5//a的个数 10或者
    });
    scoreFun($(".starttwo2"),{
         fen_d:40,//每一个a的宽度
        ScoreGrade:5//a的个数 10或者
    });
    scoreFun($(".starttwo3"),{
         fen_d:40,//每一个a的宽度
        ScoreGrade:5//a的个数 10或者
    });
    scoreFun($(".starttwo4"),{
         fen_d:40,//每一个a的宽度
        ScoreGrade:5//a的个数 10或者
    });
    scoreFun($(".starttwo5"),{
         fen_d:40,//每一个a的宽度
        ScoreGrade:5//a的个数 10或者
    });
    scoreFun($(".starttwo6"),{
         fen_d:40,//每一个a的宽度
        ScoreGrade:5//a的个数 10或者
    });
    scoreFun($(".starttwo7"),{
         fen_d:40,//每一个a的宽度
        ScoreGrade:5//a的个数 10或者
    });
    scoreFun($(".starttwo8"),{
         fen_d:40,//每一个a的宽度
        ScoreGrade:5//a的个数 10或者
    });
    scoreFun($(".starttwo"),{
        fen_d:40,//每一个a的宽度
        ScoreGrade:5//a的个数 10或者
    })
    $(".xingxing").find("#pageStructure").find("a").eq(0).click(function () {
        $("#structureVal").val(1);
    });
    $(".xingxing").find("#pageStructure").find("a").eq(1).click(function () {
        $("#structureVal").val(2);
    });
    $(".xingxing").find("#pageStructure").find("a").eq(2).click(function () {
        $("#structureVal").val(3);
    });
    $(".xingxing").find("#pageStructure").find("a").eq(3).click(function () {
        $("#structureVal").val(4);
    });
    $(".xingxing").find("#pageStructure").find("a").eq(4).click(function () {
        $("#structureVal").val(5);
    });
    //评价——页面美化设值
    $(".xingxing").find("#aesthetics").find("a").eq(0).click(function () {
        $("#aestheticsVal").val(1);
    });
    $(".xingxing").find("#aesthetics").find("a").eq(1).click(function () {
        $("#aestheticsVal").val(2);
    });
    $(".xingxing").find("#aesthetics").find("a").eq(2).click(function () {
        $("#aestheticsVal").val(3);
    });
    $(".xingxing").find("#aesthetics").find("a").eq(3).click(function () {
        $("#aestheticsVal").val(4);
    });
    $(".xingxing").find("#aesthetics").find("a").eq(4).click(function () {
        $("#aestheticsVal").val(5);
    });
    //评价——网站程序设值
    $(".xingxing").find("#appaction").find("a").eq(0).click(function () {
        $("#appactionVal").val(1);
    });
    $(".xingxing").find("#appaction").find("a").eq(1).click(function () {
        $("#appactionVal").val(2);
    });
    $(".xingxing").find("#appaction").find("a").eq(2).click(function () {
        $("#appactionVal").val(3);
    });
    $(".xingxing").find("#appaction").find("a").eq(3).click(function () {
        $("#appactionVal").val(4);
    });
    $(".xingxing").find("#appaction").find("a").eq(4).click(function () {
        $("#appactionVal").val(5);
    });
    //评价——运营设值
    $(".xingxing").find("#operate").find("a").eq(0).click(function () {
        $("#operateVal").val(1);
    });
    $(".xingxing").find("#operate").find("a").eq(1).click(function () {
        $("#operateVal").val(2);
    });
    $(".xingxing").find("#operate").find("a").eq(2).click(function () {
        $("#operateVal").val(3);
    });
    $(".xingxing").find("#operate").find("a").eq(3).click(function () {
        $("#operateVal").val(4);
    });
    $(".xingxing").find("#operate").find("a").eq(4).click(function () {
        $("#operateVal").val(5);
    });
    //评价——营销设值
    $(".xingxing").find("#marketing").find("a").eq(0).click(function () {
        $("#marketingVal").val(1);
    });
    $(".xingxing").find("#marketing").find("a").eq(1).click(function () {
        $("#marketingVal").val(2);
    });
    $(".xingxing").find("#marketing").find("a").eq(2).click(function () {
        $("#marketingVal").val(3);
    });
    $(".xingxing").find("#marketing").find("a").eq(3).click(function () {
        $("#marketingVal").val(4);
    });
    $(".xingxing").find("#marketing").find("a").eq(4).click(function () {
        $("#marketingVal").val(5);
    });
    //评价——文案设值
    $(".xingxing").find("#copy").find("a").eq(0).click(function () {
        $("#copyVal").val(1);
    });
    $(".xingxing").find("#copy").find("a").eq(1).click(function () {
        $("#copyVal").val(2);
    });
    $(".xingxing").find("#copy").find("a").eq(2).click(function () {
        $("#copyVal").val(3);
    });
    $(".xingxing").find("#copy").find("a").eq(3).click(function () {
        $("#copyVal").val(4);
    });
    $(".xingxing").find("#copy").find("a").eq(4).click(function () {
        $("#copyVal").val(5);
    });
    //评价——十一数据设值
    $(".xingxing").find("#data").find("a").eq(0).click(function () {
        $("#dataVal").val(1);
    });
    $(".xingxing").find("#data").find("a").eq(1).click(function () {
        $("#dataVal").val(2);
    });
    $(".xingxing").find("#data").find("a").eq(2).click(function () {
        $("#dataVal").val(3);
    });
    $(".xingxing").find("#data").find("a").eq(3).click(function () {
        $("#dataVal").val(4);
    });
    $(".xingxing").find("#data").find("a").eq(4).click(function () {
        $("#dataVal").val(5);
    });
    //评价——总体设值
    $(".xingxing").find("#population").find("a").eq(0).click(function () {
        $("#populationVal").val(1);
    });
    $(".xingxing").find("#population").find("a").eq(1).click(function () {
        $("#populationVal").val(2);
    });
    $(".xingxing").find("#population").find("a").eq(2).click(function () {
        $("#populationVal").val(3);
    });
    $(".xingxing").find("#population").find("a").eq(3).click(function () {
        $("#populationVal").val(4);
    });
    $(".xingxing").find("#population").find("a").eq(4).click(function () {
        $("#populationVal").val(5);
    });
    //评价——工作报告设值
    $(".xingxing").find("#workReportion").find("a").eq(0).click(function () {
        $("#workReportionVal").val(1);
    });
    $(".xingxing").find("#workReportion").find("a").eq(1).click(function () {
        $("#workReportionVal").val(2);
    });
    $(".xingxing").find("#workReportion").find("a").eq(2).click(function () {
        $("#workReportionVal").val(3);
    });
    $(".xingxing").find("#workReportion").find("a").eq(3).click(function () {
        $("#workReportionVal").val(4);
    });
    $(".xingxing").find("#workReportion").find("a").eq(4).click(function () {
        $("#workReportionVal").val(5);alert("点击值="+$("#workReportionVal").val())
    });
    //评价——页面结构设值
    $(".button1").click(function () {
        $.ajax({
            url : '${ctx}/Special/update',
            type : 'POST',
            data:"specialName="+$("#SpecialName").val()+"&specialTitle="+$("#SpecialTitle").val()+"&specialKey="+$("#SpecialKey").val()
            +"&description="+$("#Description").val() +"&specialLink="+$("#SpecialLink").val()+"&structure="+$("#Structure").val()+
            "&state="+$("#State").val()+"&adminType="+$("#AdminType").val()+"&userName="+$("#UserName").val()+"&makingDate="+$("#MakingDate").val()+
            "&deliveryDate="+$("#DeliveryDate").val()+ "&demoAddress="+$("#DemoAddress").val()+ "&pageStructure="+$("#structureVal").val()+
            "&pageAesthetics="+$("#aestheticsVal").val()+"&appaction="+$("#appactionVal").val()+"&operate="+$("#operateVal").val()+
            "&marketing="+$("#marketingVal").val()+"&copy="+$("#copyVal").val()+"&data="+$("#dataVal").val()+"&population="+$("#populationVal").val()+
            "&workReport="+$("#workReportionVal").val()+"&speType="+$("#speType").val(),
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data){
                if(data!=null){
                    alert(data);
                }
            }
        });
        $("#titlePrompt").text("已经有相同标题");
    })
</script>

</body>
</html>
