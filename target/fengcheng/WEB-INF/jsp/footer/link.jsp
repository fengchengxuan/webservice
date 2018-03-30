<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>友情链接管理</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <!--引用会员管理样式-->
    <link rel="stylesheet" href="${ctx}/static/background/css/Guest.css" type="text/css">
    <style>
        .list39{
            background: #3eb7f3;
        }
        .select_model{    margin-left: 10px;
            height: 42px;
            position: relative;

        }
         .select_model{
            position: relative;
        }
         .Selected{border-radius: 3px;
            padding-left: 4px;
            border: 1px solid #ccc;
            height: 24px;
            line-height: 20px;
            cursor: pointer;
            text-align: center;
            font-size: 12px;
        }
         .Selected{
             width: 92px;
            height: 27px;
            line-height: 23px;
            cursor: pointer;
            text-align: center;
            font-size: 12px;

        }
         .ddoli{
            position: absolute;
            left: 0;
        }
         .ddoli{
            position: absolute;
            left: 0;
            z-index: 5;
        }
        .ddoli ul {
            border: 1px solid #ccc;
            border-top: none;
            border-radius: 4px;
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
            padding: 0 10px;
        }

        .ddoli ul li:hover{
            background: #24a1ee;
            color: #ffffff;
        }
        .contener .admlistbox{
            padding-bottom: 25px;
        }



        #link-mod{
            width: 100%;
            height: 800px;
            background: rgba(0,0,0,0.3);
            position: fixed;
            top:0;left:0;z-index: 34;
        }
        .link-mod-1{
            width: 554px;
            height: 410px;
            background: white;
            margin:100px auto 0 auto;
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
    <div class="contentbox" >
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>页脚管理</span>
            <span>></span>
            <span>友情链接管理</span>
        </div>
        <!-- 内部内容 -->

        <div class="inner inner-1" style=" width: 980px;height: 70px;
            background-color: white;">
            <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;友情链接管理</div>

        </div>

        <div class="inner inner-2" style=" width: 980px;height: 620px;
            background-color: white;position: relative;top: -10px">
            <ul style="color:white;">
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;width: 90px;">序号</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #208fca;width:121px">
                    友情链接名称
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #208fca;width:224px">友情链接url</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #208fca;width:157px">链接关键词</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #208fca;width:144px">链接状态</li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #208fca;width:137px">编辑状态
                </li>
                <li style="text-align:center;float: left;height: 43px;line-height: 43px;background: #24a1e4;border-left: 1px solid #208fca;width:101px">操作人
                </li>
            </ul>

            <div style="width: 980px;height: 360px;">
                <ul>
                    <li style="width: 980px;height: 42px;display: block"></li>
                </ul>
                <table style="border: 0;margin: 0;padding: 0;text-align: center;font-family: '微软雅黑',sans-serif;font-size: 12px;" id="Ulist">
                    <tr style="height: 10px;background: #fff"></tr>
                    <tr style="width: 980px;">
                        <td style="width: 45px;"><input type="checkbox" placeholder="" name="subBox" readonly></td>
                        <td style="width: 45px;">1</td>
                        <td style="width: 121px;"><span style="color: blue">洪记食品</span></td>
                        <td style="width:225px"><a href="#">www.fengcheng7080/guanyuwomen/</a></td>
                        <td style="width:159px">南宁网站建站公司</td>
                        <td style="width:145px">正常</td>
                        <td style="width:138px;"><span style="color: blue">修改</span> | <span style="color: red">删除</span></td>
                        <td style="width:102px">系统管理员</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 45px;"><input type="checkbox" placeholder="" name="subBox" readonly></td>
                        <td style="width: 45px;">1</td>
                        <td style="width: 121px;"><span style="color: blue">洪记食品</span></td>
                        <td style="width:225px"><a href="#">www.fengcheng7080/guanyuwomen/</a></td>
                        <td style="width:159px">南宁网站建站公司</td>
                        <td style="width:145px">正常</td>
                        <td style="width:138px;"><span style="color: blue">修改</span> | <span style="color: red">删除</span></td>
                        <td style="width:102px">系统管理员</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 45px;"><input type="checkbox" placeholder="" name="subBox" readonly></td>
                        <td style="width: 45px;">1</td>
                        <td style="width: 121px;"><span style="color: blue">洪记食品</span></td>
                        <td style="width:225px"><a href="#">www.fengcheng7080/guanyuwomen/</a></td>
                        <td style="width:159px">南宁网站建站公司</td>
                        <td style="width:145px">正常</td>
                        <td style="width:138px;"><span style="color: blue">修改</span> | <span style="color: red">删除</span></td>
                        <td style="width:102px">系统管理员</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 45px;"><input type="checkbox" placeholder="" name="subBox" readonly></td>
                        <td style="width: 45px;">1</td>
                        <td style="width: 121px;"><span style="color: blue">洪记食品</span></td>
                        <td style="width:225px"><a href="#">www.fengcheng7080/guanyuwomen/</a></td>
                        <td style="width:159px">南宁网站建站公司</td>
                        <td style="width:145px">正常</td>
                        <td style="width:138px;"><span style="color: blue">修改</span> | <span style="color: red">删除</span></td>
                        <td style="width:102px">系统管理员</td>
                    </tr>
                    <tr style="width: 980px;">
                        <td style="width: 45px;"><input type="checkbox" placeholder="" name="subBox" readonly></td>
                        <td style="width: 45px;">1</td>
                        <td style="width: 121px;"><span style="color: blue">洪记食品</span></td>
                        <td style="width:225px"><a href="#">www.fengcheng7080/guanyuwomen/</a></td>
                        <td style="width:159px">南宁网站建站公司</td>
                        <td style="width:145px">正常</td>
                        <td style="width:138px;"><span style="color: blue">修改</span> | <span style="color: red">删除</span></td>
                        <td style="width:102px">系统管理员</td>
                    </tr>

                </table>

                <div>
                    <div style="float: left;line-height: 36px;margin-left: 14px;"><input type="checkbox" placeholder="" class="checkAll"></div>
                    <div style="float: left;line-height: 36px;margin-left: 10px;" class="checkAll"> 全选  &nbsp;删除</div>
                </div>
            </div>


            <div  class="link-b-t">
                <input type="submit" value="添加" onclick="hidetext()" style="margin:10px 0 20px 410px;position: relative;z-index: 3">
            </div>

            <div style="font-size: 16px;font-family:'黑体',sans-serif;color:#fff;">

                <p style="color:#333;font-size:13px;font-family: '黑体',sans-serif;margin: 0 auto;width: 220px;">共2页&nbsp; 1&nbsp; 2&nbsp; 上一页&nbsp; 下一页</p>
            </div>

        </div>

    </div>



    <div id="link-mod" style="display: none">
        <div class="link-mod-1">
            <div  >
                <img src="${ctx}/static/background/images/x.png" alt="" onclick="linkmoddel()" style="margin-left: 520px;">
            </div>
            <div style="height: 15px;clear: both"></div>
            <div class="linkname-box">
                <div class="linkname">
                    友情链接名称
                </div>
                <div class="namei-t">
                    <input type="text" placeholder="">
                </div>
            </div>
            <div style="height: 35px;clear: both"></div>
            <div class="linkname-box">
                <div class="linkname">
                    友情URL
                </div>
                <div class="namei-t">
                    <input type="text" placeholder="">
                </div>
            </div>
            <div style="height: 35px;clear: both"></div>
            <div class="linkname-box">
                <div class="linkname">
                    链接关键词
                </div>
                <div class="namei-t">
                    <input type="text" placeholder="">
                </div>
            </div>
            <div style="height: 35px;clear: both"></div>
            <div class="linkname-box">
                <div class="linkname">
                    操作人
                </div>
                <div class="namei-t">
                    <div class="select_model">
                        <div class="Selected" id="Selected"><span style="font-size: 12px">系统管理员</span>&nbsp;<img src="${ctx}/static/background/images/right-l2.png" alt="下拉"></div>
                        <div style="display: none" class="ddoli" id="ddoli">
                            <ul>
                                <li style="border-top: none">系统管理员</li>
                                <li >运营管理员</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>


            <div style="clear: both" class="link-b-t">
                <input type="submit" value="确认添加">
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
<script>
    function hidetext()
    {
        var mychar = document.getElementById("link-mod").style.display ="block";

    }
    function linkmoddel()
    {
        var mychar = document.getElementById("link-mod").style.display ="none";

    }
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
    });



</script>
</body>
</html>







