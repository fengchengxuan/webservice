<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>全部咨询</title>
     <link rel="stylesheet" href="${ctx}/static/front/css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="${ctx}/static/background/css/top.css">
    <link rel="stylesheet" href="${ctx}/static/background/css/navstyle.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/advice.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <style>
        .list15{
            background: #3eb7f3;
        }
        label{
            font-weight: 400;
        }
        .darbtnbox{
            clear: both;
        }
        .darbtnbox button{
            border-radius: 0;
        }
        #revsion-box-all,#add-box-all{

            width: 100%;
            height: 800px;
            position: fixed;
            top: 0;
            background: rgba(0,0,0,0.3);
            display: none;
        }
        .order-bi p{border: 0;width: 29px;height: 33px;
            cursor: pointer;
            position: relative;left:701px;top: 0;
        }
        .inner-title{
            margin:10px 0 0 35px
        }
        .inner-revision{
            width: 680px;height: 610px;
            background-color: white;
            margin: 40px auto 0 auto;
        }
    </style>
    <style>
        #totalNum{
            font-family: "微软雅黑", sans-serif;
            color: #333;
        }
        .inner ul li{
        background: #1993d4;
        font-size: 14px;
    }
   li .select_model{
        height: 42px;
        position: relative;
    }
        label .select_model{
            color: #999;
            position: relative;
        }
   label .Selected{
       border-radius: 4px;
        padding-left: 4px;
        border: 1px solid #ccc;
        height: 24px;
        line-height: 20px;
        cursor: pointer;
        text-align: center;
        font-size: 14px;
    }.Selected{
         height: 43px;
         line-height: 43px;
         cursor: pointer;
         text-align: center;
         font-size: 14px;
         border-left: 1px solid #2090cc;
     }
        li .Selected{
            height: 43px;
            line-height: 43px;
            cursor: pointer;
            text-align: center;
            font-size: 14px;
            border-left: 1px solid #2090cc;
        }.ddoli{
             position: absolute;
             left: 0;
             top: 44px;
         }

   li .ddoli{
        position: absolute;
        left: 0;
        top: 44px;
    }

        label .ddoli{
            position: absolute;
            left: 0;
            z-index: 5;
        }
    .ddoli ul {
        color: #999;
        border: 1px solid #ccc;
        border-top: none;
        padding-right: 1px;
    }
    .ddoli ul li{
        cursor: pointer;
        height: auto;
        line-height: 30px;
        text-align: center;
        background: #ffffff;
        color: #666;
        font-size: 12px;
        border-top: 1px solid #ccc;
        padding: 0 10px;
    }
    #ddoli ul li{
        width: 73px;
    }
    #ddoli2 ul li{
        width: 130px;
    }
    #ddoli3 ul li{
        width: 115px;
    }
    #ddoli4 ul li{
        width: 156px;
    }
    #ddoli5 ul li{
        width: 232px;
    }
    #ddoli6 ul li{
        width: 116px;
    }
    .ddoli ul li:hover{
        background: #24a1ee;
        color: #ffffff;
    }
    .contener .admlistbox{
        height: auto;
        padding-bottom: 25px;
    }#showConsult{
            width: 980px;
         }
    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=false;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=false;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>

