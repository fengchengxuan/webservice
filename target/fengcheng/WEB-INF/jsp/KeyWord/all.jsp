<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>全部关键词</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/allkeywords.css" type="text/css">
    <style>
        .list36{
            background: #3eb7f3;
        }
        .modal-content{
            margin-top: 136px;
        }
        .select_model{
            height: 43px;
            position: relative;
        }
        .Selected{
            height: 43px;
            line-height: 43px;
            cursor: pointer;
            text-align: center;
            font-size: 12px;
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
            font-size: 12px;
            border-top: 1px solid #ccc;
        }
        #ddoli ul li{
            width: 170px;
        }
        #ddoli2 ul li{
            width: 144px;
        }
        #ddoli3 ul li{
            width: 144px;
        }
        #ddoli4 ul li{
            width:128px;
        }
        #ddoli5 ul li{
            width:168px;
        }
        .ddoli ul li:hover{
            background: #24a1ee;
            color: #ffffff;
        }
        .contener .admlistbox{
            height: auto;
            padding-bottom: 25px;
        }

        #Ulist tr:nth-of-type(odd){
            background: #F5F5F5;
            height: 40px;
            text-align: center;
        }
        #Ulist tr:nth-of-type(even){
            background: #fdfdfd;
            height: 50px;
        }

        select{
            color: #fff;
        }
        .modal table{
            border-collapse: collapse;
        }
        th,td{
            padding: 0;
        }
        .focus{
            width: 171px;
            height: 44px;
            background: rgb(237,36,36);
            text-align: center;line-height: 44px;
            font-family: '微软雅黑',sans-serif;
            font-size: 20px;
            color: #fff;
            margin: 30px 0 0 72px;
        }
        .focusvideo{
            border-radius: 6px;
            width: 171px;
            height: 44px;
            background: #1893D3;
            text-align: center;line-height: 44px;
            font-family: '微软雅黑',sans-serif;
            font-size: 20px;
            color: #fff;
            margin: 30px 0 0 72px;
        }
        .modal input{
            width: 341px;
            height: 25px;
            border-radius: 6px;
            border: 1px solid rgb(153,153,153);
            margin-left: 10px;
        }
        .modal .title-tb{
            margin: 18px 0 0 24px;
        }
        .modal  .title-tb-1{
            color: rgb(51,51,51);
            letter-spacing: 1px;
            width: 225px;
            height: 25px;
            display: block;
            text-align: right;
            float: left;
            margin: 0 0 0 -111px;
        }
        .modal  .title-tb-2{
            color: red;
            font-size: 10px;
            font-family: '微软雅黑',sans-serif;
            margin-left: 5px;
        }
        .modal  .title-tb .text2{
            position: relative;
            top: -88px;
        }

        .modal .title-tb button{
            margin-left: 40px;
            width: 117px;
            height: 36px;
            border-radius: 8px;
            border: 0;
            color: #fff;
            background: #1893D3;
            cursor: pointer;
        }
        .modal  .title-tb img{
            margin: 5px 0 0 265px;
        }
        .modal .title-tb .button1{
            margin-left: 200px;
        }
        .modal  .a-upload {
            cursor: pointer;
            width: 60px;
            height: 50px;
            opacity: 0;
            position: relative;left: -88px;top: -25px;
            outline: none;
        }
        .modal .bplj{
            margin-top: -10px;
        }
        .modal  .title-cj button{
            width: 220px;
            height: 38px;
            border: 0;
            -webkit-border-radius: 6px;
            background: #1893D3;
            color: #fff;
            margin: 20px 0 0 345px;
            cursor: pointer;
        }

        .modal  .bt-gjc textarea{
            height: 73px;
            max-height: 73px;
            min-height: 73px;
            max-width: 159px;
            min-width: 159px;
            position: relative;
            left: 10px;    border-radius: 6px;
        }
        .modal  .title-tb-3{
            margin-left: 10px;
            border-radius: 6px;
            border: 1px solid rgb(153,153,153);
            color: rgb(153,153,153);
            width: 115px;
            height: 25px;
        }
        .modal .title-tb-2-1{
            position: relative;
            top: -30px;
        } .modal .title-tb-2-2{
              position: relative;
              top: -45px;
          }
        .modal .title-tb .ztsz{
            position: relative;
            left: -53px;
        }
        .modal .title-tb-gjc{
            letter-spacing: 13px;
        }

    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=false;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <a href="${ctx}/admin/hyperchannel">  <span>关键词管理</span></a>
            <span>></span>
            <a href="${ctx}/admin/allkeywords">    <span>全部关键词</span></a>
        </div>
        <div class="inner" style="height: 1126px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;全部关键词</div>
            <div class="draftart-top" style="position: relative;left: -240px">
                <button class="keywords">关键词</button>
                <input style="width: 269px" type="text" placeholder="" value=" 例如:产品、评价、新闻、行情"
                       onfocus="this.value=''" onblur="if(this.value==''){this.value=' 例如:产品、评价、新闻、行情'}">
                <button class="key-search">搜索</button>

            </div>
            <div class="draftartbox">
                <table class="artable">
                    <thead>
                    <tr>
                    <th style="width: 97px;">序号</th>
                    <th style="width: 172px;border-left: 1px solid #24a1e4">
                        <div class="select_model">
                            <div class="Selected" id="Selected"><span style="font-size: 12px">核心关键词</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli">
                                <ul>
                                    <li style="border-top: none">核心关键词</li>
                                    <li>目标关键词</li>
                                    <li>长尾关键词</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                        <th style="width: 126px;border-left: 1px solid #24a1e4">添加URL</th>
                    <th style="width: 171px;border-left: 1px solid #24a1e4">

                        <div class="select_model">
                            <div class="Selected" id="Selected5"><span style="font-size: 12px">内连接</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli5">
                                <ul>
                                    <li style="border-top: none">首页</li>
                                    <li>栏目页</li>
                                    <li>专题页</li>
                                </ul>
                            </div>
                        </div>
                    </th>

                    <th style="width: 146px;border-left: 1px solid #24a1e4">
                        <div class="select_model">
                            <div class="Selected" id="Selected2"><span style="font-size: 12px">设置</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli2">
                                <ul>
                                    <li style="border-top: none">自动添加</li>
                                    <li>手动添加</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 146px;border-left: 1px solid #24a1e4">
                        <div class="select_model">
                            <div class="Selected" id="Selected3"><span style="font-size: 12px">状态</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli3">
                                <ul>
                                    <li style="border-top: none">删除</li>
                                    <li>正常</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 126px;border-left: 1px solid #24a1e4">编辑状态</th>

                    <th style="width: 130px;border-left: 1px solid #24a1e4">
                        <div class="select_model">
                            <div class="Selected" id="Selected4"><span style="font-size: 12px">操作人</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli4">
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
                    <tbody ng-init="c=false" class="c-false">
                    <tr style="width: 980px;height: 5px"></tr>
                    <tr style="height: 36px;">
                        <td><input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1</td>
                        <td>下湾一中</td>
                        <td></td>
                        <td>首页</td>
                        <td>自动添加</td>
                        <td>正常</td>
                        <td>
                            <a href=""><span style="color: #0D62F0" data-toggle="modal" data-target="#myModaeditkeywords">修改</span></a>
                            &nbsp;|&nbsp;
                            <a href=""><span style="color: #EC2323" >删除</span></a>
                        </td>
                        <td>系统管理员</td>
                    </tr>
                    <tr style="height: 36px;">
                        <td><input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1</td>
                        <td>下湾一中</td>
                        <td></td>
                        <td>首页</td>
                        <td>自动添加</td>
                        <td>正常</td>
                        <td>
                            <a href=""><span style="color: #0D62F0" data-toggle="modal" data-target="#myModaeditkeywords">修改</span></a>
                            &nbsp;|&nbsp;
                            <a href=""><span style="color: #EC2323" >删除</span></a>
                        </td>
                        <td>系统管理员</td>
                    </tr>
                    <tr style="height: 36px;">
                        <td><input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1</td>
                        <td>下湾一中</td>
                        <td></td>
                        <td>首页</td>
                        <td>自动添加</td>
                        <td>正常</td>
                        <td>
                            <a href=""><span style="color: #0D62F0" data-toggle="modal" data-target="#myModaeditkeywords">修改</span></a>
                            &nbsp;|&nbsp;
                            <a href=""><span style="color: #EC2323">删除</span></a>
                        </td>
                        <td>系统管理员</td>
                    </tr>


                    <tr style="height: 52px;background: #fff">
                        <td>&nbsp;&nbsp;&nbsp;<input type="checkbox" placeholder="" ng-model="c">&nbsp;&nbsp;&nbsp;&nbsp;全选</td>
                    </tr>
                    </tbody>
                </table>
                <div class="darbtnbox">
                    <button class="thisfresh">当前页一键刷新</button>
                    <button class="allfresh">全部文章一键刷新</button>
                    <button class="allfresh"  data-toggle="modal" data-target="#myModa42">添加关键词</button>
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
</body>
</html>



