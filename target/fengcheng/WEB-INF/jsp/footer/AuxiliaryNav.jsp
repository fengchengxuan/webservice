<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>副导航</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <!--引用会员管理样式-->
    <link rel="stylesheet" href="${ctx}/static/background/css/Guest.css" type="text/css">
    <style>
        .list4{
            background:  #3eb7f3;
        }.contentbox .inner .navbox .statesel {
             height: 27px;
             border-radius: 4px;
             margin: 0 0 0 40px;
             border: 1px solid #ccc;
         }.contentbox .inner .navbox .opsonselect {
              border-radius: 4px;
              margin: 0 0 0 -3px;
              border: 1px solid #ccc;
              height: 27px;
          }
        .contener select{padding-right: 30px}
        #Selected{
            height: 33px;
            line-height: 33px;
            cursor: pointer;
            text-align: center;
            font-size: 12px;
            border: 1px solid #ccc;
            background: url(${ctx}/static/background/images/Arrow.jpg) no-repeat scroll right center transparent;
            padding-right: 35px;
            margin-left: 28px;
            border-radius:6px;
            padding-left:3px;
            float: left;
        }
        #ddoli ul{
            border: 1px solid #ccc;
            border-top: none;
            position: relative;left:26px;
            clear: both;
        }
        .stext{
            position: relative;
            top:-20px;left: 5px;
        }
        #ddoli ul li{
            cursor: pointer;
            width: 165px;
            height: 36px;
            line-height: 36px;
            text-align: center;
            background: #ffffff;
            color: #666;
            font-size: 12px;
            border-top: 1px solid #ccc;
            font-weight: 100;
            border-right: 1px solid #ccc;
        }
        #ddoli ul li:hover{
            background: #24a1ee;
            color: #ffffff;
        }
        .contener .admlistbox{
            height: auto;
            padding-bottom: 25px;
        }
    </style>
    <style>
        select{
            padding-right: 31px;
        }
        .contentbox .inner .navbox {
            margin: 11px 0 0 42px;
        }
        .contentbox select {
            -webkit-appearance: none;
            background: url(${ctx}/static/background/images/Arrow.jpg) no-repeat scroll right center transparent;
        }
        .contentbox .inner .navbox .save,.exit{
            border: none;
            border-radius:6px;
            width: 91px;
            height: 36px;
            color: white;
            background-color: #1893D3;
        }

        .contentbox .inner .navbox .btnbox{
            margin: 125px 0 0 260px;
        }
        .contentbox .inner .navbox .exit{
            margin: 0 0 0 90px;
        }
        .contentbox .inner .navbox .nav-create{
            width: 406px;
            height: 31px;
            border-radius: 6px;
            margin: 0 0 0 30px;
            border: 1px solid #ccc;
        }
        .contentbox .inner .navbox .nav-create option{
            font-size: 12px;
            font-family: "微软雅黑",sans-serif;
            color: #333333;

        }
        .contentbox .inner .navbox .cnavbtn{
            width: 134px;
            height: 40px;
            background-color: #24a1e4;
            border-radius: 4px;
            color: white;
            font-family: "微软雅黑",sans-serif;
            font-size: 14px;
            border: none;
            letter-spacing: 1px;
        }
        .contentbox .inner .navbox .stext {
            color: #F70707;
            font-family: "微软雅黑",sans-serif;
            font-size: 12px;

        }
        .contentbox .inner .navbox .c-input,.key-input,.nsetnav-input{
            width: 406px;
            height: 39px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        .contentbox .inner .navbox .c-input{
            margin: 14px 0 0 166px;
        }
        .contentbox .inner .navbox .key-input{
            margin: 14px 0 0 30px;
        }
        .contentbox .inner .navbox .nsetnav-input{
            margin: 14px 0 0 36px;
        }
        .contentbox .inner .navbox .cnav-title .cntitle{
            font-family: '微软雅黑',sans-serif;
            font-size: 14px;
            color:#333333;
            position: relative;
            top:-30px;
        }
        .contentbox .inner .navbox .disc .disctitle{
            font-family: '微软雅黑',sans-serif;
            font-size: 14px;
            color:#333333;
            position: relative;
            top:-30px;
        }
        .contentbox .inner .navbox .statesel{
            height: 24px;
            border-radius: 4px;
            margin: 0 0 0 40px;
            border: 1px solid #ccc;
        }
        .contentbox .inner .navbox .opsonselect{
            border-radius: 4px;
            margin: 0 0 0 -3px;
            border: 1px solid #ccc;height: 24px;
        }
        .contentbox .top span{
            color: #656565;
            font-family: "微软雅黑",sans-serif;
            font-size: 8px;

        }
    </style>
<style>
    #link-mod,#link-mod2{
        width: 100%;
        height: 800px;
        background: rgba(0,0,0,0.3);
        position: fixed;
        top:0;left:0;
        z-index: 9;
    }
    .link-mod-1{
        width: 865px;
        height: 660px;
        background: white;
        margin:24px auto 0 auto;
    }

    .link-mod-1>div img{
        cursor: pointer;
    }

    .link-mod-1  .linkname-box{
        position: relative;top: 10px;
    }
    .linkname-box>div{
        float: left;
    }
    .linkname{
        margin-left: 40px;
        width: 110px;
        height: 30px;
        line-height: 30px;
        text-align: right;
    }
    .linkname-box input{
        padding-left: 5px;
        width: 320px;
        height: 30px;
        border: 1px solid #ccc;
        border-radius: 3px;
        margin-left: 10px;
    }

    .link-b-t input{
        width: 120px;
        height: 30px;
        background: #1b95d3;
        color: white;
        cursor: pointer;
        border-radius: 3px;
        border: 0;
        margin:60px 0 0 220px;
    }