<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>内容管理</span>
            <span>></span>
            <span>咨询管理</span>
            <span>></span>
            <span>全部咨询</span>
        </div>

        <!-- 内部内容 -->
        <div class="inner inner-1" style=" width: 980px;height: 70px;
            background-color: white;">
            <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;全部咨询</div>
            <div class="draftart-top">
                <button class="keywords">咨询问题</button>
                <input style="width: 269px" type="text"  placeholder="例如：峰程7080，500名，免费体验，名额" id="newsKeyValue">
                <button class="key-search" id="KeySearch">搜索</button>
                <button class="search-title">标题搜索</button>
                <input style="width: 283px" type="text" placeholder="例如：峰程7080开放500名免费中小型企业体验名额诚邀您参与" id="newsTilevalue">
                <button class="title-search" id="TitleSearch">搜索</button>
            </div>
        </div>
        <div class="inner inner-2" style=" width: 980px;height: 850px;
            background-color: white;position: relative;top: 38px">
            <ul style="color:white;">
                <li  style="text-align:center;float: left;height: 43px;line-height: 43px;width: 55px;">序号</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:93px;">编号</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:76px">
                    <div class="select_model">
                        <div class="Selected" id="Selected"><span>用户</span><img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli">
                            <ul>
                                <li style="border-top: none">用户</li>
                                <li>手机用户</li>
                                <li>邮箱用户</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:133px">
                    <div class="select_model">
                        <div class="Selected" id="Selected2"><span>咨询类型</span><img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli2">
                            <ul>
                                <li style="border-top: none">售前</li>
                                <li>售后</li>
                                <li>保障</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:112px">咨询问题</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:233px">
                    <div class="select_model">
                        <div class="Selected" id="Selected5"><span>咨询时间</span><img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli5">
                            <ul>
                                <li style="border-top: none">咨询时间</li>
                                <li>回复时间</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:117px">
                    <div class="select_model">
                        <div class="Selected" id="Selected3"><span>咨询状态</span><img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli3">
                            <ul>
                                <li style="border-top: none">已答</li>
                                <li>未答</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:160px">
                    <div class="select_model">
                        <div class="Selected" id="Selected4"><span>咨询处理人</span><img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli4">
                            <ul>
                                <li style="border-top: none">系统管理员</li>
                                <li>运营管理员</li>
                                <li>普通管理员</li>
                                <li>编辑管理员</li>
                            </ul>
                        </div>
                    </div>
                </li>
                <%--<li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:135px">已答咨询</li>--%>
                <%--<li style="text-align:center;float: left;height: 43px;line-height: 43px;border-left: 1px solid #208ec9;width:118px">--%>
                    <%--<div class="select_model">--%>
                        <%--<div class="Selected" id="Selected6"><span>咨询处理结果</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>--%>
                        <%--<div style="display: none" class="ddoli" id="ddoli6">--%>
                            <%--<ul>--%>
                                <%--<li style="border-top: none">已处理</li>--%>
                                <%--<li>未处理</li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                </li>
            </ul>
            <div style="width: 980px;height: 60px;">
                <table style="border: 0;margin: 0;padding: 0;text-align: center;font-family: '微软雅黑',sans-serif;font-size: 12px;" id="showConsult">
                    <tr style="width: 980px;">
                        <td style="width: 27px"><input type="checkbox" placeholder="" name="subBox" readonly ng-checked="m"></td>
                        <td style="width: 20px;">1</td>
                        <td style="width: 55px">FC001</td>
                        <td style="width: 61px">来宾户</td>
                        <td style="width:100px">售前</td>
                        <td style="width:110px"><input type="text" value="这个学校里的老师好吗？" style="background: transparent;border: 0;text-overflow:ellipsis;
        overflow:hidden;white-space:nowrap;width:110px;" title="这个学校里的老师好吗"  disabled="disabled" ></td>
                        <td style="width:142px">2017年7月1日10：36</td>
                        <td style="width:100px">未答</td>
                        <td style="width:112px">系统管理员</td>


                    </tr>
                </table>
                <div>
                    <div style="float: left;line-height: 36px;margin-left: 8px;"><input type="checkbox" placeholder="" class="checkAll" ng-model="m"></div>
                    <div style="float: left;line-height: 36px;margin-left: 10px;" class="checkAll"> 全选  &nbsp;删除</div>
                </div>
            </div>


            <div style="position: relative;left:300px;top:650px;font-size: 16px;font-family:'黑体',sans-serif;color:#fff;">
                <div class="darpages" id="darpageswwww">
                    <input type="hidden" id="currentPage"/>
                    <span id="totalNum">第2页</span>&nbsp;
                    &nbsp;
                    <span id="oldPage"><a href =javascript:void(null)>上一页</a></span>
                    <span id="nextPage"><a href =javascript:void(null)>下一页</a></span>
                </div>
            </div>
            <div class="darbtnbox">
                <button style="margin:0 0 0 400px;width:91px;height: 36px; border-radius:6px;border: 0;color:#fff;background: rgb(24,147,211);" class="thisfresh" onclick="showadd()">添加</button>
            </div>
        </div>
    </div>
</div>