<!--添加关键词-->
<div class="modal fade" id="myModa42" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog" >
        <div class="modal-content" style="width:670px;height: auto;padding-bottom: 20px;">
            <div >
                <button type="button"  data-dismiss="modal"
                        aria-hidden="true" style="background: transparent;color: #009F43;border: 0;position: relative;left: 633px;font-size:25px;">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>
            <div class="modal-body" style="margin-left: 18px;padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;">

                <div class="inner inner-1" style=" width: 632px;height:auto;background-color: white;padding: 0 0 30px 0;">
                    <!--关键词名称-->
                    <form action="" method="post">
                        <%--添加url--%>
                        <div class="title-tb">
                            <span class="title-tb-1">添加静态页面URL</span>
                            <input type="text" placeholder="" style="border: 1px solid rgb(153,153,153);">

                        </div>
                        <div class="title-tb">
                            <span class="title-tb-1 title-tb-gjc">关键词</span>
                            <input type="text" placeholder="" style="border: 1px solid rgb(153,153,153);">
                            <span class="title-tb-2">可自定义关键词名称</span>

                        </div>
                        <!--自定义标题-->
                        <div class="title-tb bt-gjc">
                            <span class="title-tb-1 title-tb-gjc">内链接</span>
                            <textarea placeholder=""></textarea>
                            <span class="title-tb-2 title-tb-2-1">可自定义关键词标题</span></div>

                        <!--设置-->
                        <div class="title-tb">
                            <span class="title-tb-1"><span class="ztsz">设</span>置</span>
                            <label>
                                <select class="title-tb-3">
                                    <option>自动添加</option>
                                    <option>手动添加</option>
                                </select>
                            </label>
                            <span class="title-tb-2">可自定义关键词设置</span>
                        </div>
                        <!--状态-->
                        <div class="title-tb">
                            <span class="title-tb-1"><span class="ztsz">状</span>态</span>
                            <label>
                                <select class="title-tb-3">
                                    <option>正常</option>
                                    <option>删除</option>
                                </select>
                            </label>
                            <span class="title-tb-2">可自定义设置</span>
                        </div>
                        <!--操作人-->
                        <div class="title-tb">
                            <span class="title-tb-1 title-tb-gjc">操作人</span>
                            <label>
                                <select class="title-tb-3">
                                    <option>系统管理员</option>
                                    <option>运营管理员</option>
                                    <option>普通管理员</option>
                                    <option>编辑管理员</option>
                                </select>
                            </label>
                            <span class="title-tb-2">可自定义</span>
                        </div>


                        <div class="title-tb">
                            <button class="button1">提交</button>
                            <button class="button" type="reset">取消</button>
                        </div>
                    </form>
                </div>

            </div>

        </div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!--修改关键词-->
