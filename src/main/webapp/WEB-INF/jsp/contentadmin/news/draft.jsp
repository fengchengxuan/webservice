<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>草稿新闻</title>
     <link rel="stylesheet" href="${ctx}/static/front/css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="${ctx}/static/background/css/top.css">
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/news.css" type="text/css">
    <style>
        .list11{
            background: #3eb7f3;
        }
        .select_model{
            height: 42px;
            position: relative;
        }
        .Selected{
            height: 42px;
            line-height: 42px;
            cursor: pointer;
            text-align: center;
            font-size: 14px;
            border-left:1px solid #2090cc;
        }
        .ddoli{
            position: absolute;
            left: 0;
            top: 43px;
        }
        .ddoli ul {
            /*width: 105px;*/
            border: 1px solid #ccc;
            border-top: none;
        }
        .ddoli ul li{
            cursor: pointer;
            height: 30px;
            line-height: 30px;
            text-align: center;
            background: #ffffff;
            color: #666;
            font-size: 14px;
            border-top: 1px solid #ccc;
            /*font-weight: 100;*/
        }
        #ddoli ul li{
            width: 95px;
        }
        #ddoli2 ul li{
            width: 126px;
        }
        #ddoli3 ul li{
            width: 117px;
        }
        .ddoli ul li:hover{
            background: #24a1ee;
            color: #ffffff;
        }
        .contener .admlistbox{
            height: auto;
            padding-bottom: 25px;
        }
    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=false;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=false;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>内容管理</span>
            <span>></span>
            <span>新闻管理</span>
            <span>></span>
            <span>草稿新闻</span>

        </div>
        <div class="inner" style="height: 1126px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;草稿新闻</div>
            <div class="draftart-top">
                <button class="keywords">关键词</button>
                <input style="width: 269px" type="text" placeholder="" value=" 例如：峰程7080，500名，免费体验，名额"
                       onfocus="this.value=''" onblur="if(this.value==''){this.value=' 例如:产品、评价、新闻、行情'}">
                <button class="key-search">搜索</button>
                <button class="search-title">标题搜索</button>
                <input style="width: 283px" type="text" placeholder="" value="例如：峰程7080开放500名免费中小型企业体验名额诚邀您参与"
                       onfocus="this.value=''" onblur="if(this.value==''){this.value=' 例如：我们与峰程的故事'}">
                <button class="title-search">搜索</button>
            </div>
            <div class="draftartbox">
                <table class="artable">
                    <thead>
                    <tr>
                    <th style="width: 97px;">序号</th>
                    <th style="width: 97px;border-left: 1px solid #057836">
                        <div class="select_model">
                            <div class="Selected" id="Selected"><span>导航一</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli">
                                <ul>
                                    <li style="border-top: none">导航一</li>
                                    <li>导航二</li>
                                    <li>导航三</li>
                                    <li>导航四</li>
                                    <li>导航五</li>
                                    <li>导航六</li>
                                    <li>导航七</li>
                                    <li>导航八</li>
                                    <li>导航九</li>
                                    <li>导航十</li>
                                    <li>导航十一</li>
                                    <li>导航十二</li>
                                    <li>导航十三</li>
                                    <li>导航十四</li>
                                    <li>导航十五</li>
                                    <li>导航十六</li>
                                    <li>导航十七</li>
                                    <li>导航十八</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 141px;border-left: 1px solid #057836">文章标题</th>
                    <th style="width: 128px;border-left: 1px solid #057836">
                        <div class="select_model">
                            <div class="Selected" id="Selected2"><span>系统管理员</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli2">
                                <ul>
                                    <li style="border-top: none">系统管理员</li>
                                    <li>运营管理员</li>
                                    <li>普通管理员</li>
                                    <li>编辑管理员</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 180px;border-left: 1px solid #057836">发布日期</th>
                    <th style="width: 119px;border-left: 1px solid #057836">
                        <div class="select_model">
                            <div class="Selected" id="Selected3"><span>正常</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                            <div style="display: none" class="ddoli" id="ddoli3">
                                <ul>
                                    <li style="border-top: none">正常</li>
                                    <li>草稿</li>
                                    <li>已删除</li>
                                </ul>
                            </div>
                        </div>
                    </th>
                    <th style="width: 112px;border-left: 1px solid #057836">编辑状态</th>
                    <th style="width: 106px;border-left: 1px solid #057836">文章浏览量</th>
                    </tr>
                    </thead>
                    <tbody ng-init="c=false">
                    <tr style="width: 980px;height: 5px"></tr>
                    <tr style="height: 36px;background-color: #F4F4F4">
                        <td><input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 52px">
                        <td><input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 36px;background-color: #F4F4F4">
                        <td><input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 52px">
                        <td><input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 36px;background-color: #F4F4F4">
                        <td><input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 52px">
                        <td><input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 36px;background-color: #F4F4F4">
                        <td><input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 52px">
                        <td><input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 36px;background-color: #F4F4F4">
                        <td><input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 52px">
                        <td>&nbsp;<input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 36px;background-color: #F4F4F4">
                        <td>&nbsp;<input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;11</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 52px">
                        <td>&nbsp;<input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;12</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 36px;background-color: #F4F4F4">
                        <td>&nbsp;<input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;13</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 52px">
                        <td>&nbsp;<input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;14</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 36px;background-color: #F4F4F4">
                        <td>&nbsp;<input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 52px">
                        <td>&nbsp;<input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;16</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 36px;background-color: #F4F4F4">
                        <td>&nbsp;<input type="checkbox" placeholder="" ng-checked="c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;17</td>
                        <td>新闻快报</td>
                        <td>我们与峰程的故事</td>
                        <td>fengcheng</td>
                        <td>2017年7月1日10：36</td>
                        <td>草稿</td>
                        <td>
                            <span style="color: #0D62F0">修改</span>
                            &nbsp;|&nbsp;
                            <span style="color: #EC2323">删除</span>
                        </td>
                        <td>89</td>
                    </tr>
                    <tr style="height: 52px">
                        <td>&nbsp;&nbsp;&nbsp;<input type="checkbox" placeholder="" ng-model="c">&nbsp;&nbsp;&nbsp;&nbsp;全选</td>
                    </tr>
                    </tbody>
                </table>
                <div class="darbtnbox">
                    <button class="thisfresh">当前页一键刷新</button>
                    <button class="allfresh">全部新闻一键刷新</button>
                </div>
                <div class="darpages">
                    <span>共10页</span>&nbsp;
                    <span>1</span>
                    <span>2</span>
                    <span>3</span>
                    <span>4</span>
                    <span>5</span>
                    <span>6</span>
                    <span>7</span>
                    <span>8</span>
                    <span>9</span>
                    <span>10</span>&nbsp;
                    <span>上一页</span>
                    <span>下一页</span>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#Selected").click(function(){
            if("block" == $("#ddoli").css("display")){
                $("#ddoli").hide();
            }else{
                $("#ddoli").show();
            }
        });

        $("#ddoli>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected>span").html($(this).html());
                $("#ddoli").hide();
            });
        });

        $("#Selected").blur(function(){
            $("#ddoli").hide();
        });
        $("#Selected2").click(function(){
            if("block" == $("#ddoli2").css("display")){
                $("#ddoli2").hide();
            }else{
                $("#ddoli2").show();
            }
        });

        $("#ddoli2>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected2>span").html($(this).html());
                $("#ddoli2").hide();
            });
        });

        $("#Selected2").blur(function(){
            $("#ddoli2").hide();
        });
        $("#Selected3").click(function(){
            if("block" == $("#ddoli3").css("display")){
                $("#ddoli3").hide();
            }else{
                $("#ddoli3").show();
            }
        });

        $("#ddoli3>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected3>span").html($(this).html());
                $("#ddoli3").hide();
            });
        });

        $("#Selected3").blur(function(){
            $("#ddoli3").hide();
        });
    })


</script>
</body>
</html>