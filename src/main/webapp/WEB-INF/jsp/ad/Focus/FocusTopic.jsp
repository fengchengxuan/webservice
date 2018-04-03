<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>焦点或者闪屏-首页</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/column1.css" type="text/css">
    <style>
        label select{
            height: 40px;
            background: #eee;
        }
        label{
            width: 0;
            height: 0;
            position: relative;
            top: -30px;
            left: 355px;
        }
        .list30{
            background: #3eb7f3;
        }
        input,textarea{
            margin-left: 10px;
        }
        input, textarea{
            margin-left: 5px;
        }
        .title-tb div div{
            clear: both;
        }
    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=false;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=false;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <<jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
<div class="contentbox" style="height: auto;">
    <div class="top">
        <img src="${ctx}/static/background/images/FZ.png" alt="">
        <span>广告管理</span>
        <span>></span>
        <a href="${ctx}/admin/focustopic">  <span>焦点或者闪屏</span></a>
        <span>></span>
        <a href="${ctx}/admin/focustopic"> <span>首页</span></a>
    </div>
    <!-- 内部内容 -->

    <div class="inner inner-1" style=" width: 980px;height:auto;background-color: white;padding: 0 0 30px 0;">
        <div class="title" style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;焦点栏目</div>

        <!--焦点一-->
        <div class="focus">焦点/闪屏一</div>
        <div style="font-size: 12px;color: #666;float: right;width: 430px; line-height: 10px; margin: -48px 262px 0 0;">
            <p>注释</p>
            <p>只能上传(1920*500)单位像素的图片,图片格式为PNG,JPG,</p>
            <p>GIF,图片大小350KB以内,超出则无法上传及替换</p>
        </div>
        <div class="title-tb">
            <span class="title-tb-1">图片标题</span>
            <input type="text" placeholder="" style="margin-left: 5px;">
            <span class="title-tb-2">图片标题可自定义</span></div>

        <div class="title-tb">
            <span class="title-tb-1">图片关键词</span>
            <input type="text" placeholder="" style="margin-left: 5px;">
            <span class="title-tb-2">图片关键词可自定义</span></div>

        <div class="title-tb">
            <span class="title-tb-1">图片描述</span>
            <textarea placeholder="" style="margin-left: 5px;"></textarea>
            <span class="title-tb-2 text2">图片描述可自定义</span></div>

        <div class="title-tb">
            <span class="title-tb-1">图片上传/图片地址</span>
            <input type="text" placeholder="" style="margin-left: 5px;">
            <span class="title-tb-2">可直接复制地址粘贴即可</span>
            <div>
                <div>
                <img src="${ctx}/static/background/images/TP.png">
                </div>

                <input type="file" name=""   class="a-upload" style="margin-left: 5px;">
            </div>






        </div>

        <div class="title-tb bplj">
            <span class="title-tb-1">图片链接</span>
            <input type="text" placeholder="" style="margin-left: 5px;">
            <span class="title-tb-2">可自定义图片链接地址</span>
            <div><img src=""></div>
        </div>

        <div class="title-tb">
            <button class="button1">保存</button>
            <button class="button" type="reset">取消</button>
        </div>

<br>
<!--焦点二-->
        <div class="focus">焦点/闪屏二</div>
        <div style="font-size: 12px;color: #666;float: right;width: 430px; line-height: 10px; margin: -48px 262px 0 0;">
            <p>注释</p>
            <p>只能上传(1920*500)单位像素的图片,图片格式为PNG,JPG,</p>
            <p>GIF,图片大小350KB以内,超出则无法上传及替换</p>
        </div>

        <div class="title-tb">
            <span class="title-tb-1">图片标题</span>
            <input type="text" placeholder="" style="margin-left: 5px;">
            <span class="title-tb-2">图片标题可自定义</span></div>

        <div class="title-tb">
            <span class="title-tb-1">图片关键词</span>
            <input type="text" placeholder="" style="margin-left: 5px;">
            <span class="title-tb-2">图片关键词可自定义</span></div>

        <div class="title-tb">
            <span class="title-tb-1">图片描述</span>
            <textarea placeholder="" style="margin-left: 5px;"></textarea>
            <span class="title-tb-2 text2">图片描述可自定义</span></div>

        <div class="title-tb">
            <span class="title-tb-1">图片上传/图片地址</span>
            <input type="text" placeholder="" style="margin-left: 5px;">
            <span class="title-tb-2">可直接复制地址粘贴即可</span>
            <div>
                <div>
                    <img src="${ctx}/static/background/images/TP.png">
                </div>
                <input type="file" name=""   class="a-upload" style="margin-left: 5px;">
            </div>



        </div>

        <div class="title-tb bplj">
            <span class="title-tb-1">图片链接</span>
            <input type="text" placeholder="" style="margin-left: 5px;">
            <span class="title-tb-2">可自定义图片链接地址</span>
            <div><img src=""></div>
        </div>

        <div class="title-tb">
            <button class="button1">保存</button>
            <button class="button" type="reset">取消</button>
        </div>
<br>
        <!--焦点三-->
        <div class="focus">焦点/闪屏三</div>
        <div style="font-size: 12px;color: #666;float: right;width: 430px; line-height: 10px; margin: -48px 262px 0 0;">
            <p>注释</p>
            <p>只能上传(1920*500)单位像素的图片,图片格式为PNG,JPG,</p>
            <p>GIF,图片大小350KB以内,超出则无法上传及替换</p>
        </div>

        <div class="title-tb">
            <span class="title-tb-1">图片标题</span>
            <input type="text" placeholder="" style="margin-left: 5px;">
            <span class="title-tb-2">图片标题可自定义</span></div>

        <div class="title-tb">
            <span class="title-tb-1">图片关键词</span>
            <input type="text" placeholder="" style="margin-left: 5px;">
            <span class="title-tb-2">图片关键词可自定义</span></div>

        <div class="title-tb">
            <span class="title-tb-1">图片描述</span>
            <textarea placeholder="" style="margin-left: 5px;"></textarea>
            <span class="title-tb-2 text2">图片描述可自定义</span></div>

        <div class="title-tb">

            <span class="title-tb-1">图片上传/图片地址</span>
            <input type="text" placeholder="" style="margin-left: 5px;">
            <span class="title-tb-2">可直接复制地址粘贴即可</span>

            <div>
                <div style="clear: both">
                    <img src="${ctx}/static/background/images/TP.png">
                </div>
                <input type="file" name="" id=""  class="a-upload" style="margin-left: 5px;">
            </div>


        </div>

        <div class="title-tb bplj">
            <span class="title-tb-1">图片链接</span>
            <input type="text" placeholder="" style="margin-left: 5px;">
            <span class="title-tb-2">可自定义图片链接地址</span>
            <div><img src=""></div>
        </div>

        <div class="title-tb">
            <button class="button1">保存</button>
            <button class="button" type="reset">取消</button>
        </div>

        <div class="title-cj">
            <button>创建焦点/闪屏模块</button>
        </div>

    </div>




</div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>
