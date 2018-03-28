<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>修改产品信息</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/revnews.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/index.css" type="text/css">
</head>
<style>
    .contener .inner .setnewsbox{
        height: 592px;
    }
    #searchresult{
        left: 10.6%;
        top: 46.44%;
        position: relative;
        z-index: 1;
        background: #ffffff;
        border-top: none;
        width: 512px;
        height: 0;
        cursor: pointer;
    }
    #searchInfo{
        left: 10.6%;
        top: 46.44%;
        position: relative;
        z-index: 1;
        background: #ffffff;
        border-top: none;
        width: 512px;
        height: 0;
        cursor: pointer;
    }
    .fanan div span{
        text-align: right;
        width: 82px;
        display: block;
        float: left;
    }.fanan>div{
                margin-top: 10px;
         }
    .text-fangan input{
        width: 60px;
        height: 40px;
    }
    #edui2{
        display: none;
    }
</style>
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

            <a href="${ctx}/admin/hyperchannel"> <span>产品管理</span></a>
            <span>></span>
            <span>修改产品信息</span>
        </div>
        <div class="inner" style="height: 772px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;修改产品信息</div>
            <div id="productType" class="revnewselect" style="line-height: 31px">
               选择产品发布类型
            </div>
            <div class="setnewsbox">
                <div class="newstitle">
                    <span class="head" style="letter-spacing: 5px" >产品标题</span>
                    <input type="text" id="productTitle" placeholder="">
                    <div id="searchresult"></div>
                    <p class="end">产品标题字数不能超30个字，超出字数无法进行提交。</p>
                </div>



                <div class="fanan">

                    <div>
                         <span>
                    需求定位
                         </span>
                        <input type="text" name="" id="demand" placeholder="">
                        <div id="searchInfo"></div>
                    </div>

                    <div>
                         <span>
                    新的定位
                         </span>
                        <input type="text" name="" id="newDemand" placeholder="">
                    </div>

                    <hr>
                    <div>
                         <span >
                    服务标准
                         </span>
                        <label>
                        <select style="margin-left: 12px;font-weight: 400" id="service">
                            <option>请选择</option>
                            <option>体验版</option>
                            <option>基础版</option>
                            <option>加强版</option>
                            <option>定制版</option>
                            <option>商业版</option>
                        </select>
                        </label>
                        购买金额
                        <input type="text" name="" id="servicePrice" style="width: 100px;" placeholder="">
                    </div>

                <div>
                    <span>
                    硬性配置
                    </span>
                    <input type="text" name="" id="hard_Configuration" placeholder="">
                </div>

                    <div>
                    <span>
                    软性配置
                    </span>
                        <input type="text" name="" id="soft_Configuration" placeholder="">
                    </div>

                    <div>
                    <span>
                    人员配置
                    </span>
                        <input type="text" name="" id="personnel" placeholder="">
                    </div>

                    <div>
                    <span style="width: 121px;margin-left: -44px">
                    产品时间配备范围
                    </span>
                    <input type="text" name="" id="time_Allocation" placeholder="">
                </div>

                    <div>
                    <span>
                    适合用户
                    </span>
                        <input type="text" name="" id="user_range" placeholder="">
                    </div>

                    <div>
                    <span>
                    数据统计
                    </span>
                        <input type="text" name="" id="dataInfo" placeholder="">
                    </div>

                    <div>
                    <span style="width: 84px">
                    专属客服经理
                    </span>
                        <input type="text" name="" id="pro_manager" placeholder="">
                    </div>

                    <div>
                    <span>
                    技术服务
                    </span>
                        <textarea style="margin-left: 11px;width: 507px;height: 77px;resize: none;" id="technical_service" placeholder=""></textarea>
                    </div>

                    <div>
                    <span>
                    服务保障
                    </span>
                        <input type="text" name="" id="serviceGuarante" placeholder="">
                    </div>

                    </div>
            </div>



                <div class="btn_box">
                    <button id="Submit">提交</button>
                    <button id="Preservation">自动保存</button>
                </div>

        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>


