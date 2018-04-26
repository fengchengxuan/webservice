<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>实名认证</title>
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
        a:hover{
            list-style: none;
        }
        #Section1{
            height: 650px;
        }
    </style>
</head>
<body ng-init="i=false;t=true;w=true;f=true;g=true;h=true">
<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer" id="nava">
        <jsp:include page="/static/front/comm/left.jsp"/>
        <div class="rName-main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;<a herf="${ctx}/vips">会员中心</a>&nbsp;>&nbsp;账号档案&nbsp;>&nbsp;实名认证</span>
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
                    <!-- Tab panes -->
                    <div class="tab-content tabs">
                        <div role="tabpanel" class="tab-pane fade in active" id="Section1">
                            <div class="thisPlatform">
                                <div class="TPitem">
                                    <span class="tpi-name" >企业名称</span>
                                    <input type="text" placeholder="" id="enterpriceName" onkeyup="value=value.replace(/[\d]/g,'') "onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[\d]/g,''))" maxlength=25 name="Numbers">
                                    <span class="enterpriceName"></span>
                                </div>
                                <div  class="TPitem">
                                    <span class="tpi-name" >法人姓名</span>
                                    <input type="text" placeholder="" id="corporateName" onkeyup="value=value.replace(/[\d]/g,'') "onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[\d]/g,''))" maxlength=8 name="Numbers">
                                    <span class="corporateName"></span>
                                </div>
                                <div  class="TPitem">
                                    <span class="tpi-name">申请人姓名</span>
                                    <input type="text" placeholder="" id="appName" onkeyup="value=value.replace(/[\d]/g,'') "onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[\d]/g,''))" maxlength=8 name="Numbers">
                                    <span class="appName"></span>
                                </div>
                                <div  class="TPitem">
                                    <span class="tpi-name">固定电话</span>
                                    <input type="text" placeholder="" id="phone">
                                    <span class="phone"></span>
                                </div>
                                <div  class="TPitem">
                                    <span class="tpi-name">手机号码</span>
                                    <input type="text" placeholder="" id="tel" maxlength="11">
                                    <span class="tel"></span>
                                </div>
                                <div  class="TPitem">
                                    <span class="tpi-name">公司网址</span>
                                    <input type="text" placeholder="" id="website">
                                    <span class="website"></span>
                                </div>
                                <div  class="TPimgitem">
                                    <span class="tpi-name">身份证正面</span>
                                    <div id="preview5" style="float: left;height: 80px">
                                        <a href="javascript:" class="file" style="cursor: pointer">选择文件
                                            <input style="margin-top:5px;float: left;height: 80px;width: 120px" id="st18" name="evidence" onchange="previewImage(this,5)" type="file"/>
                                        </a>
                                        <span class="dui" id="imgOrder_dui" style="display: none;"></span>
                                        <img src="" alt="" id="imghead5" height="80px" width="120px" style="float:left;margin-left:18px;border: 1px solid red;display: none"/>
                                    </div>
                                    <img style="margin: 0 0 0 44px;" src="${ctx}/static/front/images/example-1.png" alt="">
                                </div>
                                <div  class="TPimgitem">
                                    <span class="tpi-name">手持身份证照片</span>
                                    <div id="preview2" style="float: left;height: 80px">
                                        <a href="javascript:" class="file" style="cursor: pointer">选择文件
                                            <input style="margin-top:5px;float: left;height: 80px;width: 120px" id="st182" name="evidence" onchange="previewImage(this,2)" type="file"/>
                                        </a>
                                        <span class="dui" id="imgOrder_dui2" style="display: none;"></span>
                                        <img src="" alt="" id="imghead2" height="80px" width="120px" style="float:left;margin-left:18px;border: 1px solid red;display: none"/>
                                    </div>
                                    <img style="margin: 0 0 0 42px;" src="${ctx}/static/front/images/example-2.png" alt="">
                                </div>
                                <div  class="TPitem" style="margin-top: 40px">
                                    <button style="cursor: pointer" onclick="saveEnterCertify()">确认</button>
                                </div>
                            </div>
                        </div>