<div class="modal fade" id="myModaeditkeywords" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog" >
        <div class="modal-content" style="width:670px;height: auto;padding-bottom: 20px;">
            <div >
                <button type="button"  data-dismiss="modal"
                        aria-hidden="true" style="background: transparent;color: #009F43;border: 0;position: relative;left: 633px;font-size:25px;">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>
            <div class="modal-body" style="margin-left: 18px;padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;">

                <div class="inner inner-1" style=" width: 632px;height:auto;background-color: white;padding: 0 0 30px 0;">

                    <!--关键词名称-->
                    <form action="" method="post">
                        <div class="title-tb">
                            <span class="title-tb-1 title-tb-gjc">关键词</span>
                            <input type="text" placeholder="" style="border: 1px solid rgb(153,153,153);">
                            <span class="title-tb-2">可修改关键词名称</span>
                        </div>
                        <!--自定义标题-->
                        <div class="title-tb bt-gjc">
                            <span class="title-tb-1 title-tb-gjc">内链接</span>
                            <textarea placeholder=""></textarea>
                            <span class="title-tb-2 title-tb-2-1">可修改关键词标题</span></div>

                        <!--设置-->
                        <div class="title-tb">
                            <span class="title-tb-1"><span class="ztsz">设</span>置</span>
                            <label>
                                <select class="title-tb-3">
                                    <option>自动添加</option>
                                    <option>手动添加</option>
                                </select>
                            </label>
                            <span class="title-tb-2">可修改关键词设置</span>
                        </div>
                        <!--状态-->
                        <div class="title-tb">
                            <span class="title-tb-1"><span class="ztsz">状</span>态</span>
                            <label>
                                <select class="title-tb-3">
                                    <option>正常</option>
                                    <option>删除</option>
                                </select>
                            </label>
                            <span class="title-tb-2">可修改设置</span>
                        </div>
                        <!--操作人-->
                        <div class="title-tb">
                            <span class="title-tb-1 title-tb-gjc">操作人</span>
                            <label>
                                <select class="title-tb-3">
                                    <option>系统管理员</option>
                                    <option>运营管理员</option>
                                    <option>普通管理员</option>
                                    <option>编辑管理员</option>
                                </select>
                            </label>
                            <span class="title-tb-2">可修改</span>
                        </div>


                        <div class="title-tb">
                            <button class="button1">提交</button>
                            <button class="button" type="reset">取消</button>
                        </div>
                    </form>
                </div>

            </div>

        </div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<script>
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











        $("#Selected4").click(function(){
            oldState= $("#Selected4").text();
            if("block" == $("#ddoli4").css("display")){
                $("#ddoli4").hide();
            }else{
                $("#ddoli4").show();
            }
        });

        $("#ddoli4>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected4>span").html($(this).html());
                state=$(this).html();
                $("#ddoli4").hide();
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

        $("#Selected4").blur(function(){
            $("#ddoli4").hide();
        });






        $("#Selected5").click(function(){
            oldState= $("#Selected5").text();
            if("block" == $("#ddoli5").css("display")){
                $("#ddoli5").hide();
            }else{
                $("#ddoli5").show();
            }
        });

        $("#ddoli5>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected5>span").html($(this).html());
                state=$(this).html();
                $("#ddoli5").hide();
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

        $("#Selected5").blur(function(){
            $("#ddoli5").hide();
        });



    })
</script>