<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>峰程后台登陆</title>
    <!-- 布局 -->
    <link href="${ctx}/static/background/login/css/master.css" type="text/css" rel="stylesheet">
    <!-- 内容样式 -->
    <link href="${ctx}/static/background/login/css/content.css" type="text/css" rel="stylesheet">
    <!-- 轮播图样式 -->
    <link rel="stylesheet" type="text/css" href="${ctx}/static/background/login/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/background/login/css/login.css">
    <style>
        #drag{
            border: 1px #ccc solid;
            position: relative;
            z-index: 9;
            background-color: #e8e8e8;
            width: 203px;
            height: 20px;
            line-height: 20px;
            text-align: center;
        }
        #drag .handler{
            position: absolute;
            top: 0;
            left: 0;
            width: 40px;
            height: 18px;
            border: 1px solid #ccc;
            cursor: move;
        }
        .handler_bg{
            background: #fff url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3hpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDIxIDc5LjE1NTc3MiwgMjAxNC8wMS8xMy0xOTo0NDowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo0ZDhlNWY5My05NmI0LTRlNWQtOGFjYi03ZTY4OGYyMTU2ZTYiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NTEyNTVEMURGMkVFMTFFNEI5NDBCMjQ2M0ExMDQ1OUYiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NTEyNTVEMUNGMkVFMTFFNEI5NDBCMjQ2M0ExMDQ1OUYiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTQgKE1hY2ludG9zaCkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo2MTc5NzNmZS02OTQxLTQyOTYtYTIwNi02NDI2YTNkOWU5YmUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NGQ4ZTVmOTMtOTZiNC00ZTVkLThhY2ItN2U2ODhmMjE1NmU2Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+YiRG4AAAALFJREFUeNpi/P//PwMlgImBQkA9A+bOnfsIiBOxKcInh+yCaCDuByoswaIOpxwjciACFegBqZ1AvBSIS5OTk/8TkmNEjwWgQiUgtQuIjwAxUF3yX3xyGIEIFLwHpKyAWB+I1xGSwxULIGf9A7mQkBwTlhBXAFLHgPgqEAcTkmNCU6AL9d8WII4HOvk3ITkWJAXWUMlOoGQHmsE45ViQ2KuBuASoYC4Wf+OUYxz6mQkgwAAN9mIrUReCXgAAAABJRU5ErkJggg==") no-repeat center;
        }
        .handler_ok_bg{
            background: #fff url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3hpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDIxIDc5LjE1NTc3MiwgMjAxNC8wMS8xMy0xOTo0NDowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo0ZDhlNWY5My05NmI0LTRlNWQtOGFjYi03ZTY4OGYyMTU2ZTYiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NDlBRDI3NjVGMkQ2MTFFNEI5NDBCMjQ2M0ExMDQ1OUYiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NDlBRDI3NjRGMkQ2MTFFNEI5NDBCMjQ2M0ExMDQ1OUYiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTQgKE1hY2ludG9zaCkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDphNWEzMWNhMC1hYmViLTQxNWEtYTEwZS04Y2U5NzRlN2Q4YTEiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NGQ4ZTVmOTMtOTZiNC00ZTVkLThhY2ItN2U2ODhmMjE1NmU2Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+k+sHwwAAASZJREFUeNpi/P//PwMyKD8uZw+kUoDYEYgloMIvgHg/EM/ptHx0EFk9I8wAoEZ+IDUPiIMY8IN1QJwENOgj3ACo5gNAbMBAHLgAxA4gQ5igAnNJ0MwAVTsX7IKyY7L2UNuJAf+AmAmJ78AEDTBiwGYg5gbifCSxFCZoaBMCy4A4GOjnH0D6DpK4IxNSVIHAfSDOAeLraJrjgJp/AwPbHMhejiQnwYRmUzNQ4VQgDQqXK0ia/0I17wJiPmQNTNBEAgMlQIWiQA2vgWw7QppBekGxsAjIiEUSBNnsBDWEAY9mEFgMMgBk00E0iZtA7AHEctDQ58MRuA6wlLgGFMoMpIG1QFeGwAIxGZo8GUhIysmwQGSAZgwHaEZhICIzOaBkJkqyM0CAAQDGx279Jf50AAAAAABJRU5ErkJggg==") no-repeat center;
        }
        #drag .drag_bg{
            background-color: #7ac23c;
            height: 20px;
            width: 0;
        }
        #drag .drag_text{
            position: absolute;
            top: 0;
            width: 200px;
            -moz-user-select: none;
            -webkit-user-select: none;
            user-select: none;
            -o-user-select:none;
            -ms-user-select:none;
        }



        input  {
            position: relative;z-index: 2;
        }
        .list5{
            background:  #3eb7f3;
        }
        .wrap .blist .li{
            cursor: pointer;
            background: white;
            color: #24a0ff;
            width: 110px;
            height: 33px;
            line-height: 33px;
            text-align: center;
            font-size: 14px;    border-radius: 4px;
            display: block;
        }

        .wrap .blist .li.active{
            cursor: pointer;
            background: url(${ctx}/static/front/images/title12.png);
            color: white;

        }
        .clearfix li{
            float: left;
        }
        .passwordShow{
            cursor: pointer;
        }
        .forget-password-s{
            cursor: pointer;
        }
        .forget-user-s{
            cursor: pointer;
        }
    </style>
