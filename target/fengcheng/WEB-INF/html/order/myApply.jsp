<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>我的申请信息</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css">
    <link rel="stylesheet" href="${ctx}/static/front/css/menber.css">
    <style>
        .mcontainer{
            width: 1210px;
            margin: 0 auto;
            height: 1536px;
        }

        .myapply{
            background: #F53292;
        }
        .myapply .slma{
            color: white;
        }
    </style>
</head>
<body ng-init="i=false;t=true;w=true;f=true;g=true;h=true">
<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer">
        <jsp:include page="/static/front/comm/left.jsp"/>
        <div class="base-main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;会员中心&nbsp;>&nbsp;我的订单&nbsp;>&nbsp;免费体验</span>
            </div>
            <div class="setting">
                <div style="height:80px;">
                    <div class="setimg">

                    </div>
                </div>

                <div class="setb">
                    <div style="position: relative;top: -20px;"><span>显示状态</span><input type="text" id="status" readonly="readonly" style="background: #ddd" placeholder=""></div>
                    <div class="set-l">
                        <div><span>行业类型</span><input type="text"  id="industry" placeholder=""></div>
                        <div style="margin-top: 30px"><span>公司类型</span><input type="text" id="companyType" placeholder=""></div>
                        <div style="margin-top: 30px"><span>申请人类型</span><input type="text" id="application" placeholder=""></div>
                        <div style="margin-top: 30px"><span>公司名称</span><input type="text"  id="company" placeholder=""></div>
                        <div style="margin-top: 30px"><span>经营地址</span><input type="text"  id="address" placeholder=""></div>
                    </div>
                    <div class="set-r">
                        <div><span>固定电话</span><input type="text" id="fHpone" placeholder=""></div>
                        <div style="margin-top: 30px"><span>手机电话</span>
                            <input type="text" id="mHpone" placeholder="">
                        </div>
                        <div style="margin-top: 30px"><span>邮箱</span>
                            <input type="text" id="email" placeholder="">
                        </div>
                        <div style="margin-top: 30px"><span>公司网址</span>
                            <input type="text" id="website" placeholder="">
                        </div>
                        <div style="margin-top: 30px"><span>QQ/微信</span><input type="text" id="userQQ" placeholder=""></div>
                    </div>
                    <div class="setll">
                        <div style="margin-top: 30px"><span>免费体验及服务时间</span><textarea class="applytx" id="appContent" placeholder=""></textarea></div>
                    </div>
                </div>
                <div class="btnbox">
                    <button class="save" style="cursor: pointer;position: relative;top: 40px;left: 180px;" onclick="goApply()" >更改申请</button>
                    <button  id="goOrder" class="save" style="cursor: pointer">去下订单</button>
                </div>
            </div>
        </div>
    </div>
    <div ng-include="'/static/front/comm/footer.jsp'"></div>
</div>

<script src="${ctx}/static/front/js/angular.min.js"></script>
<script  src="${ctx}/static/front/js/jquery-1.11.0.min.js"></script>
<script language="javascript" type="text/javascript">
    //图片预览功能
    function previewImage(file,imgNum)
    {
        var MAXWIDTH  = 80;
        var MAXHEIGHT = 80;
        var div = document.getElementById('preview'+imgNum);
        div.width = "80px";
        div.height = "80px";
        div.style.borderRadius="40px";
        div.style.overflow = "hidden";
        if (file.files && file.files[0])
        {
            div.innerHTML ="<a href='javascript:;' class='file'>"+"修改头像"+
                "<input id='st18' name='evidence' onchange='previewImage(this,5)' type='file' style='height:80px;'/></a>"+
                "<span class='dui' id='imgOrder_dui' style='display: none;'></span>"+'<img id=imghead'+imgNum+'>';
            var img = document.getElementById('imghead'+imgNum+'');
            img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//         img.style.marginLeft = rect.left+'px';
//                img.style.marginTop = rect.top+'px';
                img.style.margin= '0 auto';
            };
            var reader = new FileReader();
            reader.onload = function(evt){img.src = '';img.src = evt.target.result;};
            reader.readAsDataURL(file.files[0]);
        }
        else //
        {
            var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
            file.select();
            var src = document.selection.createRange().text;
            div.innerHTML = "<img id=imghead'+imgNum+'>";
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
    $(document).ready(function (){
        $.ajax({
            url : '${ctx}/apply/userApply',
            type : 'POST',
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null && data!=""){
                    $("#status").val(data.status); $("#industry").val(data.industry);
                    $("#companyType").val(data.companyType); $("#application").val(data.application);
                    $("#company").val(data.company); $("#address").val(data.address);
                    $("#fHpone").val(data.fHpone); $("#mHpone").val(data.mHpone);
                    $("#website").val(data.website); $("#email").val(data.email);
                    $("#userQQ").val(data.userQQ); $("#appContent").val(data.appContent);
                }
            }
        })
    });
    //使用申请订单
  $("#goOrder").click(function () {
      if( $("#status").val()=="审核通过"){
          alert("审核通过");
          window.open("${ctx}/foryou");
      }else if($("#status").val()=="审核未通过"){
          alert("您没通过申请");
      }else{
          alert("还在申请中")
      }
  });

    function goApply() {//更改信息
      if( $("#status").val()=="申请中"){

      }else{
          alert("已经审核过了，不能修改");
      }
    }
</script>
</body>
</html>