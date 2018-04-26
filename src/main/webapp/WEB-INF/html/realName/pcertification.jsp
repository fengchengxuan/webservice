<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>实名认证-个人认证</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/realname.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/tabfile.css" type="text/css">
    <style>
        .mcontainer{
            width: 1210px;
            margin: 0 auto;
            height: 1536px;
        }
        .nameslm .slma{
            color: white;
        }
        .nameslm{
            background: #F53292;
        }
        .thisPlatform{
            height: 520px;
        }
        a:hover{
            list-style: none;
        }
    </style>
    <style>
        #imghead5,#parseImg,#imgOrder_dui1 img,#imghead2{
            border-radius: 50%;
            width: 481px;
            height: 400px;
        }
        #conbox,#conbox1{
            display: none;
        }
        #conbox,#conbox1{
            width:600px;
            height: 200px;
            z-index: 999999;
            position: fixed;
            top: 10%;
            left: 30%;
        }
        .menutop img{
            width: 80px;
            height: 80px;
            border-radius: 50%;
        }
        .box{
            width: 481px;
            height: auto;
            background: white;
            margin: 0 auto;
        }
        .box1{
            width: 481px;
            height: 40px;
            line-height: 40px;
            background: #ABCB56;
        }
        .bsp{
            margin-left: 34px;
        }
        .box2{
            width: 60px;
            height: 40px;
            float: right;
            color: white;
        }
        .bsp2{
            margin-left: 20px;
            font-weight: 800;
        }
        .box3{
            width: 440px;
            height:auto;
            margin: 0 auto;
        }
        .box4{
            width: 164px;
            height: 40px;
            text-align: center;
            line-height: 50%;
            border: 1px solid #C4C9CE;
            margin-top: 15px;
        }
        .box4{
            width: 481px;
            height:40px;
        }
        .box-cent{
            clear: both;
            background: rgba(0,0,0,0.3);
            width: 481px;
            height: 400px;
        }</style>

</head>
<body ng-init="i=false;t=true;w=true;f=true;g=true;h=true">
<!--身分证正面-->
<div id="conbox" >
    <div class="box">
        <div class="box1">
            <span class="bsp">更换头像</span>
            <div class="box2">

                <span class="bsp2" onclick="hidebox()">X</span>
            </div>
        </div>
        <div class="box3">

            <input id="st18" name="evidence"  onchange="previewImage(this,5)"  type="file" style="height:30px;"/>


        </div>
        <div class="box-cent">
            <div class="setimg">
                <div id="preview5" style="float: left;">

                    <span class="dui" id="imgOrder_dui" style="display: none;"></span>
                    <img id="parseImg"  src="${ctx}/static/front/images/set-title.png" alt=""/>

                </div>
            </div>
        </div>
        <div class="box4">
            <button>上传</button>
            <button onclick="hidebox()">取消</button>
        </div>
    </div>

</div>
<!--手持身分-->
<div id="conbox1" >
    <div class="box">
        <div class="box1">
            <span class="bsp">更换头像</span>
            <div class="box2">

                <span class="bsp2" onclick="hidebox1()">X</span>
            </div>
        </div>
        <div class="box3">

            <input id="st182" name="evidence"  onchange="previewImage(this,2)"  type="file" style="height:30px;"/>


        </div>
        <div class="box-cent">
            <div class="setimg">
                <div id="preview2" style="float: left;">



                </div>
            </div>
        </div>
        <div class="box4">
            <button>上传</button>
            <button onclick="hidebox1()">取消</button>
        </div>
    </div>

</div>



