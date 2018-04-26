<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>付费清单</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/order.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/modal.css" type="text/css">
    <style>
        .mcontainer{
            width: 1210px;
            margin: 0 auto;
            height: auto;
            min-height: 1536px;
        }
        .charge{
            background: #F53292;
        }
        .charge .slma{
            color: white;
        }
        a:hover{
            list-style: none;
        }
        td{
            border-left: 1px solid #333;
            border-right: 1px solid #333;
        }
        table{
            border-bottom: 1px solid #333;
        }
        .oinfotable{
                     border-spacing: 0;
                     border-collapse: collapse;
                 }tr th{
                                       background: #99d5f0;
                                   }
    </style>
</head>
<body>
<div style="background-color: #ededed">
    <jsp:include page="${ctx}/static/front/comm/top.jsp"/>
    <div class="mcontainer">
        <jsp:include page="${ctx}/static/front/comm/left.jsp"/>
        <div class="free-main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;<a herf="${ctx}/vips">会员中心</a>&nbsp;>&nbsp;我的订单&nbsp;>&nbsp;付费清单</span>
            </div>
            <div class="freebox">
                <div style="height: 15px"></div>
                <div class="Ctabox">
                    <table class="oinfotable">
                        <thead>
                        <tr>
                            <th>订单编辑号</th>
                            <th class="th2">订单详情</th>
                            <th>服务标准</th>
                            <th>购买时长</th>
                            <th>数量</th>
                            <th>折扣/优惠金额</th>
                            <th>订单金额</th>
                            <th>订单时间</th>
                            <th>付款状态</th>
                            <th>订单状态</th>
                        </tr>

                        </thead>
                        <tbody id="order">


                        <tr>
                            <td rowspan="5">fc00002</td>
                            <td >
                                网站建设/程序及功能/微信小程序/APP研发与定制
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>

                        </tr>
                        <tr>
                            <td style="border-top:1px dashed #656565; ">网站建设</td>
                            <td style="border-top:1px dashed #656565; ">基础版</td>
                            <td style="border-top:1px dashed #656565; ">1年</td>
                            <td style="border-top:1px dashed #656565; ">1</td>
                            <td style="color: red;border-top:1px dashed #656565; ">￥50.00</td>
                            <td style="color: red;border-top:1px dashed #656565; ">￥1615.00</td>
                            <td style="border-top:1px dashed #656565; ">2017年5月22日14：36：23</td>
                        </tr>
                        <tr>
                            <td style="border-top:1px dashed #656565;">程序及功能/微信小程序</td>
                            <td style="border-top:1px dashed #656565;">加强版</td>
                            <td style="border-top:1px dashed #656565;">1年</td>
                            <td style="border-top:1px dashed #656565;">1</td>
                            <td style="color: red;border-top:1px dashed #656565;">￥150.00</td>
                            <td style="color: red;border-top:1px dashed #656565;">￥3615.00</td>
                            <td style="border-top:1px dashed #656565;">2017年5月22日14：36：23</td>
                        </tr>
                        <tr>
                            <td style="border-top:1px dashed #656565;">APP研发与定制</td>
                            <td style="border-top:1px dashed #656565;">商业版</td>
                            <td style="border-top:1px dashed #656565;">1年</td>
                            <td style="border-top:1px dashed #656565;">1</td>
                            <td style="color: red;border-top:1px dashed #656565;">￥250.00</td>
                            <td style="color: red;border-top:1px dashed #656565;">￥9615.00</td>
                            <td style="border-top:1px dashed #656565;">2017年5月22日14：36：23</td>
                        </tr>
                        <tr style="border-bottom:1px dashed #656565;">
                            <td style="border-top:1px dashed #656565;">
                                <div>
                                    <div style="float: left;margin-top: 12px;">
                                        <img src="${ctx}/static/front/images/s.png" alt="" style="width: 35px">
                                    </div>
                                    <div style="float: right;width: 310px;height: auto;text-align: left;padding-bottom: 5px">
                                        <p>1、注册APP版权，并根据系统升级要求，一年内升级2个版本。</p>
                                        <p>2、上传目前各大应用APP市场及商店，并保持每一个上传应用市场及应用商店有10000个下载量。</p>
                                        <p>3、技术服务及指导APP使用为期二年。</p>
                                    </div>
                                </div>
                            </td>
                            <td style="border-top:1px dashed #656565;"></td>
                            <td style="border-top:1px dashed #656565;"></td>
                            <td style="border-top:1px dashed #656565;"></td>
                            <td style="border-top:1px dashed #656565;"></td>
                            <td style="border-top:1px dashed #656565;"></td>
                            <td style="border-top:1px dashed #656565;"></td>
                        </tr>




                        </tbody>
                    </table>
                    <!--评价模态框-->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content" style="width: 717px;height: 421px">
                                <div class="modal-body">
                                    <div class="comment_publish">
                                        <div class="comment_publish_star">
                                            <ul>
                                                <li class="row-star" id="demand">
                                                    <span class="row-label">需求定位</span>
									                <span class="star-box">
										                <a href="" class="w-star w-star1 on" data-star="1">
                                                            <i></i>
                                                        </a>
										                <a href="" class="w-star w-star2 on" data-star="2">
                                                            <i></i>
                                                        </a>
                                                        <a href="" class="w-star w-star3 on" data-star="3">
                                                            <i></i>
                                                        </a>
										                <a href="" class="w-star w-star4 on" data-star="4">
                                                            <i></i>
                                                        </a>
										                <a href="" class="w-star w-star5 on" data-star="5">
                                                            <i></i>
                                                        </a>
										                <a href="" class="w-star w-star6 on" data-star="6">
                                                            <i></i>
                                                        </a>
										                <a href="" class="w-star w-star7 on" data-star="7">
                                                            <i></i>
                                                        </a>
										                <a href="" class="w-star w-star8 on" data-star="8">
                                                            <i></i>
                                                        </a>
									                </span>
                                                </li>
                                                <li class="row-star" id="understand">
                                                    <span class="row-label">五了解</span>
									                <span class="star-box">
										                <a href="" class="w-star w-star1 on" data-star="1">
                                                            <i></i>
                                                        </a>
										                <a href="" class="w-star w-star2 on" data-star="2">
                                                            <i></i>
                                                        </a>
                                                        <a href="" class="w-star w-star3 on" data-star="3">
                                                            <i></i>
                                                        </a>
										                <a href="" class="w-star w-star4 on" data-star="4">
                                                            <i></i>
                                                        </a>
										                <a href="" class="w-star w-star5 on" data-star="5">
                                                            <i></i>
                                                        </a>
										<a href="" class="w-star w-star6 on" data-star="6">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star7 on" data-star="7">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star8 on" data-star="8">
                                            <i></i>
                                        </a>
									</span>

                                                </li>
                                                <li class="row-star" id="scheme">
                                                    <span class="row-label">四方案</span>
									<span class="star-box">
										<a href="" class="w-star w-star1 on" data-star="1">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star2 on" data-star="2">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star3 on" data-star="3">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star4 on" data-star="4">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star5 on" data-star="5">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star6 on" data-star="6">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star7 on" data-star="7">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star8 on" data-star="8">
                                            <i></i>
                                        </a>
									</span>

                                                </li>
                                                <li class="row-star" id="book">
                                                    <span class="row-label">三书</span>
									<span class="star-box">
										<a href="" class="w-star w-star1 on" data-star="1">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star2 on" data-star="2">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star3 on" data-star="3">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star4 on" data-star="4">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star5 on" data-star="5">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star6 on" data-star="6">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star7 on" data-star="7">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star8 on" data-star="8">
                                            <i></i>
                                        </a>
									</span>

                                                </li>
                                                <li class="row-star" id="build">
                                                    <span class="row-label">八建</span>
									<span class="star-box">
										<a href="" class="w-star w-star1 on" data-star="1">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star2 on" data-star="2">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star3 on" data-star="3">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star4 on" data-star="4">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star5 on" data-star="5">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star6 on" data-star="6">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star7 on" data-star="7">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star8 on" data-star="8">
                                            <i></i>
                                        </a>
									</span>

                                                </li>
                                                <li class="row-star" id="doing">
                                                    <span class="row-label">六做</span>
									<span class="star-box">
										<a href="" class="w-star w-star1 on" data-star="1">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star2 on" data-star="2">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star3 on" data-star="3">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star4 on" data-star="4">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star5 on" data-star="5">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star6 on" data-star="6">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star7 on" data-star="7">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star8 on" data-star="8">
                                            <i></i>
                                        </a>
									</span>

                                                </li>
                                                <li class="row-star" id="time">
                                                    <span class="row-label">两定</span>
									<span class="star-box">
										<a href="" class="w-star w-star1 on" data-star="1">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star2 on" data-star="2">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star3 on" data-star="3">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star4 on" data-star="4">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star5 on" data-star="5">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star6 on" data-star="6">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star7 on" data-star="7">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star8 on" data-star="8">
                                            <i></i>
                                        </a>
									</span>

                                                </li>
                                                <li class="row-star" id="data">
                                                    <span class="row-label">十二数据</span>
									<span class="star-box">
										<a href="" class="w-star w-star1 on" data-star="1">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star2 on" data-star="2">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star3 on" data-star="3">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star4 on" data-star="4">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star5 on" data-star="5">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star6 on" data-star="6">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star7 on" data-star="7">
                                            <i></i>
                                        </a>
										<a href="" class="w-star w-star8 on" data-star="8">
                                            <i></i>
                                        </a>
									</span>
                                                </li>
                                            </ul>
                                            <div>
                                                <textarea name="" rows="" cols="" placeholder="我有话要说..."></textarea>
                                            </div>
                                            <div class="btn_box">
                                                <div id="submit">提交评论</div>
                                                <div id="cancel" data-dismiss="modal">取消评论</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal -->
                    </div>
                </div>
                <div class="all">当页共计0条信息</div>
                <div class="pages">
                    <span id="totalNum"></span>
                    <span id="oldPage">上一页</span>
                    <span id="currentPage"></span>
                    <span id="nextPage">下一页</span>
                    <span><a href="${ctx}/vip">返回</a></span>
                </div>
                <div style="height: 30px"></div>
            </div>
        </div>
    </div>
    <jsp:include page="/static/front/comm/footer.jsp"/>