</style>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=false;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox" style="height: 1200px;">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>页脚管理</span>
            <span>></span>
            <span>版权所有</span>
        </div>
        <!-- 内部内容 -->

        <div class="inner inner-1" style=" width: 980px;height: 70px;
            background-color: white;">
            <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;版权所有</div>
        </div>

        <div class="inner inner-2" style=" width: 980px;height: 1300px;
            background-color: white;position: relative;top: -10px">
            <ul style="color:white;">
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;width: 83px;">导航名称</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #2194d2;width:200px">
                    导航URL
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #2194d2;width:99px">导航标题</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #2194d2;width:100px">导航关键词</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #2194d2;width:210px">导航描述</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #2194d2;width:90px">导航状态
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #2194d2;width:90px">编辑状态
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #2194d2;width:101px">操作人
                </li>
            </ul>

            <div style="width: 980px;height: 360px;">
                <ul>
                    <li style="width: 980px;height: 42px;display: block"></li>
                </ul>
                <table style="border: 0px;margin: 0;padding: 0;text-align: center;font-family: '微软雅黑';font-size: 12px;" id="Ulist">
                    <tr style="height: 10px;background: #fff"></tr>
                    <tr style="width: 980px;">
                        <td style="width: 84px;">副导航一</td>
                        <td style="width: 201px;"><a href="#">www.fengcheng7080.com</a></td>
                        <td style="width:100px">关于我们</td>
                        <td style="width:101px">公司简介</td>
                        <td style="width:211px" title="我们公司是专业提供网站建设、网络推广及营销、网络及文案策划于一体的公司。">我们公司是专业提供网站建设...</td>
                        <td style="width:91px;">正常</td>
                        <td style="width:91px"><span style="color: blue">修改</span> | <span style="color: red">删除</span></td>
                        <td style="width:102px">系统管理员</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 84px;">副导航一</td>
                        <td style="width: 201px;"><a href="#">www.fengcheng7080.com</a></td>
                        <td style="width:100px">关于我们</td>
                        <td style="width:101px">公司简介</td>
                        <td style="width:211px" title="我们公司是专业提供网站建设、网络推广及营销、网络及文案策划于一体的公司。">我们公司是专业提供网站建设...</td>
                        <td style="width:91px;">正常</td>
                        <td style="width:91px"><span style="color: blue">修改</span> | <span style="color: red">删除</span></td>
                        <td style="width:102px">系统管理员</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 84px;">副导航一</td>
                        <td style="width: 201px;"><a href="#">www.fengcheng7080.com</a></td>
                        <td style="width:100px">关于我们</td>
                        <td style="width:101px">公司简介</td>
                        <td style="width:211px" title="我们公司是专业提供网站建设、网络推广及营销、网络及文案策划于一体的公司。">我们公司是专业提供网站建设...</td>
                        <td style="width:91px;">正常</td>
                        <td style="width:91px"><span style="color: blue">修改</span> | <span style="color: red">删除</span></td>
                        <td style="width:102px">系统管理员</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 84px;">副导航一</td>
                        <td style="width: 201px;"><a href="#">www.fengcheng7080.com</a></td>
                        <td style="width:100px">关于我们</td>
                        <td style="width:101px">公司简介</td>
                        <td style="width:211px" title="我们公司是专业提供网站建设、网络推广及营销、网络及文案策划于一体的公司。">我们公司是专业提供网站建设...</td>
                        <td style="width:91px;">正常</td>
                        <td style="width:91px"><span style="color: blue">修改</span> | <span style="color: red">删除</span></td>
                        <td style="width:102px">系统管理员</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 84px;">副导航一</td>
                        <td style="width: 201px;"><a href="#">www.fengcheng7080.com</a></td>
                        <td style="width:100px">关于我们</td>
                        <td style="width:101px">公司简介</td>
                        <td style="width:211px" title="我们公司是专业提供网站建设、网络推广及营销、网络及文案策划于一体的公司。">我们公司是专业提供网站建设...</td>
                        <td style="width:91px;">正常</td>
                        <td style="width:91px"><span style="color: blue">修改</span> | <span style="color: red">删除</span></td>
                        <td style="width:102px">系统管理员</td>
                    </tr>

                </table>

            </div>
            <div  class="link-b-t" style="clear: both">
                <input type="submit" value="添加" onclick="hidetext()" style="margin:10px 0 0 344px;position: relative;z-index: 3">
                <input type="submit" value="修改" onclick="hidetext2()" style="margin: 0 0 0 20px;">
            </div>
            <div style="position: relative;left:300px;font-size: 16px;font-family:'黑体';color:#fff;">

                <p style="color:#333;position: relative;top: 20px;left: 80px;font-size:13px;font-family: '黑体'">共2页&nbsp; 1&nbsp; 2&nbsp; 上一页&nbsp; 下一页</p>
            </div>
        </div>

    </div>