<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#Selected").click(function(){
            oldUserType=$(this).text();
            if("block" == $("#ddoli").css("display")){
                $("#ddoli").hide();
            }else{
                $("#ddoli").show();
            }
        });

        $("#ddoli>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected>span").html($(this).html());
                newUserType= $(this).html();
                if(oldUserType!=newUserType){
                    reMovePage($("#currentPage").val());
                    $("#currentPage").val(1);
                    conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin, newConsultResult);
                }
                $("#ddoli").hide();

            });
        });

        $("#Selected").blur(function(){
            $("#ddoli").hide();
        });
        $("#Selected2").click(function(){
            oldConsultType= $(this).text();
            if("block" == $("#ddoli2").css("display")){
                $("#ddoli2").hide();
            }else{
                $("#ddoli2").show();
            }
        });

        $("#ddoli2>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected2>span").html($(this).html());
                newConsultType= $(this).html();
                if(oldConsultType!=newConsultType){
                    reMovePage($("#currentPage").val());
                    $("#currentPage").val(1);
                    conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin, newConsultResult);
                }
                $("#ddoli2").hide();
            });
        });

        $("#Selected2").blur(function(){
            $("#ddoli2").hide();
        });
        $("#Selected3").click(function(){
            oldConsultState= $(this).text();
            if("block" == $("#ddoli3").css("display")){
                $("#ddoli3").hide();
            }else{
                $("#ddoli3").show();
            }
        });

        $("#ddoli3>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected3>span").html($(this).html());
                newConsultState =$(this).html();
                if(oldConsultState!=newConsultState){
                    reMovePage($("#currentPage").val());
                    $("#currentPage").val(1);
                    conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin, newConsultResult);
                }

                $("#ddoli3").hide();
            });
        });

        $("#Selected3").blur(function(){
            $("#ddoli3").hide();
        });
        $("#Selected4").click(function(){
            oldConsultAdmin= $(this).text();
            if("block" == $("#ddoli4").css("display")){
                $("#ddoli4").hide();
            }else{
                $("#ddoli4").show();
            }
        });

        $("#ddoli4>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected4>span").html($(this).html());
                newConsultAdmin=$(this).html();
                if(oldConsultAdmin!=newConsultAdmin){
                    reMovePage($("#currentPage").val());
                    $("#currentPage").val(1);
                    conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin, newConsultResult);
                }
                $("#ddoli4").hide();
            });
        });

        $("#Selected4").blur(function(){
            $("#ddoli4").hide();
        });
        $("#Selected5").click(function(){
            oldConsultTime= $(this).text();
            if("block" == $("#ddoli5").css("display")){
                $("#ddoli5").hide();
            }else{
                $("#ddoli5").show();
            }
        });

        $("#ddoli5>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected5>span").html($(this).html());
                newConsultTime=$(this).html();
                if(oldConsultTime!=newConsultTime){
                    reMovePage($("#currentPage").val());
                    $("#currentPage").val(1);
                    conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin, newConsultResult);
                }
                $("#ddoli5").hide();
            });
        });

        $("#Selected5").blur(function(){
            $("#ddoli5").hide();
        });
        $("#Selected6").click(function(){
            oldConsultResult= $(this).text();
            if("block" == $("#ddoli6").css("display")){
                $("#ddoli6").hide();
            }else{
                $("#ddoli6").show();
            }
        });

        $("#ddoli6>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected6>span").html($(this).html());
                newConsultResult=$(this).html();
                if(oldConsultResult!=newConsultResult){
                    reMovePage($("#currentPage").val());
                    $("#currentPage").val(1);
                    conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin,newConsultResult);
                }
                $("#ddoli6").hide();
            });
        });

        $("#Selected6").blur(function(){
            $("#ddoli6").hide();
        });






        $("#Selected7").click(function(){
            oldConsultResult= $(this).text();
            if("block" == $("#ddoli7").css("display")){
                $("#ddoli7").hide();
            }else{
                $("#ddoli7").show();
            }
        });

        $("#ddoli7>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected7>span").html($(this).html());
                newConsultResult=$(this).html();
                if(oldConsultResult!=newConsultResult){
                    reMovePage($("#currentPage").val());
                    $("#currentPage").val(1);
                    conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin,newConsultResult);
                }
                $("#ddoli7").hide();
            });
        });

        $("#Selected7").blur(function(){
            $("#ddoli7").hide();
        });


        $("#Selected8").click(function(){
            oldConsultResult= $(this).text();
            if("block" == $("#ddoli8").css("display")){
                $("#ddoli8").hide();
            }else{
                $("#ddoli8").show();
            }
        });
        $("#ddoli8>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected8>span").html($(this).html());
                newConsultResult=$(this).html();
                if(oldConsultResult!=newConsultResult){
                    reMovePage($("#currentPage").val());
                    $("#currentPage").val(1);
                    conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin,newConsultResult);
                }
                $("#ddoli8").hide();
            });
        });
        $("#Selected8").blur(function(){
            $("#ddoli8").hide();
        });


        $("#Selected9").click(function(){
            oldConsultResult= $(this).text();
            if("block" == $("#ddoli9").css("display")){
                $("#ddoli9").hide();
            }else{
                $("#ddoli9").show();
            }
        });
        $("#ddoli9>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected9>span").html($(this).html());
                newConsultResult=$(this).html();
                if(oldConsultResult!=newConsultResult){
                    reMovePage($("#currentPage").val());
                    $("#currentPage").val(1);
                    conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin,newConsultResult);
                }
                $("#ddoli9").hide();
            });
        });
        $("#Selected9").blur(function(){
            $("#ddoli9").hide();
        });


        $("#Selected10").click(function(){
            oldConsultResult= $(this).text();
            if("block" == $("#ddoli10").css("display")){
                $("#ddoli10").hide();
            }else{
                $("#ddoli10").show();
            }
        });
        $("#ddoli10>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected10>span").html($(this).html());
                newConsultResult=$(this).html();
                if(oldConsultResult!=newConsultResult){
                    reMovePage($("#currentPage").val());
                    $("#currentPage").val(1);
                    conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin,newConsultResult);
                }
                $("#ddoli10").hide();
            });
        });
        $("#Selected10").blur(function(){
            $("#ddoli10").hide();
        });


        $("#Selected11").click(function(){
            oldConsultResult= $(this).text();
            if("block" == $("#ddoli11").css("display")){
                $("#ddoli11").hide();
            }else{
                $("#ddoli11").show();
            }
        });
        $("#ddoli11>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected11>span").html($(this).html());
                newConsultResult=$(this).html();
                if(oldConsultResult!=newConsultResult){
                    reMovePage($("#currentPage").val());
                    $("#currentPage").val(1);
                    conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin,newConsultResult);
                }
                $("#ddoli11").hide();
            });
        });
        $("#Selected11").blur(function(){
            $("#ddoli11").hide();
        });


        $("#Selected12").click(function(){
            oldConsultResult= $(this).text();
            if("block" == $("#ddoli12").css("display")){
                $("#ddoli12").hide();
            }else{
                $("#ddoli12").show();
            }
        });
        $("#ddoli12>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected12>span").html($(this).html());
                newConsultResult=$(this).html();
                if(oldConsultResult!=newConsultResult){
                    reMovePage($("#currentPage").val());
                    $("#currentPage").val(1);
                    conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin,newConsultResult);
                }
                $("#ddoli12").hide();
            });
        });
        $("#Selected12").blur(function(){
            $("#ddoli12").hide();
        });


        $("#Selected13").click(function(){
            oldConsultResult= $(this).text();
            if("block" == $("#ddoli13").css("display")){
                $("#ddoli13").hide();
            }else{
                $("#ddoli13").show();
            }
        });
        $("#ddoli13>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected13>span").html($(this).html());
                newConsultResult=$(this).html();
                if(oldConsultResult!=newConsultResult){
                    reMovePage($("#currentPage").val());
                    $("#currentPage").val(1);
                    conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin,newConsultResult);
                }
                $("#ddoli13").hide();
            });
        });
        $("#Selected13").blur(function(){
            $("#ddoli13").hide();
        });
    });
    var oldUserType="用户";
    var oldConsultType="咨询类型";
    var oldConsultTime="咨询时间";
    var oldConsultState="咨询状态";
    var oldConsultAdmin="咨询处理人";
    var oldConsultResult="咨询处理结果";

    var newUserType="用户";
    var newConsultType="咨询类型";
    var newConsultTime="咨询时间";
    var newConsultState="咨询状态";
    var newConsultAdmin="咨询处理人";
    var newConsultResult="咨询处理结果";

    var list;
    $(document).ready(function(){
        $("#currentPage").val(1);
        conditionShow(newUserType,newConsultType,newConsultTime,newConsultState,newConsultAdmin, newConsultResult)
    });
   function showData(consultObj,sultStateTime){
       $("#showConsult").empty();
       var total=$("#totalNum").val();
       var currentPage=$("#currentPage").val();
       var i=(currentPage-1)*20;
       var row="<tr style=\"width: 980px;height: 5px\"></tr>";
       $("#showConsult").append(row);
           if(currentPage!=total &&currentPage<total){
           var strip=i+20;
             for(i;i< strip;i++){
               var row =showRow(sultStateTime,i);
               $("#showConsult").append(row);
             }
           }else if(currentPage==total){
               for(i;i<list.length;i++){
                   var row =showRow(sultStateTime,i);
                   $("#showConsult").append(row);
               }
           }
       for(var j=1;j<=$("#showConsult").find("tr").length ;j++){
           if(j%2!=0){
               $("#showConsult").find("tr:eq("+j+")").css("background-color","#cccccc");
           }else{
               $("#showConsult").find("tr:eq("+j+")").css("background-color","#ffffff");
           }
       }
       showpage(currentPage,total);
    }

    function showRow(sultStateTime,num){
        var row;
        var j=num+parseInt(1);
        if(sultStateTime=="咨询时间"){
             row = "<tr style=\"width: 980px;\">" +

                " <td style=\"width: 57px;\"><input type=\"checkbox\" placeholder=\"\" name=\"subBox\" readonly ng-checked=\"m\">" + j + "</td>" +
                "<td style=\"width: 55px\">" + list[num].code + "</td>" +
                " <td style=\"width: 61px\">" + list[num].userType + "</td>" +
                " <td style=\"width:100px\">"+list[num].consultType+"</td>" +
                " <td style=\"width:110px\"><input type=\"text\" value=\""+list[num].questions+"\" style=\"background: transparent;border: 0;text-overflow:ellipsis;" +
                " overflow:hidden;white-space:nowrap;width:110px;\" title=\""+list[num].questions+"\"  disabled=\"disabled\" ></td>" +
                " <td style=\"width:142px\">"+list[num].consultTime+"</td>" +
                " <td style=\"width:100px\">"+list[num].consultState+"</td>" +
                " <td style=\"width:112px\">"+list[num].consultAdmin+"</td></tr>";
                // " <td style=\"width:144px;\"><input type=\"text\" value=\""+list[num].replyContent+"\" style=\"background: transparent;border: 0;text-overflow:ellipsis;" +
                // "overflow:hidden;white-space:nowrap;width:60px; \" title=\""+list[num].replyContent+"\"  disabled=\"disabled\" ><span  style=\"color: #0D63EF\" ><a  href =javascript:void(null) onclick=\"showtext()\">修改</a></span> | <span style=\"color: red;\">删除</span></td>" +
                // " <td style=\"width:109px\">"+list[num].consultResult+"</td></tr>";
        }else if(sultStateTime=="回复时间"){
            row= "<tr style=\"width: 980px;\">" +
                "<td style=\"width: 27px\"><input type=\"checkbox\" placeholder=\"\" name=\"subBox\" readonly ng-checked=\"m\"></td>" +
                " <td style=\"width: 20px;\">" + j + "</td>" +
                "<td style=\"width: 55px\">" + list[num].code + "</td>" +
                " <td style=\"width: 61px\">" + list[num].userType + "</td>" +
                " <td style=\"width:100px\">"+list[num].consultType+"</td>" +
                " <td style=\"width:110px\"><input type=\"text\" value=\""+list[num].questions+"\" style=\"background: transparent;border: 0;text-overflow:ellipsis;" +
                " overflow:hidden;white-space:nowrap;width:110px;\" title=\""+list[num].questions+"\"  disabled=\"disabled\" ></td>" +
                " <td style=\"width:142px\">"+list[num].replyTime+"</td>" +
                " <td style=\"width:100px\">"+list[num].consultState+"</td>" +
                " <td style=\"width:112px\">"+list[num].consultAdmin+"</td>" +
                " <td style=\"width:144px;\"><input type=\"text\" value=\""+list[num].replyContent+"\" style=\"background: transparent;border: 0;text-overflow:ellipsis;" +
                "overflow:hidden;white-space:nowrap;width:60px; \" title=\""+list[num].replyContent+"\"   disabled=\"disabled\" ><span  style=\"color: #0D63EF\" ><a  href =javascript:void(null) onclick=\"showtext()\">修改</a></span> | <span style=\"color: red;\">删除</span></td>" +
                " <td style=\"width:109px\">"+list[num].consultResult+"</td></tr>";
        }
        return row;
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
        var list=listPro;
        var totalNum=$("#totalNum").val();
        $("#currentPage").val(currentPage);
        reMovePage(currentPage);
        showpage(currentPage,totalNum);
        showData(list,$("#Selected5").text());
    }
    //上一页
    $("#oldPage").click(function () {
        var currentPage= $("#currentPage").val();  //取当前页码
        var totalNum=$("#totalNum").val();       //取总页码
        var nextPage=currentPage-1;               //上一页的数
        if(currentPage>1){
            reMovePage(currentPage);
            showpage(nextPage,totalNum);
            showData(list,$("#Selected5").text());
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
            showData(list,$("#Selected5").text());
            $("#currentPage").val(nextPage);

        }else if(currentPage==totalNum){
            alert("已经是最后一页了。");
        }
    });
    function conditionShow(userType,consultType,consultTime,consultState,consultAdmin,consultResult) {
        $.ajax({
            url : '${ctx}/consult/showAll',
            data:"userType="+userType+"&consultType="+consultType+"&consultTime="+consultTime+
            "&consultState="+consultState+"&consultAdmin="+consultAdmin+"&consultResult="+consultResult,
            type : 'POST',
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null && data!=""){
                    list=data.list;
                    $("#totalNum").text("共"+data.totalNum+"页");
                    $("#totalNum").val(data.totalNum);
                    showData(list,newConsultTime);
                }
            }
        })}