</div>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript">
window.onload = function(){
    var ev = document.getElementsByClassName("eva");
    for(var i = 0;i < ev.length;i++){
        if(ev[i].innerHTML == "未评价"){
            ev[i].innerHTML = "<span style='cursor:pointer;border-bottom:1px solid #666666' data-toggle='modal' data-target='#myModal'>未评价</span>"
        }
    }
};

function evaluate(){
    var ev = document.getElementsByClassName("eva");
    for(var i = 0;i < ev.length;i++){
        if(ev[i].innerHTML == "未评价"){
            ev[i].innerHTML = "<span style='cursor:pointer;border-bottom:1px solid #666666' data-toggle='modal' data-target='#myModal'>未评价</span>"
        }
    }
}
</script>
<script type="text/javascript">
    var  orderList;
    var total;
    function starChange(obj){
        var scStar=8;
        for (var i=1; i<=8; i++) {
            //为每个星星 绑定鼠标移入 移出 事件
            $(obj+" .w-star"+ i).hover(
                //鼠标移入
                function(){
                    $(this).siblings(".w-star").removeClass("on");
                    var index = $(this).data("star");
                    for (var i= index; i>0; i--) {
                        $(this).parent().find(".w-star"+ i).addClass("on");
                    }
                },
                //鼠标移出
                function(){
                    var index = $(this).data("star");
                    for (var i= index; i>0; i--) {
                        $(this).parent().find(".w-star"+ i).removeClass("on");
                    }
                    for (var i= scStar; i>0; i--) {
                        $(this).parent().find(".w-star"+ i).addClass("on");
                    }

                }
            );
            $(obj+" .w-star"+ i).on("click", function(){
                var aaa=$(this);
                console.log(aaa);
                scStar = $(this).data("star");

                for (var i= scStar; i>0; i--) {
                    $(this).parent().find(".w-star"+ i).addClass("on");
                }
            });
        }
    }
    starChange("#demand");
    starChange("#understand");
    starChange("#scheme");
    starChange("#book");
    starChange("#build");
    starChange("#doing");
    starChange("#time");
    starChange("#data");


    $('.comment_tab span').click(function(){
        var list =$(this).html();
        $(this).addClass("active");
        $(this).siblings().removeClass('active');
        if(list=='产品档案'){
            $('.record_list').css('display','block');
            $('.record_list').siblings().css('display','none');
        }else if(list=="累计评论"){
            $('.comment_all').css('display','block');
            $('.comment_all').siblings().css('display','none');
        }else if(list=="服务保障"){
            $('.safeguard_list').css('display','block');
            $('.safeguard_list').siblings().css('display','none');
        }else if(list=="你问我答"){
            $('.comment_publish').css('display','block');
            $('.comment_publish').siblings().css('display','none');
        };
    });

    $('.scheme span').click(function(){
        $(this).addClass('active');
        $(this).siblings().removeClass('active');
    });
    //页码加载完执行
    $(document).ready(function () {

         var  userName='${sessionScope.fcUser.userName}';
         if(userName==null ||userName==""){
             alert("请登录");
       window.location.href="${ctx}/login";
             return;
         }
        $("#currentPage").val(1);         //设置当前页码
        if(userName!=null&&userName!=""){
            $.ajax({                                  // 取用户名下的订单
                url : '${ctx}/Product/showOrder',
                data:"userName="+userName,
                type : 'POST',
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if(data!=null && data!=""){
                        var currentPage= $("#currentPage").val();  //取当前页码
                        var totalNum=data.totalNum;                  //总页数
                        orderList=data.order;
                        if(totalNum==0){
                            totalNum=1;
                        }
                        total=totalNum;
                        $("#totalNum").text("共"+totalNum+"页");   //显示总页数
                        $("#totalNum").val(totalNum);                //设置总页值
                        $("#currentPage").text(1);                   //显示当前页码
                         showOrder(currentPage,data.order,totalNum);      //当前页 总产品 总页数
                         //showpage(currentPage,totalNum);
                    }
                }
            })
        }
    })//显示订单
    function showOrder(currentPage,list,totalNum) {
        var i=(currentPage-1)*20;        //每页显示20条数据
        if(currentPage!=totalNum) {       //当前页不等于总页数
            var strip=i+20;
            $("#order").empty();
            $(".all").text("当页共计"+strip+"条信息");
            for (i;i < list.length ; i++) {//显示订单数
                var orderEntity=list[i];
                var rowLength=1;               //合并的列
               rowLength+orderEntity.list.length;
               for(var j=0;j<strip;j++){      //循环合并列的长度
                   if(orderEntity.list[j].givenFree!=null &&orderEntity.list[j].givenFree!=""){
                       rowLength++;
                   }
               }
                var row="<tr> <td rowspan="+rowLength+">"+orderEntity.code+"</td>"+//编号和产品
                    "<td >"+orderEntity.proTitle+"</td>" +
                    " <td></td>" +
                    "<td></td>"+
                    "<td></td>" +
                    "<td></td> " +
                    "<td></td> " +
                    "<td></td>" +
                    "<td></td>" +
                    "<td></td></tr>";
                var row1=""
               for(var j=0;j<orderEntity.list.length;j++){
                   row2=" <tr><td style=\"border-top:1px dashed #656565; \">"+orderEntity.list[j].demand+"</td>" +
                       "  <td style=\"border-top:1px dashed #656565; \">"+orderEntity.list[j].service+"</td>" +
                       " <td style=\"border-top:1px dashed #656565; \">"+orderEntity.list[j].timeValue+"</td>" +
                       "<td style=\"border-top:1px dashed #656565; \">"+orderEntity.list[i].num+"</td>" +
                       "<td style=\"color: red;border-top:1px dashed #656565; \">￥"+orderEntity.list[i].preferential+"</td>" +
                       " <td style=\"color: red;border-top:1px dashed #656565; \">￥"+orderEntity.list[i].price+"</td>" +
                       "<td style=\"border-top:1px dashed #656565; \">"+orderEntity.time+"</td>" +
                       "<td style=\"border-top:1px dashed #656565; \">"+orderEntity.state+"</td>" +
                       "<td style=\"border-top:1px dashed #656565; \">"+orderEntity.transaction+"</td>" +
                       "</tr>";
                   if(orderEntity.list[j].givenFree!="" && orderEntity.list[j].givenFree!=null){
                    var map= " ${ctx}/static/front/images/s.png";
           row2=row2+"</tr><tr style=\"border-bottom:1px dashed #656565;\">" +
                      "<td style=\"border-top:1px dashed #656565;\"><div>" +
                      " <div style=\"float: left;margin-top: 12px;\">" +
                 " <img src="+map+" alt=\"\" style=\"width: 35px\"></div>" +
             " <div style=\"float: right;width: 310px;height: auto;text-align: left;\"><p>"+orderEntity.list[j].givenFree+"</p>" +
          "</div></div></td><td style=\"border-top:1px dashed #656565;\"></td>" +
          "<td style=\"border-top:1px dashed #656565;\"></td>" +
          "<td style=\"border-top:1px dashed #656565;\"></td>" +
          "<td style=\"border-top:1px dashed #656565;\"></td>" +
          "<td style=\"border-top:1px dashed #656565;\"></td>" +
          "<td style=\"border-top:1px dashed #656565;\"></td>" +
               "<td style=\"border-top:1px dashed #656565;\"></td>" +
               "<td style=\"border-top:1px dashed #656565;\"></td>" +
               "</tr>";
                    }
                  row1=row1+row2;
                 }
                 row=row+row1;
                $(".order").append(row);
          }
        }
        if(currentPage==totalNum){   //当前页等于总页数
            $("#order").empty();
            $(".all").text("当页共计"+list.length+"条信息");
            for(i;i<list.length;i++){
                var orderEntity=list[i];
                var rowLength=1;               //合并的列
               rowLength = rowLength+orderEntity.list.length;
                for(var j=0;j<orderEntity.list.length;j++){      //循环合并列的长度
                    if(orderEntity.list[j].givenFree!=null &&orderEntity.list[j].givenFree!=""){
                        rowLength++;
                    }
                };
                var row="<tr> <td rowspan="+rowLength+">"+orderEntity.code+"</td>"+//编号和产品
                    "<td >"+orderEntity.proTitle+"</td> <td></td><td></td>"+
                    "<td></td><td></td> <td></td> <td></td><td></td><td></td></tr>";
                var row1="";
                for(var j=0;j<orderEntity.list.length;j++){
                    var row2=" <tr><td style=\"border-top:1px dashed #656565; \">"+orderEntity.list[j].demand+"</td>" +
                        "  <td style=\"border-top:1px dashed #656565; \">"+orderEntity.list[j].service+"</td>" +
                        " <td style=\"border-top:1px dashed #656565; \">"+orderEntity.list[j].timeValue+"</td>" +
                        "<td style=\"border-top:1px dashed #656565; \">"+orderEntity.list[j].num+"</td>" +
                        "<td style=\"color: red;border-top:1px dashed #656565; \">￥"+orderEntity.list[j].preferential+"</td>" +
                        " <td style=\"color: red;border-top:1px dashed #656565; \">￥"+orderEntity.list[j].price+"</td>" +
                        "<td style=\"border-top:1px dashed #656565; \">"+orderEntity.time+"</td>" +
                        "<td style=\"border-top:1px dashed #656565; \">"+orderEntity.state+"</td>" +
                        "<td style=\"border-top:1px dashed #656565; \">"+orderEntity.transaction+"</td>" +
                        "</tr>";
                    if(orderEntity.list[j].givenFree!="" && orderEntity.list[j].givenFree!=null){
                        var map= " ${ctx}/static/front/images/s.png";
                        row2=row2+"</tr><tr style=\"border-bottom:1px dashed #656565;padding: 0 0 5px 5px\">" +
                            "<td style=\"border-top:1px dashed #656565;\"><div>" +
                            " <div style=\"float: left;margin-top: 12px;\">" +
                            " <img src="+map+" alt=\"\" style=\"width: 35px\"></div>" +
                            " <div style=\"float: right;width: 310px;height: auto;text-align: left;\"><p>"+orderEntity.list[j].givenFree+"</p>" +
                            "</div></div></td><td style=\"border-top:1px dashed #656565;\"></td>" +
                            "<td style=\"border-top:1px dashed #656565;\"></td>" +
                            "<td style=\"border-top:1px dashed #656565;\"></td>" +
                            "<td style=\"border-top:1px dashed #656565;\"></td>" +
                            "<td style=\"border-top:1px dashed #656565;\"></td>" +
                            "<td style=\"border-top:1px dashed #656565;\"></td>" +
                            "<td style=\"border-top:1px dashed #656565;\"></td>" +
                            "<td style=\"border-top:1px dashed #656565;\"></td>" +
                            "</tr>";
                    }
                    row1=row1+row2;
                }
                row=row+row1;
                $("#order").append(row);
            }
        }
        evaluate();
    }

    $("#oldPage").click(function () {
        var currentPage= $("#currentPage").val();  //取当前页码
        var totalNum=$("#totalNum").val();       //取总页码
        var nextPage=currentPage-1;               //上一页的数
        if(currentPage>1){
            // showOrder(nextPage,orderList,totalNum);
            $("#currentPage").text(nextPage)
            $("#currentPage").val(nextPage);

        }else if(currentPage==1){
            alert("这里是首页哦！！！！");
        }
    })
    $("#nextPage").click(function () {
        var currentPage= $("#currentPage").val();
        var totalNum=$("#totalNum").val();
        var nextPage=parseInt(currentPage)+parseInt(1);
        if(currentPage<totalNum){
            showOrder(nextPage,listPro,totalNum);
            $("#currentPage").text(nextPage)
            $("#currentPage").val(nextPage);

        }else if(currentPage==totalNum){
            alert("已经是最后一页了。");
        }
    })
    $("#payState").change(function(){ //付款状态
        var pState=$("#payState").val();
        stateOrder(pState,"");
    })
    $("#tarState").change(function () {//交易状态
        var tState=$("#tarState").val();
        stateOrder("",tState);
    })//条件显示
    function stateOrder(payState,tarState){
       var  userName='${sessionScope.fcUser.userName}';
        var pState=payState;
        var tState=tarState;
        if(payState==null || payState==""){
            pState =$("#payState").val();
        }
        if(tarState==null || tarState==""){
            tState=$("#tarState").val();
        }
        $.ajax({//状态选择
            url : '${ctx}/Product/stateOrder',
            data:"userName="+userName+"&state="+pState+"&transaction="+tState,
            type : 'POST',
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null && data!=""){
                    var currentPage= $("#currentPage").val();  //取当前页码
                    var list=data.orderList;
                    var totalNum=data.totalNum;
                    listPro=list;
                    if(totalNum==0){
                        totalNum=1;
                    }
                    total=totalNum;
                    $("#totalNum").text("共"+totalNum+"页");   //显示总页数
                    $("#totalNum").val(totalNum);                //设置总页值
                    $("#currentPage").text(1);                   //显示当前页码
                    // showOrder(currentPage,list,totalNum);      //当前页 总产品 总页数*/
                }
            }
        })
    }
</script>
</body>
</html>