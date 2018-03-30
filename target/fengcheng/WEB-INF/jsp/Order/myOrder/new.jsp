<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>全部订单</title>
    <link rel="stylesheet" href="${ctx}/static/background/css/draftartic.css" type="text/css">
    <style>
        .hiddenText{
            width: 130px;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }
        #ddoli12 {
            position: absolute;
            left: 0;
        }
        .list23{
            background: #3eb7f3;
        }
        td{
            text-align: center;
        }thead tr{font-size: 12px}
        .draftartbox form{
            position: relative;
            left:-95px;
        }
        /*弹框*/
        .modal .draftartbox input ,.modal .draftartbox select,.modal .draftartbox textarea{
            margin-left: 15px;
        }

        .modal .draftartbox input,.modal .draftartbox textarea,.draftartbox select{
            border: 1px solid #ccc;
        }
        .modal .draftartbox textarea{
            max-width:341px;
            max-height:89px;
            width:341px;
            height:89px;
        }
        .modal .draftartbox input{
            width: 342px;
            height: 28px;
            color: #666;
            position: relative;
        }
        .modal .draftartbox select{
            width:115px;
            height: 25px;
        }
        .modal p{
            color: red;
            font-size: 10px;
            margin: 5px 0 0 33px;

            position: relative;
            left: 31px;
            top:1px;
        }
        .modal .draftartbox span{
            text-align:justify;
            text-align-last:justify;
        }
        #Selected>span,#Selected1>span,#Selected2>span,#Selected3>span{
            padding: 0 34px 0 10px;
            background: url(${ctx}/static/background/images/Arrow.jpg) no-repeat scroll right center transparent;
        }




        .modal .draftartbox span{
            line-height:0;
            width: 102px;
            text-align: right;
            display: block;
            margin-top: 15px;
        }
        .modal .draftartbox-left{
            width: 232px;
            height: 30px;
            display: block;
            float: left;
        }
        .modal select{
            margin-left: 0;
            border-radius: 0;
            -webkit-appearance: none;
            background: url(${ctx}/static/background/images/Arrow.jpg) no-repeat scroll right center transparent;
        }
        #Selected12{
            height: 43px;
            line-height: 43px;
            cursor: pointer;
            text-align: center;
            font-size: 14px;
            border-left:1px solid #2090cc;
        }
        #ddoli12{
            position: absolute;
            left: 0;
            top: 43px;
        }
        #ddoli12 ul {
            border: 1px solid #ccc;
            border-top: none;
        }
        #ddoli12 ul li{
            cursor: pointer;
            width: 115px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            background: #ffffff;
            color: #666;
            font-size: 14px;
            border-top: 1px solid #ccc;
            font-weight: 100;
        }
        #ddoli12 ul li:hover{
            background: #24a1ee;
            color: #ffffff;
        }
        #Selected,#Selected1,#Selected2,#Selected3{
            height: 43px;
            line-height: 43px;
            cursor: pointer;
            text-align: center;
            font-size: 14px;
        }
        #Selected span,#Selected1 span
        ,#Selected2 span,#Selected3 span
        {
            background: url(${ctx}/static/background/images/Arrow.jpg) no-repeat scroll right center transparent;
        }
        #ddoli,#ddoli1,
        #ddoli2,#ddoli3
        {
            position: relative;
            left: 28px;
            top: -21px;
        }
        #ddoli ul ,#ddoli1 ul,
        #ddoli2 ul ,#ddoli3 ul
        {
            border: 1px solid #ccc;
            border-top: none;
        }
        #ddoli ul li,#ddoli1 ul li,
        #ddoli2 ul li,#ddoli3 ul li
        {
            border-right: 1px solid #ccc;
            cursor: pointer;
            width: 115px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            background: #ffffff;
            color: #666;
            font-size: 14px;
            border-top: 1px solid #ccc;
            font-weight: 100;
        }
        #ddoli ul li:hover,#ddoli1 ul li:hover,
        #ddoli3 ul li:hover,#ddoli2 ul li:hover
        {
            background: #24a1ee;
            color: #ffffff;
        }
        .contener .admlistbox{
            height: auto;
            padding-bottom: 25px;
        }
        .modal .draftartbox div{
            margin-left: 90px;
            margin-top: 8px;
        }
        .select_model{
            position: relative;
        }
    </style>