<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer" id="nava">
        <jsp:include page="/static/front/comm/left.jsp"/>
        <div class="rName-main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;会员中心&nbsp;>&nbsp;账号档案&nbsp;>&nbsp;实名认证</span>
            </div>
            <div class="rName-choose">
                <div class="rName-img">
                    <div class="img"></div>
                    <div class="txt">温馨提示</div>
                </div>
                <div class="rName-text">
                    在您实名认证后，会对您账号归属有很大影响。例如，企业使用的帐号做个人实名认证后，遇到人员变动、交接账号、账号欠费或归属纠纷时，可能会对个人/企业都产生不好影响或带来经济损失，后续可能也会影响您提现或者获取发票。（我们会严格保护及加密您的相关信息不会外泄）
                </div>
            </div>
            <div class="poption">
                <div class="tab" role="tabpanel">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab">第三方品台认证</a></li>
                    </ul>

                        <div role="tabpanel" class="tab-pane fade" id="Section2">
                            <div class="ThirdParty">
                                <div><a href="" rel="nofollow"><img src="${ctx}/static/front/images/icon_1.png" alt=""></a></div>
                                <div><a href="" rel="nofollow"><img src="${ctx}/static/front/images/icon_2.png" alt=""></a></div>
                                <div><a href="" rel="nofollow"><img src="${ctx}/static/front/images/icon_3.png" alt=""></a></div>
                                <div><a href="" rel="nofollow"><img src="${ctx}/static/front/images/icon_4.png" alt=""></a></div>
                            </div>
                            <div class="ThirdParty-text">
                                选择相应的第三方平台认证点击即可进入第三方平台登录页面，输入您账号及密码点击登录，即可提示您已通过第三方平台实名快键认证稍后进入认证成功页面。
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/static/front/comm/footer.jsp"/>
</div>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/bootstrap.min.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
    //图片预览功能
    function previewImage(file,imgNum)
    {
        var MAXWIDTH  = 120;
        var MAXHEIGHT = 80;
        var div = document.getElementById('preview'+imgNum);
        div.style.width = '120px';
        div.style.height = '80px';
        div.style.border = '1px dashed #dddddd';
        div.style.marginLeft = "18px";
        if (file.files && file.files[0])
        {
            div.innerHTML ='<img id=imghead'+imgNum+'>';
            var img = document.getElementById('imghead'+imgNum+'');
            img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//         img.style.marginLeft = rect.left+'px';
                img.style.marginTop = rect.top+'px';
//                img.style.marginLeft = '18px';
            };
            var reader = new FileReader();
            reader.onload = function(evt){img.src = evt.target.result;};
            reader.readAsDataURL(file.files[0]);
        }
        else //
        {
            var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
            file.select();
            var src = document.selection.createRange().text;
            div.innerHTML = '<img id=imghead'+imgNum+'>';
            var img = document.getElementById('imghead2');
            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
            status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
            div.innerHTML = "<div id=divhead"+imgNum+" style='float:left;width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
        }
    }
    function clacImgZoomParam( maxWidth, maxHeight, width, height ){
        var param = {top:0, left:0, width:width, height:height};
        if( width>maxWidth || height>maxHeight )
        {
            rateWidth = width / maxWidth;
            rateHeight = height / maxHeight;

            if( rateWidth > rateHeight )
            {
                param.width =  maxWidth;
                param.height = Math.round(height / rateWidth);
            }else
            {
                param.width = Math.round(width / rateHeight);
                param.height = maxHeight;
            }
        }
        param.left = Math.round((maxWidth - param.width) / 2);
        param.top = Math.round((maxHeight - param.height) / 2);
        return param;
    }
</script>
<script type="text/javascript">
 function savePersonCertify() {
     if($("#reNameNum").val()!=$("#nameNum").val()){
         alert("身份证号不一致");
         return ;
     }
     $.ajax({
         type: 'POST',
         url: ctx + '/savePCertify',
         data:"name="+$("#name").val()+"&nameNum="+$("#nameNum").val()+"&phone="+$("#phone").val(),
         dataType: 'json',
         success: function (msg) {
             if (msg.ok) {
                 if(!msg.flag){
                     alert("已经认证过了");
                     location.reload();
                     return;
                 }
              alert("成功");
               location.reload();
             } else {
                 alert("失败")
             }
         }
     })
 }
</script>
  <script>
  
    function hidebox()
    {
        var mychar = document.getElementById("conbox").style.display ="none";


    }
    function showbox()
    {
        var mychar = document.getElementById("conbox").style.display ="block";

    }

    function hidebox1()
    {
        var mychar = document.getElementById("conbox1").style.display ="none";


    }
    function showbox1()
    {
        var mychar = document.getElementById("conbox1").style.display ="block";

    }

  
    $(".post").click(function(){
    if($("#name").val()==null || $("#name").val()=="" ) {
    //alert("");
    $("#qsrm").html("请输入名字");

    return ;
    }
    else  if($("#sfz").val()==null || $("#sfz").val()=="" ) {
    //alert("");
    $("#qsrmm").html("请输入身份证");

    return ;
    } else if($("#dh").val()==null||$("#dh").val()=="" ){
    //alert("");
    $("#qsrxmm").html("请输入电话号码");

    return ;
    }

    else if($("#oldpassword").val()==$("#password").val() ){
    //alert("");
    $("#passd").html("新旧身份证号不能一样");
    return ;
    }



    });
    </script>
</body>
</html>