</head>
<body>

<div id="header">
    <div style="width: 1200px;margin: 0 auto">
        <a href="http://www.fengcheng7080.com" target="_blank">
    <img src="${ctx}/static/background/login/images/logo.png">
        </a>

    </div>
</div>
<div>
    <div id="content">
        <div id="contrnt-left">

            <div id="bj" style="z-index: -9"><img src="${ctx}/static/background/login/images/bj_03.png"></div>
            <div id="lb">
                <!--轮播-->

                <div class="htmleaf-container">

                    <div class="poster-main" id="carousel" data-setting='{
                            "width":750,
                            "height":348,
                            "posterWidth":550,
                            "posterHeight":350,
                            "scale":0.8,
                            "speed":500,
                            "autoPlay":true,
                            "delay":4000,
                            "verticalAlign":"middle"
                            }'>
                        <div class="poster-btn poster-prev-btn"></div>
                        <div style="width: 0;height: 0; position: relative;left: 100px;z-index: 3;">
                        <div style="width: 523px;height: 316px;border: 14px solid #fff;"></div>
                        </div>
                        <ul class="poster-list">
                            <li class="poster-item"><a href="#"><img src="${ctx}/static/background/login/images/1.jpg" alt="" width="100%" style="border:none;"/></a></li>
                            <li class="poster-item"><a href="#"><img src="${ctx}/static/background/login/images/2.jpg" alt="" width="100%" style="border:none;"/></a></li>
                            <li class="poster-item"><a href="#"><img src="${ctx}/static/background/login/images/3.jpg" alt="" width="100%" style="border:none;"/></a></li>



                        </ul>
                        <div class="poster-btn poster-next-btn"></div>
                    </div>

                </div>
                <div id="SB"><img src="${ctx}/static/background/login/images/SB.png"></div>
            </div>
        </div>

        <div id="contrnt-right">
            <div id="contrnt-top" style="letter-spacing: 2px;line-height:44px;">
                <img src="${ctx}/static/background/login/images/title.png" style="width: 260px;height: 77px;position: relative;top: 110px;left: 10px;">
            </div>
            <img src="${ctx}/static/background/login/images/border.png" style="position: relative;top: -50px;left: -10px;width: 434px;height: 434px">
            <div id="contrnt-bottom">
                <form action="" id="mainform" method="post" autocomplete="off">

                    <div style="background: transparent;width: 434px;height: 280px;position: relative;top: -330px;left: -60px;color:#017DB5;">

                                <span style="position: relative;left: 100px"><span class="ups">用户名:</span>
                                    <input type="text" name="loginName" placeholder="请输入用户名" id="username"><img src="${ctx}/static/background/login/images/arrow.png" style="width: 16px;position: relative;left: -18px;top: 3px;z-index: 3">
                                </span>
                        <span style="position: relative;left: 101px;display: block;top:-20px;"><span class="ups">密<span style="margin-left: 14px">码:</span></span>
                                    <input type="password"  name="password" placeholder="请输入密码" id="password" onkeyup="keyup()" style="width: 150px"><img src="${ctx}/static/background/login/images/key.png" style="width: 16px;position: relative;left: -18px;margin-top: 30px;z-index: 3">

                                </span>

                        <div style="   margin: -12px 0 0 100px">

                            <div id="drag"></div>
                        </div>
                    </div>


                    <span  class="qaz" style="position: relative;    top: -523px;left: 79px;">
                        <input type="checkbox" id="rememberMe" placeholder="" ischeck="1"><span>记住密码</span> <span style="margin: 0 5px">忘记密码</span> <a class="forget-password-s">请点击这里</a>
                            </span>
                    <div style="position: relative;top: -490px;left: 41px" class="login-dl">
                        <img id="login" src="${ctx}/static/background/login/images/login.png"  style="cursor: pointer">
                        &nbsp;
                        <button type="reset">
                            <img src="${ctx}/static/background/login/images/reset.png" style="cursor: pointer" >
                        </button>
                    </div>



                </form>
            </div>
        </div>
    </div>