</head>
<body ng-init="sysa=true;basea=true;contenta=true;producta=true;ordera=false;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=true;
newsa=true;aticalea=true;consulta=false;allordera=false;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <span>订单管理</span>
            <span>></span>
            <span>我的全部订单</span>
            <span>></span>
            <span>全部订单</span>
        </div>
        <div class="inner" style="height: auto;padding-bottom: 30px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;全部订单</div>
            <div class="draftart-top">
                <button class="keywords">关键词</button>
                <input style="width: 269px" type="text" placeholder="例如：APP，网站建设，网络营销，网络推广">
                <button class="key-search">搜索</button>
                <button class="search-title">标题搜索</button>
                <input style="width: 283px" type="text" placeholder="网站建设/程序及功能定制研发/APP研发与定制">
                <button class="title-search">搜索</button>
            </div>
            <div class="draftartbox">
                <table class="artable">
                    <thead>
                    <tr>
                        <th style="width: 62px;">序号</th>
                        <th style="width: 120px;border-left: 1px solid #24a1e4">编号</th>
                        <th style="width: 78px;border-left: 1px solid #24a1e4">用户名称</th>
                        <th style="width: 134px;border-left: 1px solid #24a1e4">需求信息</th>
                        <th style="width: 160px;border-left: 1px solid #24a1e4">订单标题</th>

                        <th style="width: 128px;border-left: 1px solid #24a1e4">
                            <div class="select_model">
                                <div class="ddo" id="Selected12"><span>创建订单时间</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                                <div style="display: none" id="ddoli12">
                                    <ul>
                                        <li style="border-top: none">创建订单时间</li>
                                        <li>订单付款时间</li>
                                    </ul>
                                </div>
                            </div>
                        </th>
                        <%--<th style="width: 105px;border-left: 1px solid #24a1e4">折扣/优惠券</th>--%>
                        <th style="width: 120px;border-left: 1px solid #24a1e4">订单实付金额</th>
                        <th style="width: 90px;border-left: 1px solid #24a1e4">订单状态</th>
                        <th style="width: 86px;border-left: 1px solid #24a1e4">备注</th>
                    </tr>
                    </thead>
                    <tbody id="allOrder">
                    <tr>
                        <td ><input type="checkbox" value="" style="position: relative;top: 2px" placeholder="">&nbsp;&nbsp;&nbsp;1 </td>
                        <td style="color: #1d87e9" >2</td>
                        <td >3</td>
                        <td style="color: red">5</td>
                        <td >6</td>
                        <td >7</td>
                        <td >8</td>
                        <td >9</td>
                        <td style="color: red">10</td>
                        <td style="color: #1d87e9">尽快安排发货</td></tr>
                    </tbody>
                </table>



                <div>
                    <input type="checkbox" style="margin-left: 20px;" id="clickId"onclick="clickAll()">
                    <span style="margin:0 10px;" >全选</span>
                    <span><a href="javascript:void(null)" onclick="deleteOrder()">删除</a></span>
                </div>

                <div class="darbtnbox">
                    <button class="thisfresh orderShow-mod-add"  id="addOrder" >添加</button>
                    <button class="allfresh orderShow-mod-alter" >修改</button>
                </div>
                <div class="darpages">
                    <input type="hidden" id="currentPage"/>
                    <span id="totalNum">共10页</span>&nbsp;
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
    $(document).ready(function() {
        $("#Selected12").click(function(){
            if("block" == $("#ddoli12").css("display")){
                $("#ddoli12").hide();
            }else{
                $("#ddoli12").show();
            }
        });

        $("#ddoli12>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected12>span").html($(this).html());
                $("#ddoli12").hide();
            });
        });

        $("#Selected12").blur(function(){
            $("#ddoli12").hide();
        });

    });

