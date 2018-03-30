<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>全部视频</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">

    <link rel="stylesheet" href="${ctx}/static/background/css/column.css" type="text/css">
    <style>
        .modal{
            margin-top: 40px;
        }
        .modal .title-tb .button1 {
            margin-left: 230px;
        }
        .modal .title-tb-1{
            margin: 0 0 0 -44px;
        }
        .list32{
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
        .modal .title-tb input{
            border: 1px solid #ccc;
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
            /*width: 105px;*/
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
            /*font-weight: 100;*/
        }
        #ddoli ul li{
            width: 115px;
        }
        #ddoli2 ul li{
            width: 115px;
        }
        #ddoli3 ul li{
            width: 106px;
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
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=false;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=false;subjecta=true;deputynava=true">

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
            <span>全部视频</span>

        </div>
        <div class="inner" style="height:auto;    padding-bottom: 30px;">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;全部视频</div>
            <div class="draftart-top">
                <button class="keywords">关键词</button>
                <input style="width: 269px" type="text" placeholder="">
                <button class="key-search">搜索</button>
                <button class="search-title">标题搜索</button>
                <input style="width: 283px" type="text" placeholder="">
                <button class="title-search">搜索</button>
            </div>
            <div class="draftartbox">
                    <table class="artable">
                        <thead>
                        <tr>
                        <th style="width: 72px;">序号</th>
                        <th style="width: 198px;border-left: 1px solid #057836">视频标题</th>
                        <th style="width: 256px;border-left: 1px solid #057836">视频连接地址</th>

                        <th style="width: 117px;border-left: 1px solid #057836">
                            <div class="select_model">
                                <div class="Selected" id="Selected"><span style="font-size: 12px">视频类型</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                                <div style="display: none" class="ddoli" id="ddoli">
                                    <ul>
                                        <li style="border-top: none">广告</li>
                                        <li>品牌</li>
                                        <li>产品</li>
                                        <li>活动</li>
                                        <li>其他</li>
                                    </ul>
                                </div>
                            </div>
                        </th>
                        <th style="width: 117px;border-left: 1px solid #057836">
                            <div class="select_model">
                                <div class="Selected" id="Selected2"><span style="font-size: 12px">视频状态</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                                <div style="display: none" class="ddoli" id="ddoli2">
                                    <ul>
                                        <li style="border-top: none">正常</li>
                                        <li>不能播放</li>
                                        <li>已删除</li>
                                    </ul>
                                </div>
                            </div>
                        </th>
                        <th style="width: 117px;border-left: 1px solid #057836">点击/播放量</th>
                        <th style="width: 108px;border-left: 1px solid #057836">
                            <div class="select_model">
                                <div class="Selected" id="Selected3"><span style="font-size: 12px">操作人</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                                <div style="display: none" class="ddoli" id="ddoli3">
                                    <ul>
                                        <li style="border-top: none">系统管理员</li>
                                        <li>运营管理员</li>
                                        <li>普通管理员</li>
                                        <li>编辑管理员</li>
                                    </ul>
                                </div>
                            </div>
                        </th>
                        </tr>
                        </thead>

                    <tr style="height: 10px;"><td></td></tr>
                    <tr>
                        <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                        <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                        <!--<td title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="width: 147px;">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->
                        <td>www.baidu.com</td>

                        <td>正常</td>
                        <td><span class="xg" data-toggle="modal" data-target="#myModal013">修改</span> | <span class="del">删除</span></td>
                        <td>489</td>
                        <td>系统管理员</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                        <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                        <!--<td title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="width: 147px;">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->
                        <td>www.baidu.com</td>

                        <td>正常</td>
                        <td><span class="xg" data-toggle="modal" data-target="#myModal013">修改</span> | <span class="del">删除</span></td>
                        <td>489</td>
                        <td>系统管理员</td>
                    </tr>

                        <tr>
                            <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                            <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                            <!--<td title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="width: 147px;">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->
                            <td>www.baidu.com</td>

                            <td>正常</td>
                            <td><span class="xg" data-toggle="modal" data-target="#myModal013">修改</span> | <span class="del">删除</span></td>
                            <td>489</td>
                            <td>系统管理员</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                            <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                            <!--<td title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="width: 147px;">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->
                            <td>www.baidu.com</td>

                            <td>正常</td>
                            <td><span class="xg" data-toggle="modal" data-target="#myModal013">修改</span> | <span class="del">删除</span></td>
                            <td>489</td>
                            <td>系统管理员</td>
                        </tr>


                        <tr>
                            <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                            <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                            <!--<td title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="width: 147px;">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->
                            <td>www.baidu.com</td>

                            <td>正常</td>
                            <td><span class="xg" data-toggle="modal" data-target="#myModal013">修改</span> | <span class="del">删除</span></td>
                            <td>489</td>
                            <td>系统管理员</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                            <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                            <!--<td title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="width: 147px;">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->
                            <td>www.baidu.com</td>

                            <td>正常</td>
                            <td><span class="xg" data-toggle="modal" data-target="#myModal013">修改</span> | <span class="del">删除</span></td>
                            <td>489</td>
                            <td>系统管理员</td>
                        </tr>


                        <tr>
                            <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                            <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                            <!--<td title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="width: 147px;">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->
                            <td>www.baidu.com</td>

                            <td>正常</td>
                            <td><span class="xg" data-toggle="modal" data-target="#myModal013">修改</span> | <span class="del">删除</span></td>
                            <td>489</td>
                            <td>系统管理员</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                            <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                            <!--<td title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="width: 147px;">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->
                            <td>www.baidu.com</td>

                            <td>正常</td>
                            <td><span class="xg" data-toggle="modal" data-target="#myModal013">修改</span> | <span class="del">删除</span></td>
                            <td>489</td>
                            <td>系统管理员</td>
                        </tr>


                        <tr>
                            <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                            <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                            <!--<td title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="width: 147px;">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->
                            <td>www.baidu.com</td>

                            <td>正常</td>
                            <td><span class="xg" data-toggle="modal" data-target="#myModal013">修改</span> | <span class="del">删除</span></td>
                            <td>489</td>
                            <td>系统管理员</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                            <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                            <!--<td title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="width: 147px;">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->
                            <td>www.baidu.com</td>

                            <td>正常</td>
                            <td><span class="xg" data-toggle="modal" data-target="#myModal013">修改</span> | <span class="del">删除</span></td>
                            <td>489</td>
                            <td>系统管理员</td>
                        </tr>

                        <tr>
                            <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                            <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                            <!--<td title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="width: 147px;">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->
                            <td>www.baidu.com</td>

                            <td>正常</td>
                            <td><span class="xg" data-toggle="modal" data-target="#myModal013">修改</span> | <span class="del">删除</span></td>
                            <td>489</td>
                            <td>系统管理员</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" style="position: relative;top: 2px;" placeholder="">&nbsp;&nbsp;&nbsp;1</td>
                            <td ><input value="纪念下湾一中建校50..." title="纪念下湾一中建校50年校庆" disabled="disabled" style="background: transparent;border: 0"></td>
                            <!--<td title="飞燕轻便系列防水防尘键盘鼠标新品上市"  disabled="disabled" style="width: 147px;">飞燕轻便系列防水防尘键盘鼠标新品上市</td>-->
                            <td>www.baidu.com</td>

                            <td>正常</td>
                            <td><span class="xg" data-toggle="modal" data-target="#myModal013">修改</span> | <span class="del">删除</span></td>
                            <td>489</td>
                            <td>系统管理员</td>
                        </tr>







                    </table>

                <div style="margin-left: 25px;">
                    <input type="checkbox">
                    全选   删除</div>
                <div style="    height: 40px;width: 1000px;margin-left: 350px;margin-top: 25px">
                    <input type="submit" value="添加" style="background: #1994d3;width: 96px;height: 30px;color: white;float: left;border: 0;border-radius: 6px;margin-left: 25px" data-toggle="modal" data-target="#myModal012">
                    <input type="submit" value="取消" style="background: #1994d3;width: 96px;height: 30px;color: white;float: left;border: 0;border-radius: 6px;margin-left: 25px">
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
<script type="text/javascript">
    $(document).ready(function () {
        $("#Selected").click(function(){
            var oldType=$($("#Selected")).text();
            if("block" == $("#ddoli").css("display")){
                $("#ddoli").hide();
            }else{
                $("#ddoli").show();
            }
        });

        $("#ddoli>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected>span").html($(this).html());
                type=$(this).html();
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
            oldSystem=$("#Selected2").text();
            if("block" == $("#ddoli2").css("display")){
                $("#ddoli2").hide();
            }else{
                $("#ddoli2").show();
            }
        });

        $("#ddoli2>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected2>span").html($(this).html());
                system=$(this).html();
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
            oldState= $("#Selected3").text();
            if("block" == $("#ddoli3").css("display")){
                $("#ddoli3").hide();
            }else{
                $("#ddoli3").show();
            }
        });

        $("#ddoli3>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected3>span").html($(this).html());
                state=$(this).html();
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
    })
