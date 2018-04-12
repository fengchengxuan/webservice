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
                                    <input type="password"  placeholder="请您输入登录密码"  name="password" id="password" onkeyup="key()"/>
                                </div>
                                <input type="button" class="login" id="logins" value="登录">
                                <span style="float: left;margin-left: 9px"><a style="color: #FA4F4F" href="#">忘记密码</a></span>
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
<script src="${ctx}/static/front/qr/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/static/front/qr/jquery.qrcode.min.js"></script>
<script src="${ctx}/static/front/js/login.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function(){
        $("#output").qrcode({
            render: "table", //table方式
            width: 151, //宽度
            height:151, //高度
            text: "www.fengcheng7080.com" //任意内容
        });
    });
</script>

</body>
</html>