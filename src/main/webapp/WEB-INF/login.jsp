<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>

    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>登录页</title>
    <link href="${ctx}/static/front/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/login/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/login.css" type="text/css">
    <link href="${ctx}/favicon.ico" rel="icon" type="image/x-icon"/>
    <style>
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
    .footer .content .top{
    height: 37px;
    }
    .footer .content .center{
    margin: 0;
    }
    </style>
    </head>

    <body>
    <div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>

    <div class="loginbg">
    <div class="logincon">
    <div class="loginbox" id="nava">
    <!--会员登录-->
    <div class="tab" role="tabpanel">
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active" style="left: 0">
    <a href="#Section1" aria-controls="home" role="tab" data-toggle="tab">会员登录</a></li>
    <li role="presentation">
    <a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab">扫码登录</a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content tabs" style="height: 220px">
    <div role="tabpanel" class="tab-pane fade in active" id="Section1">
    <div  class="width0height0">
    <span>
    <span id="login1124"></span>
    </span>
    </div>
    <div  class="width0height0">
    <span >
    <span  id="login11241">

    </span>
    </span>
    </div>
    <form action="" id="mainform" method="post" autocomplete="off" style="width: 151px;height: 151px">
    <div class="user">
    <img src="${ctx}/static/front/images/user.jpg" alt="">
    <input type="text"  placeholder="手机号/邮箱" name="phonenumber" id="phonenumber"/>
    </div>
    <div class="user" style="margin-top: 16px">
    <img src="${ctx}/static/front/images/password.jpg" alt="">
     <input type="password" name="txtPassword"   style="display:none;" />
    <input type="text" name="txtPassword" onfocus="this.type='password'"  autocomplete="off" placeholder="请输入密码"  name="password" id="password" onkeyup="key()" />



    
    
    </div>
    <input type="button" class="login" id="logins" value="登录">
    <span style="float: left;margin-left: 9px"><a style="color: #FA4F4F" href="#" onclick="showbox()">忘记密码</a></span>
    <span style="float: right;"><a style="color: #009F3F;position: relative;left: 113px" href="${ctx}/register">免费注册</a></span>
    </form>
    </div>
    <div role="tabpanel" class="tab-pane fade" id="Section2" style="text-align: center;height: 202px">
    <div id="output">

    </div>
    </div>
    </div>
    </div>
    <div class="shortcut" style="text-align: center">快捷登录</div>
    <hr>
    <div class="type">
    <div>
    <img src="${ctx}/static/front/images/qq.jpg" alt="">
    <span>QQ</span>
    </div>
    <div style="margin: 0 46px 0 46px">
    <img src="${ctx}/static/front/images/sina.jpg" alt="">
    <span>微博</span>
    </div>
    <div>
    <img src="${ctx}/static/front/images/wechat.jpg" alt="">
    <span>微信</span>
    </div>
    </div>
    </div>
    </div>

    </div>
    <jsp:include page="/static/front/comm/footer.jsp"/>

    </div>


    <!--忘记密码模态框 -->
    <div id="forget-password" style="position: fixed;top: 15%;left: 33%;z-index: 89999;display: none">
    <div class="modal-content" style="width:523px;height: 488px; ">
    <div >
    <button type="button" onclick="hidebox()" id="forget-password-h" style="background: transparent;color: #009F43;border: 0;position: relative;left: 486px;font-size:25px;">
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


    <form action="" method="post" id="pwdform">
    <div class="modal-body" style="margin-left: 18px;font-family: '微软雅黑',sans-serif;font-size: 14px;">
    <div class="blsit-list">
    <div  class="li">
    <div>账 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号<input type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 18px" name="userName" class="userName" ></div>
    <div style="margin: 15px 0">手&nbsp;&nbsp; 机&nbsp;&nbsp; 账&nbsp;&nbsp; 号<input  type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 18px" name="phone" id="phone">
    </div>
    <div style="color: #ccc;clear: both"><input type="text" placeholder="" style="float: left;width: 134px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 111px" name="code">
    <input type="button" class="bt-1 bt" id="pyzm" style="padding-top: 3px;" value="获取验证码" ><span style="margin-left: 8px">请手动刷新一下</span></div>
    <div style="margin-top:10px;clear: both "><p style="width: 112px;height: 60px;position: relative;top: 13px;">联系系统管理员</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">如果账号不是系统管理员密码忘记可直接联系系统管理员系统管理员拥有系统八大功能操作及管理权限，可通过删除或者修改，新建等措施，找回密码。</p>
    </div>
    <div style="margin-top:10px; "><p style="width: 112px;height: 60px;position: relative;top: 13px;letter-spacing:2.7px;">人工找回密码</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">
    技术支持<br>
    联系人名称：峰程<br>
    联系QQ：1312003765<br>
    联系电话：0771-430-0785</p>
    </div>
    <div style="position: absolute;top: 350px;left: 130px;">
    <input type="button"  style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;text-align: center;cursor: pointer" value="提交" id="forgetpwd">

    <input type="reset"
    style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;margin-left: 15px;" value="取消">

    </div>

    </div>
    <div  style="display: none" class="li">
    <div>账 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号<input type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 18px" name="userNames" ></div>
    <div style="margin: 15px 0;float: left">邮箱 &nbsp;&nbsp;&nbsp;&nbsp;e-mail<input  type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 20px" name="email" id="email">
    </div>
    <div style="color: #ccc;clear: both"><input type="text" placeholder="" style="float: left;width: 134px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 111px" name="e-code"><input type="button" class="bt-1 bt" id="eyzm" style="padding-top: 3px;" value="获取验证码" placeholder="">  <span style="margin-left: 8px">请手动刷新一下</span></div>

    <div style="margin-top:10px;clear: both "><p style="width: 112px;height: 60px;position: relative;top: 13px;">联系系统管理员</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">如果账号不是系统管理员密码忘记可直接联系系统管理员系统管理员拥有系统八大功能操作及管理权限，可通过删除或者修改，新建等措施，找回密码。</p>
    </div>
    <div style="margin-top:10px; "><p style="width: 112px;height: 60px;position: relative;top: 13px;letter-spacing:2.7px;">人工找回密码</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">
    技术支持<br>
    联系人名称：峰程<br>
    联系QQ：1312003765<br>
    联系电话：0771-430-0785</p>
    </div>
    <div style="position: absolute;top: 350px;left: 130px;">
    <input type="button"  style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;text-align: center;cursor: pointer" value="提交" id="forgetpswd">

    <input type="reset"
    style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;margin-left: 15px;" value="取消">
    </div>
    </div>
    </div>
    </div>
    </form>

    </div>
    <!-- /.modal-content --><!--内容-->

    </div>
    <div style="position: fixed;left:0;top:0;z-index: -1;width: 100%;height: 1500px;background: rgba(0,0,0,0.5)"></div>
    </div><!-- /.modal -->




    <script src="${ctx}/static/front/qr/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/front/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx}/static/front/qr/jquery.qrcode.min.js"></script>
    <script src="${ctx}/static/front/js/login.js" type="text/javascript"></script>
    <script>

    </script>
    <script type="text/javascript">
    $(function(){
    $("#output").qrcode({
    render: "table", //table方式
    width: 151, //宽度
    height:151, //高度
    text: "www.fengcheng7080.com" //任意内容
    });
    });


    function hidebox()
    {
    var mychar = document.getElementById("forget-password").style.display ="none";


    }
    function showbox()
    {
    var mychar = document.getElementById("forget-password").style.display ="block";

    }


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

    </body>
    </html>