</script>
</body>
</html>
<!--修改-->

<div  id="revsion-box-all" >


            <!-- 内部内容 -->
            <div class="inner inner-revision" >
                <div onclick="hidetext()" STYLE="width: 680px;text-align: right;">

                        <img src="${ctx}/static/background/images/x.png" alt=""  style="cursor: pointer">

                </div>
                <div class="inner-title" style="margin: 0 0 0 35px"><span style=" letter-spacing: 10px "> 编&nbsp;&nbsp; 号</span><input type="text" placeholder="FC001" style="width: 406px;height: 25px;border: 1px solid #ccc;border-radius:6px; " ><span style="color: red;margin-left: 10px;font-size: 12px">编号一旦生成不可修改</span></div>
                <div class="inner-title"><span style=" letter-spacing: 10px ">用 &nbsp;&nbsp;户</span><label style="font-weight: 400">

                    <div class="select_model">
                        <div class="Selected" id="Selected7"><span style="font-size: 12px">来宾户</span>&nbsp;<img src="${ctx}/static/background/images/right-l2.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli7">
                            <ul>
                                <li style="border-top: none">来宾户</li>
                                <li>会员户</li>
                            </ul>
                        </div>
                    </div>


                </label><span style="color: red;margin-left: 10px;font-size: 12px">编号一旦生成不可修改</span></div>
                <div class="inner-title"><span style=" letter-spacing:2px">咨 询 类 型 </span> <label style="font-weight: 400">

                        <div class="select_model">
                            <div class="Selected" id="Selected8"><span style="font-size: 12px">售前</span>&nbsp;<img src="${ctx}/static/background/images/right-l2.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli8">
                                <ul>
                                    <li style="border-top: none">售前</li>
                                    <li>售后</li>
                                    <li>保障</li>
                                </ul>
                            </div>
                        </div>


                </label><span style="color: red;margin-left: 10px;font-size: 12px">编号一旦生成不可修改</span></div>
                <div class="inner-title"><span style=" letter-spacing:2px;position: relative;top: -33px">咨 询 问 题 </span>  <textarea placeholder="" style="max-width: 406px;max-height: 87px;width:406px;height: 87px;border-radius: 6px;border: 1px solid #ccc;"></textarea><span style="position: relative;top: -33px;color: red;margin-left: 10px;font-size: 12px">可修改用户咨询的问题</span></div>
                <div class="inner-title"><span style=" letter-spacing:2px ">咨 询 时 间 </span>  <input type="text" placeholder="2017年7月1日10：36" style="width: 406px;height: 25px;border: 1px solid #ccc;border-radius:6px; " > <span style="color: red;margin-left: 10px;font-size: 12px">不可修改咨询时间</span></div>
                <div class="inner-title"><span style=" letter-spacing:2px ">回 复 时 间 </span>  <input type="text" placeholder="2017年7月1日10：36" style="width: 406px;height: 25px;border: 1px solid #ccc;border-radius:6px; " > <span style="color: red;margin-left: 10px;font-size: 12px">不可修改回复时间</span></div>
                <div class="inner-title"><span style=" letter-spacing:2px ">咨 询 状 态 </span> <label style="font-weight: 400"><select style="border-radius: 6px;width: 135px;height: 27px;border: 1px solid #ccc;"><option>    系统管理员</option></select></label> <span style="color: red;margin-left: 10px;font-size: 12px">不可修改</span></div>
                <div class="inner-title"><span style=" letter-spacing:2.3px ">咨询处理人
        </span>
                    <label style="font-weight: 400">
                        <select style="border-radius: 6px;width: 135px;height: 27px;border: 1px solid #ccc;">
                            <option>  系统管理员</option>
                            <%--<option>  运营管理员</option>--%>
                            <%--<option>  普通管理员</option>--%>
                            <%--<option>  编辑管理员</option>--%>
                        </select>
                    </label>
                    <span style="color: red;margin-left: 10px;font-size: 12px">不可修改</span></div>
                <div style="margin:10px 0 0 33px"><span style=" letter-spacing:2px ">已 达 咨 询 </span>
                    <label style="font-weight: 400">
                        <select style="border-radius: 6px;width: 135px;height: 27px;border: 1px solid #ccc;">
                            <option>    已处理</option>
                            <%--<option>    未处理</option>--%>
                        </select>
                    </label>
                    <span style="color: red;margin-left: 10px;font-size: 12px">不可修改</span></div>
                <div style="margin:10px 0 0 33px"><span style=" letter-spacing:2px;position: relative;top: -33px ">咨 询 问 题 </span><textarea placeholder="" style="max-width: 406px;max-height: 87px;width:406px;height: 87px;border-radius: 6px;border: 1px solid #ccc;"></textarea><span style="position: relative;top: -33px;color: red;margin-left: 10px;font-size: 12px">可修改用户咨询的问题</span></div>
                <div style="margin:10px 0 0 33px"><span style="  "> 咨询处理结果 </span><input  type="text" placeholder="FC001" style="width: 406px;height: 25px;border: 1px solid #ccc;border-radius:6px; " ></div>

                <div style="width: 980px;height: 360px;">
                    <div>
                    </div>
                    <button  style="margin:19px 0 0 260px;width:166px;height: 40px; border-radius:6px;border: 0;color:#fff;background: rgb(24,147,211);">确定修改</button>

                </div>
            </div>



        <%--</div>--%>


    </div>