>>>>>>> e8e1d1dbc972a87c3d33f4b8c2eb0955204c89d5
                        <div role="tabpanel" class="tab-pane fade" id="Section2">
                            <div class="ThirdParty">
                                <div><a href="" rel="nofollow"><img src="${ctx}/static/front/images/icon_1.png" alt=""></a></div>
                                <div><a href="" rel="nofollow"><img src="${ctx}/static/front/images/icon_3.png" alt=""></a></div>
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
                img.style.marginTop = rect.top+'px';
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
    function saveEnterCertify() {
    	var phoneReg = /(^1[3|4|5|7|8]\d{9}$)|(^09\d{8}$)/;  
    	//电话  
    	var tel = $.trim($('#tel').val()); 
    	var website=$("#website").val();
    	
    	 if($("#enterpriceName").val()==null || $("#enterpriceName").val()=="" ) {
     	    //alert("");
     	    $(".enterpriceName").html("请输入企业名字");

     	    return ;
     	    }
     	    else  if($("#corporateName").val()==null || $("#corporateName").val()=="" ) {
     	  
     	    $(".corporateName").html("请输入法人名字");

     	    return ;
     	    }
     	    else if($("#appName").val()!=$("#appName").val()){
   	    	  $(".appName").html("请输入名字不能为空");
   	          return ;
   	      }
     	   
     	    else if($("#phone").val()==null||$("#phone").val()=="" ){
     	    //alert("");
     	    $(".phone").html("请输入电话号码");

     	    return ;
     	    }
     	   else if($("#tel").val()==null||$("#tel").val()=="" ){
        	    //alert("");
        	    $(".tel").html("请输入手机号码");

        	    return ;
        	    }else if (!phoneReg.test(tel)) {  
        	   
        	        $(".tel").html("请输入有效的手机号码");
        	        return ;  
        	    }  else  if(!(/^((ht|f)tps?):\/\/[\w\-]+(\.[\w\-]+)+([\w\-\.,@?^=%&:\/~\+#]*[\w\-\@?^=%&\/~\+#])?$/.test(website))){
        	             $('.website').html("请输入贵公司正确的网址");
        	             return ; 
        	         }
        	 
    
    	
    	

        $.ajax({
            type: 'POST',
            url: ctx + '/saveECertify',
            data:"enterpriceName="+$("#enterpriceName").val()+"&corporateName="+$("#corporateName").val()+"&appName="+$("#appName").val()+
            "&phone="+$("#phone").val()+"&tel="+$("#tel").val()+"&website="+$("#website").val(),
            dataType: 'json',
            success: function (msg) {
                if (msg.ok) {
                    if(!msg.flag){
                        alert("已经认证过了");
                       // location.reload();
                        return;
                    }
                    alert("成功");
                  //  location.reload();
                } else {
                    alert("失败")
                }
            }
        })
    }
    
    $("#enterpriceName").blur(function () { 
    if($("#enterpriceName").val()==null || $("#enterpriceName").val()=="" ) {
 	    //alert("");
 	    $(".enterpriceName").html("请输入企业名字");

 	    return ;
 	    }else{
 	    	 $(".enterpriceName").html("");
 	    }
    })
    
    $("#corporateName").blur(function () { 
 	    if($("#corporateName").val()==null || $("#corporateName").val()=="" ) {
 	  
 	    $(".corporateName").html("请输入法人名字");

 	    return ;
 	    }else{
 	    	 $(".corporateName").html("");
 	    }
    })
 	    
 	     $("#appName").blur(function () { 
 	     if($("#appName").val()!=$("#appName").val()){
	    	  $(".appName").html("请输入名字不能为空");
	          return ;
	      }else{
	    	  $(".appName").html("");
	      }
 	     })
 	    $("#phone").blur(function () { 
 	    if($("#phone").val()==null||$("#phone").val()=="" ){
 	    //alert("");
 	    $(".phone").html("请输入电话号码");

 	    return ;
 	    }else{
 	    	$(".phone").html("");
 	    }
 	    })
 	     $("#tel").blur(function () { 
 	 if($("#tel").val()==null||$("#tel").val()=="" ){
    	    //alert("");
    	    $(".tel").html("请输入手机号码");

    	    return ;
    	    }else{
    	    	 $(".tel").html("");
    	    }
 	     })
 	  $("#tel").blur(function () { 
 	 if (!phoneReg.test(tel)) {  
    	   
    	        $(".tel").html("请输入有效的手机号码");
    	        return ;  
    	    } else{
    	    	$(".tel").html("");
    	    }
 	  })
    
    $("#website").blur(function () { 
    	var website=$("#website").val();
        if(!(/^((ht|f)tps?):\/\/[\w\-]+(\.[\w\-]+)+([\w\-\.,@?^=%&:\/~\+#]*[\w\-\@?^=%&\/~\+#])?$/.test(website))){
            $('.website').html("请输入贵公司正确的网址").css("color","red")
        
        }else{
        	
         $('.website').html("")
        }
        })
    
    
    
 
</script>
</body>
</html>