</div>
<%--添加--%>
<div id="link-mod" style="display: none;">
    <div class="link-mod-1">
        <div  >
            <img src="${ctx}/static/background/images/x.png" alt="" onclick="linkmoddel()" style="margin-left: 830px;">
        </div>

        <div class="contentbox">
        <div class="inner" style="width: 865px;height: 635px">
            <form action="${ctx}/nav/addnav" method="post">

                <div class="navbox">
                    <div class="createnav">
                        <button class="cnavbtn">创建导航</button>
                        <div style="width: 220px;height: 30px;margin: -36px 0 0 140px">

                            <div class="ddo" id="Selected"><span>免费体验</span></div>
                            <div style="width: 0;height: 0;">
                                <div style="display: none" id="ddoli">
                                    <ul>
                                        <li style="border-top: none">我们能做什么</li>
                                        <li>我们能为你解决什么问题</li>
                                        <li>您从我们这里得到什么</li>
                                        <li>他（她）们都选我</li>
                                        <li style="border-bottom: 1px solid #ccc">我们是谁</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <span class="stext">请选择修改导航目录</span>
                        <input type="text" placeholder="" class="c-input" name="catalog">
                        <span class="stext" style="position: relative;top: 0">可自定义修改副导航名称</span>
                    </div>
                    <div class="cnav-title">
                        <span class="cntitle">
                            标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题 ( T i t l e )
                        </span>
                        <textarea placeholder="" style="border-radius: 6px;width: 406px;height: 73px;max-width: 406px;max-height: 73px;margin: 14px 0 0 30px;border: 1px solid #ccc" name="navtitle"></textarea>
                        <span class="stext" style="position: relative;top:-30px;"> 内容长度为10 个字符，一般不超过80个字符</span>
                    </div>
                    <div class="keyw">
                        <span style="font-family: '微软雅黑',sans-serif;font-size: 14px;color:#333333;line-height: 20px">
                            关键词 ( KeyWords )
                        </span>
                        <input type="text" placeholder="" class="key-input" name="keywords">
                        <span class="stext" style="position: relative;top: 0"> 内容长度22 个字符，一般不超过100个字符 </span>
                    </div>
                    <div class="disc">
                        <span class="disctitle">
                            描&nbsp;述 ( Deasription )
                        </span>
                        <textarea placeholder="" style="border-radius: 6px;width: 406px;height: 73px;max-width: 406px;max-height: 73px;margin: 14px 0 0 30px;border: 1px solid #ccc" name="navdescribe"></textarea>
                        <span class="stext" style="position: relative;top:-30px;"> 内容长度15 个字符，一般不超过200个字符</span>
                    </div>
                    <div class="nsetnav">
                        <span style="font-family: '微软雅黑',sans-serif;font-size: 14px;color:#333333;line-height: 20px">
                            设&nbsp;&nbsp;&nbsp;置&nbsp;&nbsp;&nbsp;导&nbsp;&nbsp;&nbsp;航&nbsp;&nbsp;URL
                        </span>
                        <input type="text" placeholder="" class="nsetnav-input" name="navurl">
                        <span class="stext" style="    position: relative;top: 0px;">不可修改</span>
                    </div>
                    <div class="state" style="position: relative;top:20px">
                        <span style="font-family: '微软雅黑',sans-serif;font-size: 14px;color:#333333">设&nbsp;&nbsp;置&nbsp;&nbsp;导&nbsp;&nbsp;航&nbsp;&nbsp;状&nbsp;&nbsp;态</span>
                        <label>
                            <select name="navstatus" class="statesel">
                                <option value="">正常</option>
                                <option value="">删除</option>
                            </select>

                        </label>
                    </div>
                    <div class="opson" style="position: relative;top:40px">
                        <span style="font-family: '微软雅黑',sans-serif;font-size: 14px;color:#333333;letter-spacing: 42px">操作人</span>
                        <label>
                            <select name="operator" id="" class="opsonselect">
                                <option value="">系统管理员</option>
                                <option value="">运营管理员</option>
                                <option value="">普通管理员</option>
                                <option value="">编辑管理员</option>
                            </select>
                        </label>
                    </div>
                    <div class="btnbox">
                        <button class="save">保存</button>
                        <button class="exit" type="reset">取消</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

        <div  class="link-b-t" >
            <input type="submit" value="确认添加">
        </div>
    </div>