</div>

<div id="footer">
    <div id="footer-1">
        <ul>
            <li class="l1 l0">版权信息</li>
            <li>系统名称：峰程璇网络科技有限公司</li>
            <li>联系地址：广西南宁良庆区五象总部基地凯旋路9号</li>
            <li>海尔·东盟联合广场2号楼1411/1412室</li>
            <li>联系电话：0771-4300785</li>
            <li>公司网站：www.fengcheng7080.com</li>
        </ul>

        <ul style="margin-left:300px;">
            <li class="l2 l0">技术支持</li>
            <li>联系人名称：峰程  </li>
            <li>联系QQ：1312003765  </li>
            <li>联系电话：0771-4300785</li>
        </ul>

        <ul style="margin-left:300px;">
            <li class="l3 l0">业务洽谈</li>
            <li>联系人名称：峰程   </li>
            <li>联系QQ：1312003765</li>
            <li>联系电话：0771-4300785</li>
        </ul>
    </div>
</div>

<!--模态框 -->
<div id="forget-password" style="display: none;position: fixed;top: 15%;left: 33%;z-index: 4">
    <div class="modal-content" style="width:523px;height: 488px; background: #fff;position: relative;z-index:4">
        <div>
            <button type="button" id="forget-password-h" style="background: transparent;color: #009F43;border: 0;position: relative;left: 486px;font-size:25px;">
                <img src="${ctx}/static/background/images/admbutton.png" alt="">
            </button>
        </div>

        <div class="wrap">
            <div  class="left-Promise">
                <div style="background: white;width: 155px;height: 50px" class="blist clearfix">
                    <span class="active li" style="margin: 0 0 0 120px">账号</span>
                    <span class="li" style="margin: -33px 0 0 260px">邮箱</span>
                </div>
            </div>

                <div class="modal-body" style="margin-left: 18px;font-family: '微软雅黑',sans-serif;font-size: 14px;">

                    <form action="" method="post" id="secondform">

                    <div>账 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号<input type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 18px" name="user" >
                    </div>
                    <div class="blsit-list">
                        <div  class="li">

                            <div style="margin: 15px 0">手&nbsp;&nbsp; 机&nbsp;&nbsp; 账&nbsp;&nbsp; 号<input  type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 18px" name="phone" id="phone">
                            </div>
                            <div style="color: #ccc;clear: both"><input type="text" placeholder="" style="float: left;width: 134px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 111px" name="phonecode">
                                <input type="button" class="bt-1 bt" id="mobilecode" style="padding-top: 3px;    width: 100px;
    height: 26px;
    background: #199bff;
    border: 0;
    color: #fff;
    cursor: pointer;
    border-radius: 3px;" value="获取验证码" ><span style="margin-left: 8px">请手动刷新一下</span></div>
                            <div style="margin-top:10px;clear: both "><p style="width: 112px;height: 60px;position: relative;top: 13px;">联系系统管理员</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">如果账号不是系统管理员密码忘记可直接联系系统管理员系统管理员拥有系统八大功能操作及管理权限，可通过删除或者修改，新建等措施，找回密码。</p>
                            </div>
                            <div style="margin-top:10px; "><p style="width: 112px;height: 60px;position: relative;top: 13px;letter-spacing:2.7px;">人工找回密码</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">
                                技术支持<br>
                                联系人名称：峰程<br>
                                联系QQ：1312003765<br>
                                联系电话：0771-430-0785</p>
                            </div>
                            <div style="position: absolute;top: 410px;left: 130px;">
                                <input type="button"  style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;" value="提交" id="forgetpassword">

                                <input type="reset"
                                       style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;margin-left: 15px;" value="取消">

                            </div>

                        </div>
                        <div  style="display: none" class="li">
                            <div style="margin: 15px 0;float: left">邮箱 &nbsp;&nbsp;&nbsp;&nbsp;e-mail<input  type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 20px" name="email" id="email">
                            </div>
                            <div style="color: #ccc;clear: both"><input type="text" placeholder="" style="float: left;width: 134px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 111px" name="e-code" id="e-code"><input type="button" class="bt-1 bt" id="ecode" style="padding-top: 3px;    width: 100px;height: 26px;background: #199bff;border: 0;color: #fff;cursor: pointer;border-radius: 3px;" value="获取验证码">  <span style="margin-left: 8px">请手动刷新一下</span></div>

                            <div style="margin-top:10px;clear: both "><p style="width: 112px;height: 60px;position: relative;top: 13px;">联系系统管理员</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">如果账号不是系统管理员密码忘记可直接联系系统管理员系统管理员拥有系统八大功能操作及管理权限，可通过删除或者修改，新建等措施，找回密码。</p>
                            </div>
                            <div style="margin-top:10px; "><p style="width: 112px;height: 60px;position: relative;top: 13px;letter-spacing:2.7px;">人工找回密码</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">
                                技术支持<br>
                                联系人名称：峰程<br>
                                联系QQ：1312003765<br>
                                联系电话：0771-430-0785</p>
                            </div>
                            <div style="position: absolute;top: 410px;left: 130px;">
                                <input type="button"  style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;" value="提交" id="forget">

                                <input type="reset"
                                       style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;margin-left: 15px;" value="取消">

                            </div>

                        </div>
                    </div>
                    </form>
                </div>
                </div>

        </div>
    <div style="position: fixed;left:0;top:0;z-index: -1;width: 100%;height: 1500px;background: rgba(0,0,0,0.5)"></div>
        <!-- /.modal-content --><!--内容-->
    </div><!-- /.modal-dialog -->