</script>
</body>
</html>


<!--添加视频-->
<div class="modal fade" id="myModal012" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog" >
        <div class="modal-content" style="width:745px;height: auto;padding-bottom: 20px;">
            <div style="margin: -67px 0 0 0;">
                <button type="button"  data-dismiss="modal"
                        aria-hidden="true" style="background: transparent;color: #009F43;border: 0;position: relative;left: 708px;font-size:25px;">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>
            <div class="modal-body" style="margin-left: 18px;padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;">

                <div class="contentbox" style="height: auto;">

                    <div class="inner inner-1" style=" width: 760px;height:auto;background-color: white;padding: 0 0 30px 0;">

                        <form action="" method="post">
                            <!--焦点一-->
                            <div class="focusvideo" style="position: relative;top: 10px">添加视频</div>
                            <div class="title-tb">
                                <span class="title-tb-1">Title 图片标题</span>
                                <input type="text" placeholder="" style=" border: 1px solid #777;">
                                <span class="title-tb-2">图片标题可自定义</span></div>

                            <div class="title-tb">
                                <span class="title-tb-1">KeyWords 图片关键词</span>
                                <input type="text" placeholder="" style=" border: 1px solid #777;">
                                <span class="title-tb-2">图片关键词可自定义</span></div>

                            <div class="title-tb">
                                <span class="title-tb-1">Description 图片描述</span>
                                <textarea placeholder=""></textarea>
                                <span class="title-tb-2 text2">图片描述可自定义</span></div>

                            <div class="title-tb">
                                <span class="title-tb-1">图片上传/图片地址</span>
                                <input type="text" placeholder="" style=" border: 1px solid #777;">
                                <span class="title-tb-2">可直接复制地址粘贴即可</span>
                                <div>
                                    <img src="${ctx}/static/background/images/sp.png">

                                    <input type="file" name=""   class="a-upload" title="选择上传的图片" >

                                </div>
                            </div>

                            <div class="title-tb bplj">
                                <span class="title-tb-1 tupianlj">图片链接</span>
                                <input type="text" class="tupianlj" placeholder="" style=" border: 1px solid #777;">
                                <span class="title-tb-2 tupianlj">可自定义图片链接地址</span>
                                <div><img src=""></div>
                            </div>
                            <br>
                            <div class="title-tb">
                                <button class="button1">保存</button>
                                <button class="button" type="reset" data-dismiss="modal">取消</button>
                            </div>
                        </form>
                    </div>




                </div>

            </div>

        </div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<!--修改视频-->