</script>
</body>
</html>

<!--添加订单-->

<div class="modal modal-content" id="order-modal" style="width:570px;height: 655px;padding-bottom: 20px;position: fixed;left: 30%;top: 5%;z-index:2;">
    <div >
        <button  id="orderHide-mod" style="background: transparent;color: #009F43;border: 0;position: relative;left: 534px;font-size:25px;">
            <img src="${ctx}/static/background/images/admbutton.png" alt="">
        </button>
    </div>
    <div class="modal-body" style="margin-left: 18px;padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;background: white;position: relative;z-index: 9">

        <div class="inner" style="height: auto">
            <div class="draftartbox">
                <form action="" method="post">
                    <div><span  class="draftartbox-left" >
                编号</span><input  type="text" id="addCode" readonly unselectable="on" placeholder="">
                        <p class="p">系统自行生成编号，不可自定义</p>
                    </div>
                    <div>
                <span  class="draftartbox-left" >
                订单标题</span>
                        <input type="text" id="addTitle" placeholder="">
                        <p class="p">可自定义，也可根据创建拍下的产品定义订单标题即可</p>
                    </div>
                    <div style="margin-top: 14px">
                        <span  class="draftartbox-left">创建订单时间</span>
                        <input  type="text" id="addDate" readonly unselectable="on" placeholder="">
                        <p class="p">自动默认当前创建订单系统时间</p>
                    </div>
                    <div>
                        <span class="draftartbox-left" >产品原价</span>
                        <input  id="addPrice" type="text" placeholder="" onblur="if (this.value == '') {this.value = '   2017年7月1日10：36   ';}" onfocus="if (this.value == '   2017年7月1日10：36   ') {this.value = '';}" value="   2017年7月1日10：36   ">
                        <p class="p">可自定义设置产品原价</p>
                    </div>
                    <div>
                        <span class="draftartbox-left">折扣优惠</span>
                        <input  type="text" id="addDisCount" placeholder="" onblur="if (this.value == '') {this.value = '   ￥299：68';}" onfocus="if (this.value == '   ￥299：68') {this.value = '';}" value="   ￥299：68">
                        <p class="p">可自定义设置产品折扣/优惠卷</p>
                    </div>
                    <div>
                        <span class="draftartbox-left" >订单实付款金额</span>
                        <input type="text" id="addTotal" placeholder="" style="margin-left: 16px" onblur="if (this.value == '') {this.value = '   ￥99：68';}" onfocus="if (this.value == '   ￥99：68') {this.value = '';}" value="   ￥99：68">
                        <p class="p">可自定义设置订单实付金额</p>
                    </div>
                    <div>
                        <div style="width: 0;height: 0;    position: relative;left: -89px;z-index: 4;">
                            <span class="draftartbox-left" >购买时长</span>
                            <div class="ddo Selected" id="Selected"><span style="width: 115px; height: 24px;border: 1px solid #ccc;line-height: 21px;margin-left: 28px;text-align: left">3个月</span></div>
                            <div style="display: none" class="ddoli" id="ddoli">
                                <ul>
                                    <li style="border-top: none">6个月</li>
                                    <li>1年</li>
                                    <li>2年</li>
                                    <li>3年</li>
                                    <li>5年</li>
                                </ul>
                            </div>
                        </div>
                        <%--<select style="font-weight: 400;color: #666">--%>
                        <%--<option>3个月</option>--%>
                        <%--<option>6个月</option>--%>
                        <%--<option>1年</option>--%>
                        <%--<option>2年</option>--%>
                        <%--</select>--%>
                    </div>
                    <div>
                        <div style="width: 0;height: 0;    position: relative;left: -89px;">
                            <span class="draftartbox-left" >版本信息</span>
                            <div class="ddo Selected" id="Selected3"><span style=" margin-top: 47px;width: 115px; height: 24px;border: 1px solid #ccc;line-height: 21px;margin-left: 28px;text-align: left">体验版</span></div>
                            <div style="display: none" class="ddoli" id="ddoli3">
                                <ul>
                                    <li style="border-top: none">基础版</li>
                                    <li>加强版</li>
                                    <li>商业版</li>
                                    <li>定制版</li>
                                </ul>
                            </div>
                        </div>
                        <%--<select style="font-weight: 400;color: #666">--%>
                        <%--<option>3个月</option>--%>
                        <%--<option>6个月</option>--%>
                        <%--<option>1年</option>--%>
                        <%--<option>2年</option>--%>
                        <%--</select>--%>
                    </div>
                    <div style="clear: both;">
                        <span class="draftartbox-left" >订单状态</span>
                        <label>
                            <select style="font-weight: 400;color: #666">
                                <option>已付款</option>
                            </select>
                        </label>
                        <p style="position: relative;left:150px;top: -24px">不可修改</p>
                    </div>
                    <div>
                        <span class="draftartbox-left" >备注</span>
                        <textarea placeholder="" id="addNote"></textarea>
                        <p style="position: relative;left:430px;top:-40px;height: 0">拍下的用户可留言<br>对该订单的备注及<br>其它要求或注释</p>
                    </div>
                    <input type="button" name=""  onclick="addSubmit()" value="提交" style="margin:0 0 0 210px;width:100px;height: 25px;border: 0;color:#fff;background: #2196d4;" />
                    <button  style="margin:0 0 0 60px;width:100px;height: 25px;border: 0;color:#fff;background: #2196d4;">取消</button>
                </form>
            </div>

        </div>

    </div>
    <%--<div style="width: 100%;height: 100%;background: rgba(0,0,0,0.5);position: fixed;z-index: -4;left: 0;top: 0"></div>--%>