<script src="${ctx}/static/background/js/jquery-1.11.3.js" type="text/javascript"></script>
<script src="${ctx}/static/background/js/md5.js" type="text/javascript"></script>
<script type="text/javascript">
    //查数据
    var listObj;//产品
    var proInfo;//产品详细信息
   $("#productTitle").keyup(function(){
       $("#searchresult").empty();
        var proTitle=$("#productTitle").val();
            if(proTitle!=null && proTitle!=""){
                $.ajax({
                    url : '${ctx}/Product/SearchTitle',
                    type : 'POST',
                    data : "proTitle="+proTitle,
                    async:true,
                    cache:false,
                    dataType : 'json',
                    success : function(data){
                        if(data!=null){
                            if(data.length>0){
                                listObj=data;
                                showTitle(data);
                            }
                        }else{
                            $("#searchresult").empty();
                            return ;
                        }
                    }
                })
            }else {
                emptyData();
                $("#searchresult").empty();
            }
    });
    //显示模糊查询的标题
    function showTitle(data){
        var data=data;
        var layer = "<table id='showTable'>";
        for(var i=0;i<data.length;i++){
            layer+="<tr class =\"line\"><td><input type=\"hidden\"value="+i+" >"+data[i].proTitle+"</td></tr>";
            if(i==5){//最多显示五条
                break;
            }
        }
        layer+="</table>";
        $("#searchresult").empty();
        $("#searchresult").append(layer);
        $(".line").mouseover(function () {
            $(this).css("background-color","#fa0f1f");
        });
        $(".line").mouseout(function () {
            $(this).css("background-color","#ffffff");
        });
        $(".line").click(function () {
            var num=$(this).find("input").val();
            showProData(data,num);
        });
    }
    //显示数据标题相应的内容
    function showProData(data,i){
        $("#productType").text(data[i].proType);
        $("#productTitle").val(data[i].proTitle);
        proInfo=listObj[i].proInfoList;
        $("#searchresult").empty();
    }
    //清空标题信息
    function emptyData(){
        $("#productType").text("选择产品发布类型");
    }//显示需求
    //需求复选框获得光标
    $("#demand").click(function () {
        for(var i=0;i<listObj.length;i++){
            if($("#productTitle").val()==listObj[i].proTitle){
               showDemand(proInfo);
            }
        }
    });
    //显示全部需求
    function showDemand(proInfo){
        if(proInfo.length<1){
            return ;
        }
        var proInfoTotal="";
        var proInfoArr;
        var flat=0;
        for (var i=0;i<proInfo.length;i++){ //循环出每一个需求名
            flat=0;
            if(proInfoTotal.length<0){  //第一个就添加;
                proInfoTotal=proInfo[0].demand+";";
            }else {
                proInfoArr=proInfoTotal.split(";");
                for (var j=0;j<proInfoArr.length;j++){
                    if(proInfoArr[j]==proInfo[i].demand){
                        flat++;
                        break;
                    }
                }
                if(flat==0){
                    proInfoTotal=proInfoTotal+ proInfo[i].demand+";";
                }
            }
        }
        proInfoArr=proInfoTotal.split(";");
        var layer = "<table id='showInfoTable'>";
        for(var proInfoNum=0;proInfoNum<proInfoArr.length-1;proInfoNum++){//取小于五个不同的需求  以及选择需求
            layer+="<tr class =\"lineInfo\"><td><input type=\"hidden\" value="+proInfoNum+" >"+proInfoArr[proInfoNum]+"</td></tr>";
        }
        layer+="</table>";
        $("#searchInfo").empty();
        $("#searchInfo").append(layer);
        $(".lineInfo").mouseover(function () {
            $(this).css("background-color","#fa0f1f");
        });
        $(".lineInfo").mouseout(function () {
            $(this).css("background-color","#ffffff");
        });
        $(".lineInfo").click(function () {
            var num=$(this).find("input").val();
            $("#demand").val(proInfo[num].demand);
            $("#searchInfo").empty();
        });
    }
    $("#service").change(function () {
        var flat=false;
        var text=$(this).val();
        if(text=="请选择"||proInfo.length<1){
            return ;
        }

        for(var i=0;i<proInfo.length;i++){
            if(text==proInfo[i].service){
                flat=true;
            }
        }
        if(!flat){
             alert("没有相应的服务标准");
            $("#service").val("请选择");
        }
    });
    //点击更改
    $("#Submit").click(function () {
        var title=$("#productTitle").val();
        var flat=false;
        if(title !=null && title!=""&& listObj !=null && listObj!=""){//查询标题是否对应数据库
            for(var i=0;i<listObj.length;i++){
                if(title==listObj[i].proTitle){
                    flat=true;
                    break;
                }
            }
            if(flat){
              var demand = $("#demand").val();
              if(demand==null || demand==""){
                  alert("请选择需要更改需求定位");
                  return;
              }
             for(var j=0;j<proInfo.length;j++){
                 if(demand==proInfo[j].demand){//查询需求是否对应数据库
                     flat=false;
                     break;
                 }
             }
                if(proInfo.length<1){
                    alert("您的产品并没有需求定位，请前往添加");
                    return;
                }
             if(!flat){
                 var newDemand=$("#newDemand").val();
                 var servicePrice=$("#servicePrice").val();//服务金额
                 if($("#service").val()!="请选择"){
                     if(!(/^[0-9]{1,}(?:.[0-9]{0,2})?$/.test(servicePrice))) {
                         alert("请输入正确的金额");
                         return;
                     }
                 }
                $.ajax({
                     url : '${ctx}/Product/upProInfo',
                     type : 'POST',
                     data : "proTitle="+title+"&oldDemand="+demand+"&newDemand="+newDemand+"&proService="+$("#service").val()+
                    "&price="+$("#servicePrice").val()+"&hard_Configuration="+$("#hard_Configuration").val()+"&soft_Configuration="+$("#soft_Configuration").val()+
                    "&personnel="+$("#personnel").val()+"&time_Allocation="+$("#time_Allocation").val()+"&user_range="+$("#user_range").val()+
                     "&dataInfo="+$("#dataInfo").val()+"&pro_manager="+$("#pro_manager").val()+"&technical_service="+$("#technical_service").val()+"&serviceGuarante="+$("#serviceGuarante").val(),
                     async:true,
                     cache:false,
                     dataType : 'json',
                     success : function(data){
                         if(data!=null){
                             alert(data);
                         }
                     }
                 })}
                 if(data=="修改成功"){
                 window.location.href='${ctx}/admin/updateproduct';
                 }
            }
        }
    })
</script>
</body>
</html>