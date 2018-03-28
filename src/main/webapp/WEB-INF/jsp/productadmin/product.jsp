<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>产品</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/article.css" type="text/css">
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=false;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=false;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>

            <a href="${ctx}/admin/hyperchannel">  <span>产品管理</span></a>
            <span>></span>
            <span id="showTitle">产品></span>

        </div>
        <div class="inner" style="height: 1126px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;</div>

            <div class="draftartbox">
                <table class="artable">
                    <thead>
                    <tr>
                        <th style="width: 97px;">序号</th>
                        <th style="width: 169px;border-left: 1px solid #057836">
                            <label>
                                <select name="" id="proType" class="artselect">
                                    <option value="0">服务标准</option>
                                    <option value="1">体验版</option>
                                    <option value="2">基础版</option>
                                    <option value="2">加强版</option>
                                    <option value="3">定制版</option>
                                    <option value="3">商业版</option>
                                </select>
                            </label>
                        </th>

                        <th style="width: 128px;border-left: 1px solid #057836">
                            <label>
                                <select name="" id="systemId">
                                    <option value="1">时长</option>
                                    <option value="2">3个月</option>
                                    <option value="3">6个月</option>
                                    <option value="4">一年</option>
                                    <option value="4">两年</option>
                                    <option value="4">三年</option>
                                    <option value="4">四年</option>
                                    <option value="4">五年</option>
                                </select>
                            </label>
                        </th>
                        <th style="width: 180px;border-left: 1px solid #057836">需求定位</th>
                        <th style="width: 119px;border-left: 1px solid #057836">数量</th>
                        <th style="width: 142px;border-left: 1px solid #057836">价格</th>
                        <th style="width: 142px;border-left: 1px solid #057836">编辑状态</th>

                    </tr>


                    </thead>
                    <tbody ng-init="c=false" id="tbody">
                      <tr style="width: 980px;">
                        <td style="width: 27px"><input type="checkbox" placeholder="" name="subBox" readonly ng-checked="m">1</td>
                        <td style="width: 20px;">服务标准</td>
                        <td style="width: 169px">3个月</td>
                        <td style="width: 128px">需求定位</td>
                        <td style="width:119px">11</td>
                        <td style="width:142px">111元</td>
                        <td style="width:142px">修改/ <span style="color: red;cursor: pointer">删除</span></td>
                     </tr>
                    </tbody>

                </table>


                <div class="darbtnbox">
                    <button class="thisfresh" onclick="">返回上一页</button>
                </div>

                <div class="darpages" id="darpageswwww">
                    <input type="hidden" id="currentPage"/>
                    <span id="totalNum"></span>&nbsp;
                    &nbsp;
                    <span id="oldPage"><a href =javascript:void(null)>上一页</a></span>
                    <span id="nextPage"><a href =javascript:void(null)>下一页</a></span>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
