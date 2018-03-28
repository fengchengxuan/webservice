<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>修改导航</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/navstyle.css" type="text/css">
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
</head>
<body ng-init="sysa=false;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=false;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <a href="${ctx}/admin/administrator"> <span>系统管理</span></a>
            <span>></span>
            <a href="${ctx}/admin/wholenav"> <span>全部导航设置</span></a>
            <span>></span>
            <span>修改导航</span>
        </div>
        <div class="inner">
            <form action="" method="post">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;网站导航设置</div>
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
                    <span class="stext" style=" position: relative;top: 0;">不可修改</span>
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
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
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
</body>
</html>