</div>


<!--修改订单-->
<div class="modal modal-content" id="order-modal-alter" style="width:593px;height: 655px;padding-bottom: 20px;position: fixed;left: 30%;top: 5%;z-index:2;">
    <div >
        <button  id="orderHide-alter" style="background: transparent;color: #009F43;border: 0;position: relative;left: 558px;font-size:25px;">
            <img src="${ctx}/static/background/images/admbutton.png" alt="">
        </button>
    </div>
    <div class="modal-body" style="margin-left: 18px;padding:0;font-family: '微软雅黑',sans-serif;font-size: 14px;background: white;position: relative;z-index: 9">

        <div class="inner" style="height: auto">
            <div class="draftartbox">
                <form action="" method="post">
                    <div><span  class="draftartbox-left" >
                编号</span><input  id="updateCode" type="text"  readonly unselectable="on" value="" placeholder="">
                        <p class="p">系统自行生成编号，不可自定义</p>
                    </div>
                    <div>
                <span  class="draftartbox-left" >
                订单标题</span>
                        <input type="text" id="updateTitle" placeholder="">
                        <p class="p">可自定义，也可根据创建拍下的产品定义订单标题即可</p>
                    </div>
                    <div style="margin-top: 14px">
                        <span  class="draftartbox-left">创建订单时间</span>
                        <input  type="text" id="updateDate"  readonly unselectable="on" value="" placeholder="">
                        <p class="p">自动默认当前创建订单系统时间</p>
                    </div>
                    <div>
                        <span class="draftartbox-left" >产品原价</span>
                        <input   type="text" placeholder="" id="updatePrice">
                        <p class="p">可自定义设置产品原价</p>
                    </div>
                    <div>
                        <span class="draftartbox-left">折扣优惠</span>
                        <input  type="text"  placeholder="" id="updateDisCount">
                        <p class="p">可自定义设置产品折扣/优惠卷</p>
                    </div>
                    <div>
                        <span class="draftartbox-left" >订单实付款金额</span>
                        <input type="text" id="updateTotal" placeholder="" style="margin-left: 16px" >
                        <p class="p">可自定义设置订单实付金额</p>
                    </div>
                    <div>
                        <div style="width: 0;height: 0;    position: relative;left: -89px;">
                            <span class="draftartbox-left" >购买时长</span>
                            <div class="ddo Selected" id="Selected2"><span style="width: 115px; height: 24px;border: 1px solid #ccc;line-height: 21px;margin-left: 28px;">3个月</span></div>
                            <div style="display: none" class="ddoli" id="ddoli2">
                                <ul>
                                    <li style="border-top: none">6个月</li>
                                    <li>1年</li>
                                    <li>2年</li>
                                    <li>3年</li>
                                    <li>5年</li>
                                </ul>
                            </div>
                        </div>

                    </div>
                    <div>
                        <div style="width: 0;height: 0;    position: relative;left: -89px;z-index: 4;">
                            <span class="draftartbox-left" >版本信息</span>
                            <div class="ddo Selected" id="Selected1"><span style="margin-top: 47px;width: 115px; height: 24px;border: 1px solid #ccc;line-height: 21px;margin-left: 28px;">体验版</span></div>
                            <div style="display: none" class="ddoli" id="ddoli1">
                                <ul>
                                    <li style="border-top: none">基础版</li>
                                    <li>加强版</li>
                                    <li>商业版</li>
                                    <li>定制版</li>
                                </ul>
                            </div>
                        </div>
                        <%--<select style="font-weight: 400;color: #666">--%>
                        <%--<option>3个月</option>--%>
                        <%--<option>6个月</option>--%>
                        <%--<option>1年</option>--%>
                        <%--<option>2年</option>--%>
                        <%--</select>--%>
                    </div>
                    <div style="clear: both;">
                        <span class="draftartbox-left" >订单状态</span>
                        <label>
                            <select style="font-weight: 400;color: #666">
                                <option>已付款</option>
                            </select>
                        </label>
                        <p style="position: relative;left:150px;top: -24px">不可修改</p>
                    </div>
                    <div>
                        <span class="draftartbox-left" >备注</span>
                        <textarea placeholder="" id="updateNote"></textarea>
                        <p style="position: relative;left:430px;top:-40px;height: 0">拍下的用户可留言对该<br>订单的备注及其它要求<br>或注释说明</p>
                    </div>
                    <input type="button" name=""  onclick="updateSubmit()" value="提交" style="margin:0 0 0 210px;width:100px;height: 25px;border: 0;color:#fff;background: #2196d4;" />
                    <button  style="margin:0 0 0 60px;width:100px;height: 25px;border: 0;color:#fff;background: #2196d4;">取消</button>
                </form>
            </div>

        </div>

    </div>
