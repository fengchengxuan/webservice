<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>

    <!DOCTYPE html>
    <html ng-app>
    <head>
    <meta charset="UTF-8">
    <title>密码设置</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/menber.css" type="text/css">
    <style>
    #qsrxmm1{
    line-height: 40px;
    font-size:12px;
    color:red;
    }
    .mcontainer{
    width: 1210px;
    margin: 0 auto;
    height: 1536px;
    }
    .mpwd .slma{
    color: white;
    }
    .mpwd {
    background: #F53292;
    }
    .pwd-input .note{
    display: none;
    }
    /*#tips{*/
    /*float: right;*/
    /*margin-right: 285px;*/
    /*}*/
    #tips span{
    line-height:40px;}
    .pwd-item input{
    float: left;
    }
    #passd,#qsrmm,#qsrxmm{
    line-height: 40px;
    font-size: 12px;
    margin-left: 5px;
    color: red;
    }
    </style>
    </head>
    <body ng-init="i=false;t=true;w=true;f=true;g=true;h=true">
    <div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>

    <div class="mcontainer">
  <jsp:include page="/static/front/comm/left.jsp"/>

    <div class="pwd-main" id="nava">
            <div class="way">
            <span>首页&nbsp;>&nbsp;<a href="${ctx}/vips">会员中心</a>&nbsp;>&nbsp;账号档案&nbsp;>&nbsp;密码设置</span>
            </div>
            <div class="pwd-setting">
                <div class="pwd-input">
            <div class="pwd-item">
            <span class="setn">原始登录密码</span>
     
       <form  autocomplete="off">    
            
			 <input type="text" class="demo" id="oldpassword"   name="password" onfocus="this.type='password'" autocomplete="off">
      
            <div id="qsrmm"></div>
            <span class="note" style="line-height: 40px"></span>
            </div>
            <div class="pwd-item">
            <span class="setn" >设置登录密码</span>
            <input type="text" id="password" placeholder="">
            <span class="note"></span>
            <div id="qsrxmm1"></div>
            <div id="qsrxmm"></div>

            </div>
            <div class="pwd-item">
            <span class="setn" >确认登录密码</span>
            <input type="text" id="repassword" name="" placeholder="" maxlength="20">
           </form> 
            
            
            <div id="tips"><span></span><span></span><span></span><span></span></div>
            <div id="passd"></div>


            <div class="note">
            <span class="note" style="position: absolute;"></span>
            </div>
            </div>
            </div>
            <div class="btnbox">
            <button class="save" style="cursor: pointer" onclick="mima()">更新保存</button>
            </div>
            </div>
            </div>
            </div>
    <jsp:include page="/static/front/comm/footer.jsp"/>

    </div>
    <script type="text/javascript" src="${ctx}/static/front/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/front/js/password.js"></script>
    <script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
    <script>

    //
    $(function () {
    var aStr = ["弱", "中", "强", "密码很强势"];
    function checkStrong(val) {
    var modes = 0;
    if (val.length < 6) return 0;
    if (/\d/.test(val)) modes++; //数字
    if (/[a-z]/.test(val)) modes++; //小写
    if (/[A-Z]/.test(val)) modes++; //大写
    if (/\W/.test(val)) modes++; //特殊字符
    if (val.length > 20) return 4;
    return modes;
    };

    $("#repassword").keyup(function() {
    var val = $(this).val();
    var num = checkStrong(val);
    switch (num) {
    case 0:
    break;
    case 1:
    $("#tips span").css('color', 'red').text('').eq(num - 1).css('font-size', '12px').text(aStr[num - 1]);
    break;
    case 2:
    $("#tips span").css('color', 'red').text('').eq(num - 1).css('font-size', '12px').text(aStr[num - 1]);
    break;
    case 3:
    $("#tips span").css('color', 'red').text('').eq(num - 1).css('font-size', '12px').text(aStr[num - 1]);
    break;
    case 4:
    $("#tips span").css('color', 'red').text('').eq(num - 1).css('font-size', '12px').text(aStr[num - 1]);
    break;
    default:
    break;
    }
    })

    })
    //}
    </script>
    </body>
    </html>