<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>文章评价</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <style>
        .list28{
            background: #3eb7f3;
        }
        .contener .inner .darbtnbox button{
            width: 110px;
            height: 36px;
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
        input:nth-of-type(odd){
            border: 0;background: #fff;
        } /*弹框*/
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
            margin-top: 15px;
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
        <a href="${ctx}/admin/hyperchannel">  <span>订单管理</span></a>
        <span>></span>
        <a href="${ctx}/admin/orderestimate">  <span>我的全部评价</span></a>
        <span>></span>
        <span>文章评价</span>

    </div>
    <div class="inner" style="height: 1126px">
        <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;文章评价</div>
        <div class="draftart-top">
            <button class="keywords">关键词</button>
            <input style="width: 269px" type="text" placeholder="例如：大学生、转型、锻炼、故事">
            <button class="key-search">搜索</button>
            <button class="search-title">标题搜索</button>
            <input style="width: 283px" type="text" placeholder="例如：我们与峰程的故事">
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
                        <div class="Selected" id="Selected"><span>用户类型</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
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
                    <td><input type="checkbox" ng-checked="m" style="position: relative;top: 2px;" placeholder="">1</td>
                    <td>FC001</td>
                    <td style="width:147px;"><input type="text" value="我们与峰程的故事" title="我们与峰程的故事"  disabled="disabled" style="background: #f5f5f5"></td>
                    <td>会员客户</td>
                    <td>fc7080</td>
                    <td>还赠送一个鼠标垫及...</td>
                    <td>好评</td>
                    <td>正常</td>
                    <td>删除</td>
                </tr>
                <tr>
                    <td colspan="9" style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" ng-model="m" placeholder=""> 全选&nbsp;&nbsp;删除</td>
                </tr>
            </table>

            <div class="darbtnbox">
                <button class="thisfresh" data-toggle="modal" data-target="#myModapl4">添加</button>
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


<!--修改文章评论-->
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
                            <button  style="margin:20px 0 0 235px;width:166px;height: 40px; border-radius:6px;border: 0;color:#fff;background: #2196d4;">添加并保存</button>
                        </form>
                    </div>


                    <div></div>
                </div>

            </div>

        </div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->