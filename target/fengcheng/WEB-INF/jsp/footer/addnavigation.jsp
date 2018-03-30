<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>添加导航</title>
    <link rel="stylesheet" href="/static/css/navstyle.css">
    <style>
        body{
            min-width: 1170px;
        }
        .contentbox .top span{
            color: #656565;
            font-family: 微软雅黑;
            font-size: 8px;
        }
    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=false;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=false">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"></jsp:include>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"></jsp:include>
    <div class="contentbox">
        <div class="top">
            <img src="/images/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <a href="${ctx}/admin/hyperchannel"> <span>页脚管理</span></a>
            <span>></span>
            <a href="${ctx}/admin/AuxiliaryNav"> <span>副导航</span></a>
            <span>></span>
            <span>添加副导航</span>
        </div>
        <div class="inner">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;添加副导航</div>
            <div class="navbox">
                <div class="createnav">
                    <button class="cnavbtn">创建副导航</button>
                    <select class="nav-create">
                        <option>导航一</option>
                        <option>导航二</option>
                        <option>导航三</option>
                        <option>导航四</option>
                        <option>导航五</option>
                        <option>导航六</option>
                        <option>导航七</option>
                        <option>导航八</option>
                        <option>导航九</option>
                        <option>导航十</option>
                        <option>导航十一</option>
                        <option>导航十二</option>
                        <option>导航十三</option>
                        <option>导航十四</option>
                        <option>导航十五</option>
                        <option>导航十六</option>
                        <option>导航十七</option>
                        <option>导航十八</option>
                        <!--<option value="audi">导航</option>-->
                    </select>
                    <span class="stext">请选择导航目录</span>
                    <input type="text" class="c-input">
                    <span class="stext">可自定义副导航名称</span>
                </div>
                <div class="cnav-title">
                        <span class="cntitle">
                            标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题 ( T i t l e )
                        </span>
                    <textarea style="border-radius: 6px;width: 406px;height: 73px;max-width: 406px;max-height: 73px;margin: 14px 0 0 30px;border: 1px solid #ccc"></textarea>
                    <span class="stext" style="position: relative;top:-30px;"> 内容长度为10 个字符，一般不超过80个字符</span>
                </div>
                <div class="keyw">
                        <span style="font-family: '微软雅黑';font-size: 14px;color:#333333;line-height: 20px">
                            关键词 ( KeyWords )
                        </span>
                    <input type="text" class="key-input">
                    <span class="stext"> 内容长度22 个字符，一般不超过100个字符 </span>
                </div>
                <div class="disc">
                        <span class="disctitle">
                            描&nbsp;述 ( Deasription )
                        </span>
                    <textarea style="border-radius: 6px;width: 406px;height: 73px;max-width: 406px;max-height: 73px;margin: 14px 0 0 30px;border: 1px solid #ccc"></textarea>
                    <span class="stext" style="position: relative;top:-30px;"> 内容长度15 个字符，一般不超过200个字符</span>
                </div>
                <div class="nsetnav">
                        <span style="font-family: '微软雅黑';font-size: 14px;color:#333333;line-height: 20px">
                            设&nbsp;&nbsp;&nbsp;置&nbsp;&nbsp;&nbsp;导&nbsp;&nbsp;&nbsp;航&nbsp;&nbsp;URL
                        </span>
                    <input type="text" class="nsetnav-input">
                    <span class="stext">可自定义副导航网址</span>
                </div>
                <div class="state" style="position: relative;top:20px">
                    <span style="font-family: '微软雅黑';font-size: 14px;color:#333333">设&nbsp;&nbsp;置&nbsp;&nbsp;导&nbsp;&nbsp;航&nbsp;&nbsp;状&nbsp;&nbsp;态</span>
                    <select name="" class="statesel">
                        <option value="">正常</option>
                        <option value="">删除</option>
                    </select>
                </div>
                <div class="opson" style="position: relative;top:40px">
                    <span style="font-family: '微软雅黑';font-size: 14px;color:#333333;letter-spacing: 42px">操作人</span>
                    <select name="" id="" class="opsonselect">
                        <option value="">系统管理员</option>
                        <option value="">运营管理员</option>
                        <option value="">普通管理员</option>
                        <option value="">编辑管理员</option>
                    </select>
                </div>
                <div class="btnbox">
                    <button class="save">保存</button>
                    <button class="exit">取消</button>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"></jsp:include>
<script src="/static/js/angular.min.js"></script>
</body>
</html>