<!-- 轮播导入 -->
<script type="text/javascript" src="${ctx}/static/background/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        // 忘记密码
        $("#forget-password-h").click(function () {
            $("#forget-password").hide();
        });
        $(".forget-password-s").click(function () {
            $("#forget-password").show();
        })
    });

    //    手机/邮箱验证
    $("#phone").blur(function(){
        var phoneber = $("#phone") .val();
        if(!(/^1(3|4|5|7|8)\d{9}$/.test(phoneber))){
            $("#mobilecode").attr("disabled","true");
            $(this).addClass("err");
            alert("手机号码格式错误,请重新填写");
        }else{
            $("#mobilecode").removeAttr("disabled");
            $(this).removeClass("err");
        }
    });

    $("#email").blur(function(){
        var emailber = $("#email") .val();
        if(!(/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/.test(emailber))){
            alert("邮箱格式错误，请重新填写");
            $(this).addClass("err");
            $("#ecode").attr("disabled","true");
            return false;
        }
        else{
            $("#ecode").removeAttr("disabled");
            $(this).removeClass("err");
        }
    });

    //手机短信发送
    $("#mobilecode").click(function () {
        var countdown = 60;
        settime(this);
        $.ajax({
            type: 'POST',
            url: ctx + '/admin/forgetpasswordcode',
            dataType: 'json',
            data: {"phone": $("#phone").val()},
            success: function (data) {
                console.log(data);
            }
        });
        function settime(obj) {
            if(countdown == 0) {
                obj.removeAttribute("disabled");
                obj.value = "获取验证码";
                countdown = 60;
                return;
            } else {
                obj.setAttribute("disabled", true);
                obj.value = "重新发送(" + countdown + ")";
                countdown--;
            }
            setTimeout(function() {
                settime(obj)
            }, 1000)
        }
    });

    //邮箱邮件发送
    $("#ecode").click(function () {
        var countdown = 60;
        settime(this);
        $.ajax({
            type: 'POST',
            url: ctx + '/admin/forgetpasswordecode',
            dataType: 'json',
            data: {"email": $("#email").val()},
            success: function (data) {
                console.log(data);
            }
        });
        function settime(obj) {
            if(countdown == 0) {
                obj.removeAttribute("disabled");
                obj.value = "获取验证码";
                countdown = 60;
                return;
            } else {
                obj.setAttribute("disabled", true);
                obj.value = "重新发送(" + countdown + ")";
                countdown--;
            }
            setTimeout(function() {
                settime(obj)
            }, 1000)
        }
    });



    <!--忘记密码-->
    $("#forgetpassword").click(function () {
        $.ajax({
            type: 'POST',
            url: ctx + '/admin/forgetpassword',
            dataType: 'json',
            data:$("#secondform").serialize() ,
            success: function (data) {
                if (data.flag){
                    if (data.data){
                    alert("操作成功,请耐心等待系统给您发的短信");
                    $.ajax({
                        type: 'POST',
                        url: ctx + '/admin/passwordcode',
                        data: "phone="+$("#phone").val(),
                        dataType: 'json',
                        async:true,
                        cache:false,
                        success: function (data) {
                            console.log(data);
                        }
                    });
                    window.location.reload();
                }else {
                    alert("验证码错误");
                }
                }else {
                    alert("没有这个账号");
                }
            }
        })
    });

    $("#forget").click(function () {
        $.ajax({
            type: 'POST',
            url: ctx + '/admin/forgetpassword',
            dataType: 'json',
            data:$("#secondform").serialize() ,
            success: function (data) {
                if (data.flag){
                    if (data.data){
                        alert("操作成功,请耐心等待系统给您发的邮件");
                        $.ajax({
                            type: 'POST',
                            url: ctx + '/admin/passwordecode',
                            data: "email="+$("#email").val(),
                            dataType: 'json',
                            async:true,
                            cache:false,
                            success: function (data) {
                                console.log(data);
                            }
                        });
                        window.location.reload();
                    }else {
                        alert("验证码错误");
                    }
                }else {
                    alert("没有这个帐号");
                }
            }
        })
    });