<%--添加--%>

<div  id="add-box-all" >



    <!-- 内部内容 -->
    <div class="inner inner-revision" >
        <div onclick="hideadd()" STYLE="width: 680px;text-align: right">
            <img src="${ctx}/static/background/images/x.png" alt=""  style="cursor: pointer">
        </div>
        <div class="inner-title" style="margin: 0 0 0 35px"><span style=" letter-spacing: 10px "> 编&nbsp;&nbsp; 号</span><input type="text" placeholder="FC001" style="width: 406px;height: 25px;border: 1px solid #ccc;border-radius:6px; " ></div>
        <div class="inner-title"><span style=" letter-spacing: 10px ">用 &nbsp;&nbsp;户</span><label style="font-weight: 400">

            <div class="select_model">
                <div class="Selected" id="Selected9"><span style="font-size: 12px">来宾户</span>&nbsp;<img src="${ctx}/static/background/images/right-l2.png" alt="下拉"></div>
                <div style="display: none" class="ddoli" id="ddoli9">
                    <ul>
                        <li style="border-top: none">来宾户</li>
                        <li>会员户</li>

                    </ul>
                </div>
            </div>

        </label></div>
        <div class="inner-title"><span style=" letter-spacing:2px">咨 询 类 型 </span> <label style="font-weight: 400">


            <div class="select_model">
                <div class="Selected" id="Selected10"><span style="font-size: 12px">售前</span>&nbsp;<img src="${ctx}/static/background/images/right-l2.png" alt="下拉"></div>
                <div style="display: none" class="ddoli" id="ddoli10">
                    <ul>
                        <li style="border-top: none">售前</li>
                        <li>售后</li>
                        <li>保障</li>
                    </ul>
                </div>
            </div>

        </label></div>
        <div class="inner-title"><span style=" letter-spacing:2px;position: relative;top: -33px">咨 询 问 题 </span>  <textarea placeholder="" style="max-width: 406px;max-height: 87px;width:406px;height: 87px;border-radius: 6px;border: 1px solid #ccc;"></textarea></div>
        <div class="inner-title"><span style=" letter-spacing:2px ">咨 询 时 间 </span>  <input type="text" placeholder="2017年7月1日10：36" style="width: 406px;height: 25px;border: 1px solid #ccc;border-radius:6px; " > </div>
        <div class="inner-title"><span style=" letter-spacing:2px ">回 复 时 间 </span>  <input type="text" placeholder="2017年7月1日10：36" style="width: 406px;height: 25px;border: 1px solid #ccc;border-radius:6px; " > </div>
        <div class="inner-title"><span style=" letter-spacing:2px ">咨 询 状 态 </span> <label style="font-weight: 400">


            <div class="select_model">
                <div class="Selected" id="Selected11"><span style="font-size: 12px">系统管理员</span>&nbsp;<img src="${ctx}/static/background/images/right-l2.png" alt="下拉"></div>
                <div style="display: none" class="ddoli" id="ddoli11">
                    <ul>
                        <li style="border-top: none">系统管理员</li>
                        <li>运营管理员</li>
                        <li>普通管理员</li>
                        <li>编辑管理员</li>
                    </ul>
                </div>
            </div>

        </label> </div>
        <div class="inner-title"><span style=" letter-spacing:2.3px ">咨询处理人
        </span>
            <label style="font-weight: 400">
                <%--<select style="border-radius: 6px;width: 135px;height: 27px;border: 1px solid #ccc;">--%>
                    <%--<option>  系统管理员</option>--%>
                    <%--<option>  运营管理员</option>--%>
                    <%--<option>  普通管理员</option>--%>
                    <%--<option>  编辑管理员</option>--%>
                <%--</select>--%>

                    <div class="select_model">
                        <div class="Selected" id="Selected12"><span style="font-size: 12px">系统管理员</span>&nbsp;<img src="${ctx}/static/background/images/right-l2.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli12">
                            <ul>
                                <li style="border-top: none">系统管理员</li>
                                <li>运营管理员</li>
                                <li>普通管理员</li>
                                <li>编辑管理员</li>
                            </ul>
                        </div>
                    </div>
            </label>
           </div>
        <div style="margin:10px 0 0 33px"><span style=" letter-spacing:2px ">已 达 咨 询 </span>
            <label style="font-weight: 400">
                <%--<select style="border-radius: 6px;width: 135px;height: 27px;border: 1px solid #ccc;">--%>
                    <%--<option>    已处理</option>--%>
                    <%--<option>    未处理</option>--%>
                <%--</select>--%>

                <div class="select_model">
                    <div class="Selected" id="Selected13"><span style="font-size: 12px">已处理</span>&nbsp;<img src="${ctx}/static/background/images/right-l2.png" alt="下拉"></div>
                    <div style="display: none" class="ddoli" id="ddoli13">
                        <ul>
                            <li style="border-top: none">已处理</li>
                            <li>未处理</li>
                        </ul>
                    </div>
                </div>
            </label>
            </div>
        <div style="margin:10px 0 0 33px"><span style=" letter-spacing:2px;position: relative;top: -33px ">咨 询 问 题 </span><textarea placeholder="" style="max-width: 406px;max-height: 87px;width:406px;height: 87px;border-radius: 6px;border: 1px solid #ccc;"></textarea></div>
        <div style="margin:10px 0 0 33px"><span style="  "> 咨询处理结果 </span><input  type="text" placeholder="FC001" style="width: 406px;height: 25px;border: 1px solid #ccc;border-radius:6px; " ></div>

        <div style="width: 980px;height: 360px;">
            <div>
            </div>
            <button  style="margin:19px 0 0 260px;width:166px;height: 40px; border-radius:6px;border: 0;color:#fff;background: rgb(24,147,211);">确定修改</button>

        </div>
    </div>


</div>

<script type="text/javascript">

    // 修改
    function hidetext()
    {
        var mychar = document.getElementById("revsion-box-all").style.display ="none";

    }
    function showtext()
    {
        var mychar = document.getElementById("revsion-box-all").style.display ="block";

    }


    // 添加
    function hideadd(){
        var mychar = document.getElementById("add-box-all").style.display ="none";
    }
    function showadd()
    {
        var mychar = document.getElementById("add-box-all").style.display ="block";

    }
</script>

