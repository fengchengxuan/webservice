<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>票据管理</title>
    <link rel="stylesheet" href="${ctx}/static/front/css/style.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/realname.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/tabfile.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/front/css/billtable.css" type="text/css">
    <style>
        .mcontainer{
            width: 1210px;
            margin: 0 auto;
            height: 1536px;
        }
        .bill .slma{
            color: white;
        }
        .bill{
            background: #F53292;
        }
        a:hover{
            list-style: none;
        }
        .thisPlatform .TPitem select{  margin-left: 18px;  font-size: 14px;  color: #333333;  border: none;  width: 300px;  height: 30px;  text-indent: 9px;  background: #f3f3f3;  }
        .thisPlatform .TPitem select option{  border: none;  background: white;  text-indent: 9px;  }
        #Section1{  height: 283px;  }#Section2{  height: 423px;  }

    </style>
</head>
<body ng-init="i=false;t=true;w=true;f=true;g=true;h=true">
<div style="background-color: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/>
    <div class="mcontainer" id="nava">
        <jsp:include page="/static/front/comm/left.jsp"/>
        <div class="rName-main">
            <div class="way">
                <span>首页&nbsp;>&nbsp;会员中心&nbsp;>&nbsp;账号档案&nbsp;>&nbsp;票据管理</span>
            </div>
            <div class="rName-choose">
                <div class="rName-img">
                    <div class="img"></div>
                    <div class="txt">温馨提示</div>
                </div>
                <div class="rName-text">
                    <div style="height: 8px"></div>
                    增值税普通发票开给小规模纳税或者开票资料不齐全的购买人，购买人取得后不可以进行进项税额抵扣。若您还有疑问，建议联系贵司财务确认后再提交开票需求。
                </div>
            </div>
            <div class="poption">
                <div class="tab" role="tabpanel">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab">申请开发票</a></li>
                        <li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab">收发发票</a></li>
                        <li role="presentation"><a href="#Section3" aria-controls="messages" role="tab" data-toggle="tab" id="Section31">发票管理</a></li>
                        <li role="presentation"><a href="#Section4" aria-controls="messages" role="tab" data-toggle="tab">发票到哪</a></li>

                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content tabs">
                        <div role="tabpanel" class="tab-pane fade in active" id="Section1">
                            <div class="thisPlatform">
                                <div class="TPitem">
                                    <span class="tpi-name">开具类型</span>
                                    <label>
                                    <select name="" id="appType" >
                                        <option value="个人">个人</option>
                                        <option value="企业">企业</option>
                                    </select>
                                    </label>
                                </div>
                                <div  class="TPitem">
                                    <span class="tpi-name">发票类型</span>
                                    <label>
                                    <select name="" id="billType">
                                        <option value="普通发票">普通发票</option>
                                        <option value="增值税普通发票">增值税普通发票</option>
                                        <option value="增值税专用发票">增值税专用发票</option>
                                    </select>
                                    </label>
                                </div>
                                <div  class="TPitem">
                                    <span class="tpi-name">发票抬头</span>
                                    <input type="text" placeholder="" id="billTitle">
                                </div>
                                <div  class="TPitem" style="margin-top: 40px">
                                    <button id="submit1">确认</button>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="Section2">
                            <div class="thisPlatform">
                                <div class="TPitem">
                                    <span class="tpi-name">收件人</span>
                                    <input type="text" placeholder="" id="receiver">
                                </div>
                                <div  class="TPitem">
                                    <span class="tpi-name">所在地区</span>
                                    <label>
                                    <select name="" id="city">
                                        <option value="南宁市">南宁市</option>
                                        <option value="柳州市">柳州市</option>
                                        <option value="桂林市">桂林市</option>
                                        <option value="梧州市">梧州市</option>
                                        <option value="北海市">北海市</option>
                                        <option value="防城港市">防城港市</option>
                                        <option value="钦州市">钦州市</option>
                                        <option value="贵州市">贵州市</option>
                                        <option value="玉林市">玉林市</option>
                                        <option value="白色市">白色市</option>
                                        <option value="贺州市">贺州市</option>
                                        <option value="河池市">河池市</option>
                                        <option value="来宾市">来宾市</option>
                                        <option value="崇左市">崇左市</option>
                                    </select>
                                    </label>
                                </div>
                                <div  class="TPitem">
                                    <span class="tpi-name">详细地址</span>
                                    <input type="text" placeholder="" id="address">
                                </div>
                                <div  class="TPitem">
                                    <span class="tpi-name">邮政编号</span>
                                    <input type="text" placeholder="" id="mailCode">
                                </div>
                                <div  class="TPitem">
                                    <span class="tpi-name">手机号码</span>
                                    <input type="text" placeholder="" id="tel">
                                </div>
                                <div  class="TPitem">
                                    <span class="tpi-name">固定电话</span>
                                    <input type="text" placeholder="" id="phone">
                                </div>
                                <div  class="TPitem" style="margin-top: 40px">
                                    <button  id="submit2">确认</button>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="Section3">
                            <table>
                                <thead>
                                <tr>
                                    <th class="th1">开具类型</th>
                                    <th class="th2">发票类型</th>
                                    <th class="th3">发票抬头</th>
                                    <th class="th4">发票地址</th>
                                    <th class="th5">申请发票时间</th>
                                    <th class="th6">邮寄发票时间</th>
                                </tr>
                                </thead>
                                <tbody id="showBill">
                                    <tr>
                                        <td>企业</td>
                                        <td>增值税普通发票</td>
                                        <td>广西霸龙汇科有限公司</td>
                                        <td>南宁青秀区民族大道6号</td>
                                        <td>2017年5月26日 <br>10:15:20</td>
                                        <td>企业</td>
                                    </tr>
                                    <tr>
                                        <td>企业</td>
                                        <td>增值税普通发票</td>
                                        <td>广西霸龙汇科有限公司</td>
                                        <td>南宁青秀区民族大道6号</td>
                                        <td>2017年5月26日 <br>10:15:20</td>
                                        <td>企业</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="Section4">
                            <div>
                                <table class="infotable">
                                    <thead>
                                    <tr>
                                    <th class="th1">发票抬头</th>
                                    <th class="th2">物流/快递公司</th>
                                    <th class="th3">单号</th>
                                    <th class="th4">物流信息</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>广西霸龙汇科有限公司</td>
                                        <td>顺丰</td>
                                        <td>4256789625</td>
                                        <td></td>
                                    </tr>
                                </table>
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
<script type="text/javascript">
   $("#submit1").click(function () {//申请发票
        $.ajax({
            url : ctx+'/addBillApp',
            type : 'POST',
            data:"appType="+$("#appType").val()+"&billType="+$("#billType").val()+"&billTitle="+$("#billTitle").val(),
            dataType : 'json',
            success : function(data) {
                if(data.ok){
                    alert("成功")
                    location.reload();
                }else{
                    alert("失败")
                }
            } })
    })
   $("#submit2").click(function () {//收发发票
       $.ajax({
           url : ctx+'/addBillSendAddr',
           type : 'POST',
           data:"receiver="+$("#receiver").val()+"&city="+$("#city").val()+"&address="+$("#address").val()+
           "&mailCode="+$("#mailCode").val()+"&phone="+$("#phone").val()+"&tel="+$("#tel").val(),
           dataType : 'json',
           success : function(data) {
               if(data.ok){
                   alert("成功")
                   location.reload();

               }else{
                   alert("失败")
               }
           } })
   })
   $("#Section31").click(function(){

        $.ajax({
            url : ctx+'/showBill',
            type : 'POST',
            dataType : 'json',
            success : function(data) {
                if(data.ok){
                    $("#showBill").empty();
              var  app= data.billapp;
              var billSendAddr= data.billSendAddr;
              if(app!=null) {
                  var row = "<tr><td>" + app.appType + "</td><td>" + app.billType + "</td>" +
                      "<td>" + app.billTitle + "</td><td>" + billSendAddr.address + "</td>" +
                      "<td>" + app.fcd + "</td><td>" + billSendAddr.city + "</td></tr>";

                  $("#showBill").append(row);
              }
                }
            } })


   })
</script>
</body>
</html>