</div>

<%--修改--%>
<div id="link-mod2" style="display: none;">
    <div class="link-mod-1">
        <div  >
            <img src="${ctx}/static/background/images/x.png" alt="" onclick="linkmoddel2()" style="margin-left: 830px;">
        </div>

        <div class="contentbox">
            <div class="inner" style="width: 865px;height: 635px">
                <form action="${ctx}/nav/addnav" method="post">

                    <div class="navbox">
                        <div class="createnav">
                            <button class="cnavbtn">创建导航</button>
                            <div style="width: 220px;height: 30px;margin: -36px 0 0 140px">

                                <div class="ddo" id="Selected"><span>免费体验</span></div>
                                <div style="width: 0;height: 0;">
                                    <div style="display: none" id="ddoli">
                                        <ul>
                                            <li style="border-top: none">我们能做什么</li>
                                            <li>我们能为你解决什么问题</li>
                                            <li>您从我们这里得到什么</li>
                                            <li>他（她）们都选我</li>
                                            <li style="border-bottom: 1px solid #ccc">我们是谁</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <span class="stext">请选择修改导航目录</span>
                            <input type="text" placeholder="" class="c-input" name="catalog">
                            <span class="stext" style="position: relative;top: 0">可自定义修改副导航名称</span>
                        </div>
                        <div class="cnav-title">
                        <span class="cntitle">
                            标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题 ( T i t l e )
                        </span>
                            <textarea placeholder="" style="border-radius: 6px;width: 406px;height: 73px;max-width: 406px;max-height: 73px;margin: 14px 0 0 30px;border: 1px solid #ccc" name="navtitle"></textarea>
                            <span class="stext" style="position: relative;top:-30px;"> 内容长度为10 个字符，一般不超过80个字符</span>
                        </div>
                        <div class="keyw">
                        <span style="font-family: '微软雅黑',sans-serif;font-size: 14px;color:#333333;line-height: 20px">
                            关键词 ( KeyWords )
                        </span>
                            <input type="text" placeholder="" class="key-input" name="keywords">
                            <span class="stext" style="position: relative;top: 0"> 内容长度22 个字符，一般不超过100个字符 </span>
                        </div>
                        <div class="disc">
                        <span class="disctitle">
                            描&nbsp;述 ( Deasription )
                        </span>
                            <textarea placeholder="" style="border-radius: 6px;width: 406px;height: 73px;max-width: 406px;max-height: 73px;margin: 14px 0 0 30px;border: 1px solid #ccc" name="navdescribe"></textarea>
                            <span class="stext" style="position: relative;top:-30px;"> 内容长度15 个字符，一般不超过200个字符</span>
                        </div>
                        <div class="nsetnav">
                        <span style="font-family: '微软雅黑',sans-serif;font-size: 14px;color:#333333;line-height: 20px">
                            设&nbsp;&nbsp;&nbsp;置&nbsp;&nbsp;&nbsp;导&nbsp;&nbsp;&nbsp;航&nbsp;&nbsp;URL
                        </span>
                            <input type="text" placeholder="" class="nsetnav-input" name="navurl">
                            <span class="stext" style="    position: relative;top: 0px;">不可修改</span>
                        </div>
                        <div class="state" style="position: relative;top:20px">
                            <span style="font-family: '微软雅黑',sans-serif;font-size: 14px;color:#333333">设&nbsp;&nbsp;置&nbsp;&nbsp;导&nbsp;&nbsp;航&nbsp;&nbsp;状&nbsp;&nbsp;态</span>
                            <label>
                                <select name="navstatus" class="statesel">
                                    <option value="">正常</option>
                                    <option value="">删除</option>
                                </select>

                            </label>
                        </div>
                        <div class="opson" style="position: relative;top:40px">
                            <span style="font-family: '微软雅黑',sans-serif;font-size: 14px;color:#333333;letter-spacing: 42px">操作人</span>
                            <label>
                                <select name="operator"  class="opsonselect">
                                    <option value="">系统管理员</option>
                                    <option value="">运营管理员</option>
                                    <option value="">普通管理员</option>
                                    <option value="">编辑管理员</option>
                                </select>
                            </label>
                        </div>
                        <div class="btnbox">
                            <button class="save">保存</button>
                            <button class="exit" type="reset">取消</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div  class="link-b-t" >
            <input type="submit" value="确认添加">
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script>
    function hidetext()
    {
        var mychar = document.getElementById("link-mod").style.display ="block";

    }
    function linkmoddel()
    {
        var mychar = document.getElementById("link-mod").style.display ="none";

    }




    function hidetext2()
    {
        var mychar = document.getElementById("link-mod2").style.display ="block";

    }
    function linkmoddel2()
    {
        var mychar = document.getElementById("link-mod2").style.display ="none";

    }
</script>
<script>
    function showLi(){
        $("#ddoli").show();
    }
    function hideLi(){
        $("#ddoli").hide();
    }
    $(document).ready(function() {
        $("#Selected").click(function(){
            if("block" == $("#ddoli").css("display")){
                hideLi();
            }else{
                showLi();
            }
        });

        $("#ddoli>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected>span").html($(this).html());
                hideLi();
            });
        });

        $("#Selected").blur(function(){
            hideLi();
        });
        $(".passwordShow").click(function () {
            var value = $(this).find("input").val();
            $("#password-p11").show();
            $(".loginName").val(value);

        });
        $("#passwordHide").click(function () {
            $("#password-p11").hide();
        });

    });
</script>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>