</script>
<script type="text/javascript">
    $(function(){
        $(".blist").on("click",".li",function(){
            // 设index为当前点击
            var index = $(this).index();
            // 点击添加样式利用siblings清除其他兄弟节点样式
            $(this).addClass("active").siblings().removeClass("active");
            // 同理显示与隐藏
            $(this).parents(".wrap").find(".blsit-list .li").eq(index).show().siblings().hide();
        })
    })
</script>
<script>
    (function($){
        $.fn.drag = function(options){
            var x, drag = this, isMove = false, defaults = {
            };
            var options = $.extend(defaults, options);
            //添加背景，文字，滑块
            var html = '<div class="drag_bg"></div>'+
                '<div class="drag_text" onselectstart="return false;" unselectable="on">拖动滑块验证</div>'+
                '<div class="handler handler_bg"></div>';
            this.append(html);

            var handler = drag.find('.handler');
            var drag_bg = drag.find('.drag_bg');
            var text = drag.find('.drag_text');
            var maxWidth = drag.width() - handler.width();  //能滑动的最大间距

            //鼠标按下时候的x轴的位置
            handler.mousedown(function(e){
                isMove = true;
                x = e.pageX - parseInt(handler.css('left'), 10);
            });

            //鼠标指针在上下文移动时，移动距离大于0小于最大间距，滑块x轴位置等于鼠标移动距离
            $(document).mousemove(function(e){
                var _x = e.pageX - x;
                if(isMove){
                    if(_x > 0 && _x <= maxWidth){
                        handler.css({'left': _x});
                        drag_bg.css({'width': _x});
                    }else if(_x > maxWidth){  //鼠标指针移动距离达到最大时清空事件
                        dragOk();
                    }
                }
            }).mouseup(function(e){
                isMove = false;
                var _x = e.pageX - x;
                if(_x < maxWidth){ //鼠标松开时，如果没有达到最大距离位置，滑块就返回初始位置
                    handler.css({'left': 0});
                    drag_bg.css({'width': 0});
                }
            });

            //清空事件
            function dragOk(){
                handler.removeClass('handler_bg').addClass('handler_ok_bg');
                text.text('验证通过');
                drag.css({'color': '#fff'});
                handler.unbind('mousedown');
                $(document).unbind('mousemove');
                $(document).unbind('mouseup');
            }
        };
    })(jQuery);
</script>
<script type="text/javascript">
    $('#drag').drag();
</script>
<script type="text/javascript" src="${ctx}/static/background/login/js/if.js"></script>
<script type="text/javascript" src="${ctx}/static/background/js/Carousel.js"></script>
<script type="text/javascript">
    $(function(){
        Carousel.init($("#carousel"));
        $("#carousel").init();
    });
</script>

</body>
</html>