<script type="text/javascript">
    var demandObj;//所以需求
    var totalNum;//总页数
    var titleId;//产品编号
    $(document).ready(function () {
        var title='${param.title}';
        if(title!=null){
            var showTitle= document.getElementById("showTitle");
            showTitle.innerHTML=title;
            $(".title").text("     "+title);
            $.ajax({
                url : '${ctx}/Product/allDemand',
                type : 'POST',
                data : "proTitle="+title,
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if(data!=null && data!=""){
                        demandObj=data.list[0].proInfoList;
                        titleId=data.list[0].id;
                        totalNum=data.totalNum;
                         $("#totalNum").text("共"+totalNum+"页");
                         $("#totalNum").val(totalNum);
                         $("#currentPage").val(1);
                         showInfo(demandObj,totalNum,$("#currentPage").val());
                    }
                }
            })
        }
    });
    function showInfo(list,totalNum,currentPage){

        $("#tbody").empty();
        var blank="<tr style=\"width: 980px;height: 5px\"></tr>";
        $("#tbody").append(blank);
        var i=(currentPage-1)*20;
        if(currentPage!=totalNum &&currentPage<totalNum) {
            var end=i+20;
            for (i;i < end ; i++) {
                var j=i+1;
                var row=" <tr style=\"width: 980px;\">" +
                    " <td style=\"width: 27px\"><input type=\"checkbox\" placeholder=\"\" name=\"subBox\" readonly ng-checked=\"m\">"+j+"</td>" +
                    " <td style=\"width: 20px;\">"+list[i].service +"</td>" +
                    " <td style=\"width: 169px\">"+list[i].timeValue +"</td>" +
                    " <td style=\"width: 128px\">"+list[i].demand +"</td>" +
                    "  <td style=\"width:119px\">"+list[i].totalNum+"</td>" +
                    "  <td style=\"width:142px\">"+list[i].servicePrice+"元</td>" +
                    "  <td style=\"width:142px\">" +
                    "<a href=\"javascript:void(null)\" onclick=\"upDate("+titleId+",'"+list[i].demand+"','"+list[i].service+"','"+list[i].timeValue+"')\"><span style=\"color: #0D62F0\">修改</span></a>" +
                    "&nbsp;|&nbsp;" +
                    "<a href=\"javascript:void(null)\" onclick=\" deleteInfo('"+list[i].id+"')\"><span style=\"color: #EC2323\">删除</span></a>" +
                    "</td>" +
                    "  </tr>";
                $("#tbody").append(row);
            }
        }else{
            for(i;i<list.length;i++){
                var j=i+1;
                var row=" <tr style=\"width: 980px;\">" +
                " <td style=\"width: 27px\"><input type=\"checkbox\" placeholder=\"\" name=\"subBox\" readonly ng-checked=\"m\">"+j+"</td>" +
                " <td style=\"width: 20px;\">"+ list[i].service +"</td>" +
                " <td style=\"width: 169px\">"+ list[i].timeValue+"</td>" +
                " <td style=\"width: 128px\">"+ list[i].demand+"</td>" +
                " <td style=\"width:119px\">"+ list[i].totalNum+"</td>" +
                " <td style=\"width:142px\">"+ list[i].servicePrice+"元</td>" +
                " <td style=\"width:142px\">" +
                    "<a href=\"javascript:void(null)\" onclick=\"upDate("+titleId+",'"+list[i].demand+"','"+list[i].service+"','"+list[i].timeValue+"')\"><span style=\"color: #0D62F0\">修改</span></a>" +
                    "&nbsp;|&nbsp;" +
                    "<a href=\"javascript:void(null)\" onclick=\" deleteInfo('"+list[i].id+"')\"><span style=\"color: #EC2323\">删除</span></a>" +
                  "</td>" +
                " </tr>";
                $("#tbody").append(row);
            }
        }
        for(var j=1;j<=$("#tbody").find("tr").length ;j++){
            if(j%2!=0){
                $("#tbody").find("tr:eq("+j+")").css("background-color","#cccccc");
            }else{
                $("#tbody").find("tr:eq("+j+")").css("background-color","#fffaff");
            }
        }
        $("#nextPage").before("<span id=\"page"+i+"\"><a href =javascript:void(null) >"+currentPage+"</a></sqan>");
    }
    $("#oldPage").click(function () {
        var currentPage= $("#currentPage").val();  //取当前页码
        var totalNum=$("#totalNum").val();       //取总页码
        var nextPage=currentPage-1;               //上一页的数
        if(currentPage>1){
            showInfo(demandObj,totalNum,$("#currentPage").val());
            $("#currentPage").val(nextPage);
        }else if(currentPage==1){
            alert("这里是首页哦！！！！");
        }
    });
    //下一页
    $("#nextPage").click(function () {
        var currentPage= $("#currentPage").val();
        var totalNum=$("#totalNum").val();
        var nextPage=parseInt(currentPage)+parseInt(1);
        if(currentPage<totalNum){
            showInfo(demandObj,totalNum,$("#currentPage").val());
            $("#currentPage").val(nextPage);
        }else if(currentPage==totalNum){
            alert("已经是最后一页了。");
        }
    });
    $(".thisfresh").click(function(){
        window.location.href="${ctx}/admin/allproduct";
    });
    //-----------修改
    function upDate(proId,demand,service,time){
        window.location.href = "${ctx}/admin/editproduct?code="+proId+"&demand="+demand+"&service="+service+"&time="+time;
    }
    //----删除
    function deleteInfo(id){
        $.ajax({
            url : '${ctx}/Product/deleteDemand',
            type : 'POST',
            data : "id="+id,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                alert("删除成功");
                window.location.href=window.location.href;
            }
        })
    }

</script>

</body>
</html>