</div>

<script test="text/javascript">
    var totalNum;
    var orderList;

    $(document).ready(function(){
        $("#currentPage").val(1);
        $.ajax({
            url : '${ctx}/order/showAll',
            type : 'POST',
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if (data != null && data != ""){
                    orderList=data.orderList;//全部订单
                    totalNum=data.totalNum;
                    $("#totalNum").text("共"+totalNum+"页");
                    showObj(orderList,$("#currentPage").val())
                }
            }
        })
    })
    function showObj(order,currentPage){
        $("#allOrder").empty();
        $("#showOrder").append("<tr style=\"width: 980px;height: 5px\"></tr>");//添加空白区
        var i=(currentPage-1)*20;
        var row;
        if(totalNum==currentPage){
          for(i;i<order.length;i++){
              var row1="";//需求
              for(var j=0;j<order[i].list.length;j++){ //需求
                  row1=row1+order[i].list[j].demand+"/";
              }
              row=" <tr>" +
                  " <td ><input type=\"checkbox\" value=\""+order[i].id+"\" style=\"position: relative;top: 2px\" placeholder=\"\">"+(i+1)+"</td>" +
                  " <td style=\"color: #1d87e9\" >"+order[i].code+"</td>" +
                  " <td >"+order[i].userName+"</td>" +
                  " <td style=\"color: red\"><div class=\"hiddenText\">"+row1+"</div></td>" +
                  " <td >"+order[i].proTitle+"</td>" +
                  " <td >"+order[i].time+"</td>" +
                  " <td >"+order[i].price+"</td>" +
                  " <td style=\"color: red\">"+order[i].state+"</td>" +
                  " <td style=\"color: #1d87e9\">尽快安排发货</td></tr>"
              $("#allOrder").append(row);
          }
        }else if(totalNum!=currentPage&&totalNum>currentPage){
            var end=i+20;
            for(i;i<end;i++){
                var row1="";//需求
                for(var j=0;j<order[i].list.length;j++){ //需求
                    row1=row1+order[i].list[j].demand+"/";
                }
                row=" <tr>" +
                    " <td ><input type=\"checkbox\" value=\""+order[i].id+"\" style=\"position: relative;top: 2px\" placeholder=\"\">"+(i+1)+"</td>" +
                    " <td style=\"color: #1d87e9\" >"+order[i].code+"</td>" +
                    " <td >"+order[i].userName+"</td>" +
                    " <td style=\"color: red\" ><div calss=\"hiddenText\">"+row1+"</div></td>" +
                    " <td >"+order[i].proTitle+"</td>" +
                    " <td >"+order[i].time+"</td>" +
                    " <td >"+order[i].price+"</td>" +
                    " <td style=\"color: red\">"+order[i].state+"</td>" +
                    " <td style=\"color: #1d87e9\">尽快安排发货</td></tr>"
                $("#allOrder").append(row);
            }
        }
        $(".darpages").find(".page").empty();//删除之前的
        $("#nextPage").before("<span class=\"page\">" + currentPage + "</sqan>");//显示页码
        $(".page").css("color","red");
    }
    //上一页
    $("#oldPage").click(function () {
        var currentPage= $("#currentPage").val();  //取当前页码
        var nextPage=currentPage-1;               //上一页的数
        if(currentPage>1){
            $("#currentPage").val(nextPage);
            showObj(orderList,totalNum,$("#currentPage").val());
        }else if(currentPage==1){
            alert("这里是首页哦！！！！");
        }
    });
    //下一页
    $("#nextPage").click(function () {
        var currentPage= $("#currentPage").val();
        var nextPage=parseInt(currentPage)+parseInt(1);
        if(currentPage<totalNum){
            $("#currentPage").val(nextPage);
            showObj(orderList,totalNum,$("#currentPage").val());
        }else if(currentPage==totalNum){
            alert("已经是最后一页了。");
        }
    });
    function clickAll() {
        var clickFlat= $("#clickId").is(':checked');
        if(clickFlat){
            $("#allOrder").find("input[type='checkbox']").prop("checked",true);
        }else{
            $("#allOrder").find("input[type='checkbox']").prop("checked",false);
        }
    }
    function deleteOrder(){
        var checkboxAll=$("#allOrder").find("input[type='checkbox']:checked");
        if(checkboxAll == null || checkboxAll.length<1){
            alert("请选择一行");
            return ;
        }
        if(confirm("是否要删除勾选部分")){
            var list=[];
            var proId;
            for(var i=0;i<checkboxAll.length;i++){
                proId= checkboxAll[i].value;
                list.push(proId);
            }
            $.ajax({
                url : '${ctx}/order/deleteAll',
                type : 'POST',
                data : "orderList="+list,
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if (data != null && data != ""){
                        alert(data[0]);
                        var url=window.location.href;
                        window.location.href=url;
                    }
                }
            });
        }
    }

</script>






<%--产品名称  用户名称  需求信息--%>