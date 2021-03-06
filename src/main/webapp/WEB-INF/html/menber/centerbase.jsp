<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>会员中心</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/menber.css" type="text/css">
    <style>
        .mcontainer{
            width: 1210px;
            margin: 0 auto;
            height: 1536px;
        }
        .mbase .slma{
            color: white;
        }
        .mbase {
            background: #F53292;
        }
    </style>
    <style>
        .menutop img{
            width: 80px;
            height: 80px;
            border-radius: 50%;
        }
    </style>
</head>
<body>
<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer" id="nava">
        <jsp:include page="/static/front/comm/left.jsp"/>
        <form action="" id="myform" enctype="multipart/form-data" method="post">
        <div class="base-main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;会员中心&nbsp;>&nbsp;账号档案&nbsp;>&nbsp;会员基本设置</span>
            </div>
            <div class="setting">
                <div style="height:160px;">
                    <div class="setimg">
                        <div id="preview5" style="float: left;height: 80px">
                            <a href="javascript:" class="file">
                                <img id="parseImg"  src="${ctx}/static/front/images/set-title.png" alt=""/>
                                <input id="st18" name="evidence"  onchange="previewImage(this,5)" type="file" style="height:80px;"/>
                                <div style="width: 0;height: 0">
                                    <div class="alr-tou">修改头像</div>
                                </div>
                            </a>
                            <span class="dui" id="imgOrder_dui" style="display: none;"></span>
                        </div>
                    </div>
                </div>

                <div class="setb">
                    <div class="set-l">
                        <div><span>会员名昵称</span><input type="text"  placeholder="" id="vipname"></div>
                        <div style="margin-top: 30px"><span>手机电话</span><input type="text" placeholder="" id="phonenumber"></div>
                        <div style="margin-top: 30px"><span>固定电话</span><input type="text" placeholder="" id="stablephone"></div>
                        <div style="margin-top: 30px"><span>电子邮箱</span><input type="text" placeholder="" id="email"></div>
                        <div style="margin-top: 30px"><span>QQ/微信</span><input type="text" placeholder="" id="social"></div>
                    </div>
                    <div class="set-r">
                        <div><span>公司名称</span><input type="text" placeholder="" id="companyname"></div>
                        <div style="margin-top: 30px"><span>行业类型</span>
                            <label>
                            <select name="htype" id="htype">
                                <option value="0">政府|非盈利机构</option>
                                <option value="1">文体教育|工艺美术</option>
                                <option value="2">金融业</option>
                                <option value="3">房地产|建筑业</option>
                                <option value="4">商业服务|个体</option>
                                <option value="5">贸易|批发|零售|租赁业</option>
                                <option value="6">生产|加工|制造</option>
                                <option value="7">交通|运输|物流|仓储</option>
                                <option value="8">服务业|个体</option>
                                <option value="9">能源|矿产|环保</option>
                                <option value="10">农|林|牧|渔|其他</option>
                                <option value="11">文化|传媒|娱乐|体育</option>
                            </select>
                            </label>
                        </div>
                        <div style="margin-top: 30px"><span>公司类型</span>
                            <label>
                            <select name="ctype" id="ctype">
                                <option value="0">国有企业</option>
                                <option value="1">集体所有制</option>
                                <option value="2">私营企业</option>
                                <option value="3">股份制企业</option>
                                <option value="4">联营企业</option>
                                <option value="5">外商投资企业</option>
                                <option value="6">港、澳、台</option>
                                <option value="7">股份合作企业</option>
                            </select>
                            </label>
                        </div>
                        <div style="margin-top: 30px"><span>申请人类型 </span>
                            <label>
                            <select name="stype" id="stype">
                                <option value="0">法人</option>
                                <option value="1">股东</option>
                                <option value="2">项目负责人</option>
                            </select>
                            </label>
                        </div>
                        <div style="margin-top: 30px"><span>公司网址</span><input type="text" placeholder="" id="web"></div>
                    </div>
                    <div class="setll">
                        <div style="margin-top: 30px"><span>经营地址</span><input type="text" placeholder="" id="address"></div>
                    </div>
                </div>
                <div class="btnbox">
                    <input class="save" type="button" style="cursor: pointer" value="更新保存">
                </div>
            </div>
        </div>
        </form>
    </div>
    <jsp:include page="/static/front/comm/footer.jsp"/>
</div>
<script src="${ctx}/static/background/js/jquery-3.2.1.js"></script>
<script src="${ctx}/static/front/js/vip.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>

<script language="javascript" type="text/javascript">
    //图片预览功能
    function previewImage(file,imgNum)
    {
        var formData = new FormData($("#myform")[0]);
        var MAXWIDTH  = 80;
        var MAXHEIGHT = 80;
        var div = document.getElementById('preview'+imgNum);
        div.width = "80px";
        div.height = "80px";
        div.style.borderRadius="40px";
        div.style.overflow = "hidden";
        if (file.files && file.files[0]) {
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
            reader.onload = function(evt){img.src = '';img.src = evt.target.result;
            };
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
        myshow (formData);
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
    $(document).ready(function () {
        var path='${sessionScope.path}';
        // $("#parseImg").attr("src",path);
        $.ajax({
            url: '${ctx}/showUserInfo',
            type: 'POST',
            dataType: "json",
            cache: false,
            success: function (data) {
                if (data.flag) {
                     var log=data.entity;
                    $("#vipname").val(log.vipname);
                    $("#phonenumber").val(log.phonenumber);
                    $("#stablephone").val(log.stablephone);
                    $("#email").val(log.email);
                    $("#social").val(log.social);
                    $("#companyname").val(log.companyname);
                    $("#htype").val(log.htype);
                    $("#ctype").val(log.ctype);
                    $("#stype").val(log.stype);
                    $("#web").val(log.web);
                    $("#address").val(log.address);
                }
            }
        })
    });
</script>

</body>
</html>