<div class="modal fade" id="myModal013" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog" >
        <div class="modal-content" style="width:745px;height: auto;padding-bottom: 20px;">
            <div style="margin: -67px 0 0 0;">
                <button type="button"  data-dismiss="modal"
                        aria-hidden="true" style="background: transparent;color: #009F43;border: 0;position: relative;left: 708px;font-size:25px;">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>
            <div class="modal-body" style="margin-left: 18px;padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;">

                <div class="contentbox" style="height: auto;">

                    <div class="inner inner-1" style=" width: 760px;height:auto;background-color: white;padding: 0 0 30px 0;">

                        <form action="" method="post">
                            <!--焦点一-->
                            <div class="focusvideo" style="position: relative;top: 10px">修改视频</div>
                            <div class="title-tb">
                                <span class="title-tb-1">Title 图片标题</span>
                                <input type="text" placeholder="" style=" border: 1px solid #777;">
                                <span class="title-tb-2">图片标题可自定义</span></div>

                            <div class="title-tb">
                                <span class="title-tb-1">KeyWords 图片关键词</span>
                                <input type="text" placeholder="" style=" border: 1px solid #777;">
                                <span class="title-tb-2">图片关键词可自定义</span></div>

                            <div class="title-tb">
                                <span class="title-tb-1">Description 图片描述</span>
                                <textarea placeholder=""></textarea>
                                <span class="title-tb-2 text2">图片描述可自定义</span></div>

                            <div class="title-tb">
                                <span class="title-tb-1">图片上传/图片地址</span>
                                <input type="text" placeholder="" style=" border: 1px solid #777;">
                                <span class="title-tb-2">可直接复制地址粘贴即可</span>
                                <div>
                                    <img src="${ctx}/static/background/images/sp.png">

                                    <input type="file" name=""   class="a-upload" title="选择上传的图片" >

                                </div>
                            </div>

                            <div class="title-tb bplj">
                                <span class="title-tb-1 tupianlj">图片链接</span>
                                <input type="text" class="tupianlj" placeholder="" style=" border: 1px solid #777;">
                                <span class="title-tb-2 tupianlj">可自定义图片链接地址</span>
                                <div><img src=""></div>
                            </div>
                            <br>
                            <div class="title-tb">
                                <button class="button1">保存</button>
                                <button class="button" type="reset" data-dismiss="modal">取消</button>
                            </div>
                        </form>
                    </div>




                </div>

            </div>

        </div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->