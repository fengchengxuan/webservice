<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/jsp/taglib.jsp"%><!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>峰程7080</title>
    <link rel="stylesheet" href="${ctx}/static/front/index/css/style.css" type="text/css">
    <link href="${ctx}/static/front/css/FE.css" rel="stylesheet" type="text/css">
    <link href="${ctx}/static/front/css/feer.css" rel="stylesheet" type="text/css">

</head>

<body style="min-width: 1200px;overflow-x:hidden">
<div style="width: 40px;height: 3px;position: absolute;right: 1196px;top: 137px;background: #52c7f5"></div>
<div style="background: #ededed">
    <jsp:include page="/static/front/comm/top.jsp"/></div>
    <!--中间内容-->

    <div style="width: 1200px;margin: 0 auto;font-size: 12px;color: #666;position: relative;z-index: 99;">
        <a href="http://www.fengcheng7080.com/" style="text-decoration: none;font-size: 12px;color: #666">首页</a>>
        <span><a href="#">免费体验</a></span>
    </div>

    <div class="fe_container">

    <div id="header" >




        <div style="position: fixed; right: 58px;top: 139px;width: 75px;" ><img src="${ctx}/static/front/images/dong.png" alt="" style="position: relative;z-index: 999999"></div>
            <div id="reset-show" style="width: 163px;position: fixed;    right: 10px;top: 211px;z-index:7;height: 108px;background: url(${ctx}/static/front/images/QR.png) no-repeat;cursor: pointer">
                <img src="../static/front/images/shou.png" alt="" style="margin: 34px 0 0 112px;" id="dh">
            </div>
        <!--二维码弹出-->
        
        <div id="reset-p1" style="width: 100%; height: 100%; background: rgba(0, 0, 0, 0.3); position: fixed; top: 0; left: 0; display: none;z-index: 999999;">
            <div style="position: fixed;top: 25%;left: 20%;">
                <p id="reset-hide" style="text-align: right;width: 20px;height: 20px;font-size: 18px;cursor: pointer;margin-left: 477px;position: relative;z-index: 999999999">
                    <img src="${ctx}/static/front/images/X.png" alt="" style="position: relative;left: 639px;top: -10px;">
                </p>
                <div>
                    <img src="${ctx}/static/front/images/free-title.png" alt="">
                </div>
                <div style="float: left;width: 344px;height: 379px">
                    <img src="${ctx}/static/front/images/QR1.jpg" alt="" style="    position: relative;
    top: 40px;
    left: 155px;">
                </div>
                <div style="float: left;width: 344px;height: 379px">
                    <img src="${ctx}/static/front/images/QR2.jpg" alt="" style="position: relative;top: 42px;left: 250px;">
                </div>
            </div>
        </div>

<!--导航-->
        <div style="width: 1200px;margin: 0 auto;position: relative;top: 500px;right: -110px">
            <div class="free-nav">
                <div >
                    <a href="#maodian1"><img src="${ctx}/static/front/images/free-nav1.png" alt="" class="free-navdh1"></a>
                </div>
                <div >
                    <a href="#maodian2"><img src="${ctx}/static/front/images/free-nav2.png" alt="" class="free-navdh2"></a>
                </div>
                <div >
                    <a href="#maodian3"><img src="${ctx}/static/front/images/free-nav3.png" alt="" class="free-navdh3"></a>
                </div>
                <div >
                    <a href="#" id="maodian1"><img src="${ctx}/static/front/images/free-nav4.png" alt="" class="free-navdh4"></a>
                </div>

            </div>
        </div>

    </div>
    <div id="content">
        <!--内部内容-->
        <div class="content-jpg" >

            <!--中间表格-->
            <div class="content-free" id="nava">
                <div class="free_title1"></div>
                <div style="position: relative;width: 1200px;height: 677px;margin-top: 15px">
                    <div class="free_tb_c">
                        <div class="free_tb">
                            <table>
                                <thead>
                                <tr class="trh">
                                    <th style='width: 82px;'>序号</th>
                                    <th style='width: 176px'>行业类别</th>
                                    <th style='width: 78px'>开放名额</th>
                                    <th style='width: 198px'>开放截止时间</th>
                                    <th style='width: 120px'>已获审批名额</th>
                                    <th style='width: 119px'>剩下名额</th>
                                    <th style='width: 142px;'>获审批企业名称<br>/个体</th>
                                    <th style="width: 125px">未通过审批企业<br>名称/个体</th>
                                    <th style="width: 179px">如何领取500名<br>免费体验名额</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>政府|非盈利机构</td>
                                    <td>30</td>
                                    <td style="color: red">2018年7月14截止</td>
                                    <td>15</td>
                                    <td>15</td>
                                    <td>15</td>
                                    <td>8</td>
                                    <td class="statement" rowspan="12" style="line-height: 25px;">登录<br>www.fengcheng<br>7080.com 在导航<br>里找到免费体验<br>填写申请表，您<br>
                                        需要推荐10家传<br>统中小型企业免<br>费体验并参与（<br>符合推荐企业要<br>求即可参与免费<br>体验名额以及获<br>得相应的服务）</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>文体教育|工艺美术</td>
                                    <td>30</td>
                                    <td style="color: red">2018年7月14截止</td>
                                    <td>20</td>
                                    <td>10</td>
                                    <td>15</td>
                                    <td>20</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>金融业</td>
                                    <td>30</td>
                                    <td style="color: red">2018年7月14截止</td>
                                    <td>7</td>
                                    <td>23</td>
                                    <td>7</td>
                                    <td>19</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>房地产|建筑业</td>
                                    <td>30</td>
                                    <td style="color: red">2018年7月14截止</td>
                                    <td>8</td>
                                    <td>22</td>
                                    <td>8</td>
                                    <td>14</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>商业服务/个体</td>
                                    <td>60</td>
                                    <td style="color: red">2018年7月14截止</td>
                                    <td>11</td>
                                    <td>51</td>
                                    <td>11</td>
                                    <td>28</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>贸易|批发|零售|租赁业</td>
                                    <td>30</td>
                                    <td style="color: red">2018年7月14截止</td>
                                    <td>9</td>
                                    <td>21</td>
                                    <td>9</td>
                                    <td>20</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>生产|加工|制造</td>
                                    <td>100</td>
                                    <td style="color: red">2018年7月14截止</td>
                                    <td>38</td>
                                    <td>62</td>
                                    <td>38</td>
                                    <td>60</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>交通|运输|物流|仓储</td>
                                    <td>30</td>
                                    <td style="color: red">2018年7月14截止</td>
                                    <td>12</td>
                                    <td>18</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>服务业/个体</td>
                                    <td>60</td>
                                    <td style="color: red">2018年7月14截止</td>
                                    <td>20</td>
                                    <td>40</td>
                                    <td>20</td>
                                    <td>45</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>能源|矿产|环保</td>
                                    <td>20</td>
                                    <td style="color: red">2018年7月14截止</td>
                                    <td>9</td>
                                    <td>11</td>
                                    <td>9</td>
                                    <td>19</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>农|林|牧|渔|其他</td>
                                    <td>20</td>
                                    <td style="color: red">2018年7月14截止</td>
                                    <td>18</td>
                                    <td>22</td>


                                        <td>18</td>
                                    <td>27</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>文化|传媒|娱乐|体育</td>
                                    <td>40</td>
                                    <td style="color: red">2018年7月14截止</td>
                                    <td>24</td>
                                    <td>16</td>
                                    <td>24</td>
                                    <td>79</td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>

                </div>
            </div>

            <div class="free-text-box" id="maodian2">
                <div class="free_title2"></div>
                <div class="free-text">
                    <p>1、企业注册资金≥100万注册资金。</p>
                    <p>2、企业成立时间1年以上。</p>
                    <p>3、企业必须拥有独立办公场所（自供或租用均可）不低于100平方以上的办公场地。</p>
                    <p>4、企业必须拥有固定电话、400服务热线、传真等正常通讯设备。</p>
                    <p>5、企业必须拥有品牌商标、产品或研发某项专利或者正在申请的商标及专利。</p>
                    <p >6、在职企业员工≥30人。</p>
                    <p>7、公司部门结构不能低于5个部门以上。</p>
                    <p>8、公司经营产品不低于10款以上。</p>
                    <p >9、企业负责人必须有非常明确意向以及决定并且认可（虚拟经济产生于实体经济，服务于实体经济，这个原则是不能变的）。</p>
                    <p style="line-height: 26px">10、获得免费体验资格的用户我方工作人员会积极联系并沟通具体的工作开展及实施，如用户存在磨叽、贪心、计较、提出工作结果及具体
                        工作内容超出免费体验服务外，我们按照实际情况进行收取相应费用，如因收取费用存在过多言语，我们直接取消该名客户免费体验资格。</p>
                    <p style="margin-bottom: 20px;line-height: 26px">
                        11、我们不服务“王子、公主、大爷、小姐”等类型的企业，我们推出免费政策，是因为我们三位合伙创始人基于对家乡情节，我们希望使用
                       自己所学、所见、所闻、所感、 <span id="maodian3">所创来服务以及建设自己的家乡做出一份微薄之力。</span>
                    </p>
                    <p style="font-size: 12px;color: red">
                        （注释：以上11点要求缺一不可，达不到以上11点要求不可享峰程7080开放500名免费体验名额申请，目前仅限广西地区中小型企业申请，其它外省地区暂不受理，谢谢体谅与支持！)
                    </p>
                </div>
            </div>


            <!--信息填写-->
            <div class="setM">
                <div class="free_title3"></div>
                <div class="setmessage">
                    <div class="mtittle">行业类型</div>
                    <label>
                            <select name="prodKindId" id="prodKindId">
                                <option value="0">政府非盈利机构</option>
                                <option value="1">金融业</option>
                                <option value="2">房地产|建筑业</option>
                                <option value="3">商业服务|个体</option>
                                <option value="4">贸易|批发|零售|租赁业</option>
                                <option value="5">生产|加工|制造</option>
                                <option value="6">交通|运输|物流|仓储</option>
                                <option value="7">服务业|个体</option>
                                <option value="8">能源|矿产|环保</option>
                                <option value="9">农|林|牧|渔|其他</option>
                                <option value="10">文化|传媒|娱乐|体育</option>
                            </select>
                     </label>
                    <span>*星号代表此选项必填：点击该选项下拉框，选择符合公司性及行业即可。</span>
                </div>
                <div class="setmessage">
                    <div class="mtittle">公司类型</div>
                    <label>
                             <select name="comptypeId" id="comptypeId">
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
                    <span>*星号代表此选项必填：点击该选项下拉框，选择符合公司性及行业即可。</span>
                </div>
                <div class="setmessage">
                    <div class="mtittle">申请人类型</div>
                    <label>
                            <select name="appTypeId" id="appTypeId">
                                <option value="0">法人</option>
                                <option value="1">股东</option>
                                <option value="2">项目负责人</option>
                            </select>
                    </label>
                    <span>*星号代表此选项必填：点击该选项下拉框，您属于公司申请人那个类型，根据申请人职位及职责选择适合即可。</span>
                </div>
                <div class="setmessage">
                    <div class="mtittle">公司名称</div>
                    <input type="text" placeholder="" id="companyname"/>
                    <span>*星号代表此选项必填：请手动输入您公司/企业名称</span>
                </div>
                <div class="setmessage">
                    <div class="mtittle">经营地址</div>
                    <input type="text" placeholder="" id="address"/>
                    <span>*星号代表此选项必填：请手动输入您公司/企业真实经营场地与营业执照上注册地址最好是一致。</span>
                </div>
                <div class="setmessage">
                    <div class="mtittle">固定电话</div>
                    <input type="text" placeholder="" id="stablephone">
                    <span >*星号代表此选项必填：请手动输入您公司/企业真实经营场地固定电话。</span>
                </div>
                <div class="setmessage">
                    <div class="mtittle">手机电话</div>
                    <input type="text" placeholder="" id="phonenumber">
                    <span class="phonenumber">*星号代表此选项必填：请手动输入您公司/企业负责该项目的负责人手机电话。</span>
                </div>
                <div class="setmessage">
                    <div class="mtittle">邮箱</div>
                    <input type="text" placeholder="" id="email"/>
                    <span class="email">*星号代表此选项必填：请手动输入您公司/企业真企业邮箱或者负责人邮箱。</span>
                </div>
                <div class="setmessage">
                    <div class="mtittle">公司网址</div>
                    <input type="text" placeholder="" id="website"/>
                    <span class="website">*星号代表此选项必填：请手动输入您公司/企业真实官网，无官方网址请填写无。</span>
                    
                </div>
                <div class="setmessage">
                    <div class="mtittle">QQ/微信</div>
                    <input type="text" placeholder="" id="social"/>
                    <span>*星号代表此选项必填：请手动输入您公司/企业负责人QQ或微信。</span>
                </div>
                <div class="setmessage-e">
                    <div class="mtittle">免费体验需求<br>及服务时间</div>
                    <textarea name="" id="appContent" cols="30" rows="10" placeholder=""></textarea>
                    <span>*星号代表此选项必填：请输入<br>您想要需求及时间规定</span>
                </div>
            </div>
            <div class="btn-box">
                <button class="confirm"></button>
            </div>
        </div>

        <div class="free-text-box-bottom" >

        </div>
    </div>

    </div>
</div>
<jsp:include page="/static/front/comm/footer.jsp"/>
<script src="${ctx}/static/front/js/angular.min.js" type="text/javascript"></script>
<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<!--二维码弹出-->

<script type="text/javascript">
    $(document).ready(function(){
        $("#reset-hide").click(function(){
            $("#reset-p1").hide();
        });
        $("#reset-show").click(function(){
            $("#reset-p1").show();
        });
    });

    $(".confirm").click(function () {  //提交申请
        var userName='${sessionScope.user}';//用户名
        var prodKindId=$("#prodKindId").val();            //行业类型
        var comptypeId=$("#comptypeId").val();      //公司类型
        var appTypeId=$("#appTypeId").val() ;      //申请人
        var companyname=$("#companyname").val() ;           //公司名称
        var address=$("#address").val() ;             //经营地址
        var hpone = $("#stablephone").val();              //固定电话
        var phonenumber=$("#phonenumber").val();                //手机号码
        var email=$("#email").val();                  //邮箱
        var website=$("#website").val();             //公司网址
        var url=document.getElementById("website").value;
 		var reg=/^([hH][tT]{2}[pP]:\/\/|[hH][tT]{2}[pP][sS]:\/\/)(([A-Za-z0-9-~]+)\.)+([A-Za-z0-9-~\/])+$/;
        var userQQ=$("#social").val();                //QQ微信
        var web=$("#website").val();             //公司网址
        var social=$("#social").val();                //QQ微信
        var appContent=$("#appContent").val();       //申请需求
       /* if(!(/^(0[0-9]{2,3}\/-)?([2-9][0-9]{6,7})+(\/-[0-9]{1,4})?$/.test(hpone))){

           // return;
        }

       /* if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(phonenumber))){   //手机判断
           // alert("请输入正确的手机号码！");
           // return;
        }
       /* if(!(/^([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+.[a-zA-Z]{2,4}$/.test(email))){  //邮箱判断
            alert("请输入正确邮箱地址，亲");
        }else
       // if(!(/^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/.test(fHpone))){
        //    alert("请输入正确的固定号码！")  ;
        //    return;
       // }else
        if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(mHpone))){   //手机判断
         $('.phonenumber').html("请输入正确的手机号码！").css("color","red");
            return;
        }else
        if(!(/^([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+.[a-zA-Z]{2,4}$/.test(email))){  //邮箱判断
          //  alert("请输入正确邮箱地址，亲");
             $('.email').html("请输入正确邮箱地址，亲").css("color","red")

            return;
        }else
        if(/^[0-9]+.?[0-9]*$/.test(userQQ)){//是否全数字
            if(!(/^\d{5,10}$/.test(userQQ))){  //是否QQ
           //     alert("请输入正确微信号或者QQ号");
            $('.social').html("请输入正确微信号或者QQ号").css("color","red")
                return;
            }
        }else {
            if(!(/^[a-zA-Z\d_]{5,}$/.test(userQQ))){  //QQ微信验证
              $('.social').html("请输入正确微信号或者QQ号").css("color","red")
                return ;
            }else{

            }
        }

 		if(!reg.test(url)){
            $('.website').html("请输入贵公司正确的网址").css("color","red")
            return ;
        }*/
       /* if(userName==null||userName==""){    //登录判断
          */
            $.ajax({
                url : '${ctx}/apply/proApply',
                type : 'POST',
                data : "&prodKindId="+prodKindId+"&comptypeId="+comptypeId+"&appTypeId="+appTypeId+""
                +"&companyname="+companyname+"&address="+address+"&hpone="+hpone+"&phonenumber="+phonenumber+"&email="+email+"&web="+web+
                "&social="+social+"&appContent="+appContent,
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if(data!=null && data!=""){
                        if(data.ok){
                            alert("申请成功");
                            window.location.href="${ctx}/free";
                        }else{
                            if(confirm("是否要登录")){
                                window.location.href="${ctx}/login";
                                }

                        }
                    }
                }
            })
    });
</script>
<script>
    $("#email").blur(function () { 
         var email=$("#email").val(); 
         if(!(/^([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+.[a-zA-Z]{2,4}$/.test(email))){  //邮箱判断
          // alert("请输入正确邮箱地址，亲");
             $('.email').html("请输入正确邮箱地址，亲").css("color","red")
       
        }else{
		$('.email').html("*星号代表此选项必填：请手动输入您公司/企业真企业邮箱或者负责人邮箱。").css('color','#666');
	
            }
        });
        
         $("#website").blur(function () { 

        	 var website=$("#website").val(); 
        if(!(/^((ht|f)tps?):\/\/[\w\-]+(\.[\w\-]+)+([\w\-\.,@?^=%&:\/~\+#]*[\w\-\@?^=%&\/~\+#])?$/.test(website))){

        var url=document.getElementById("website").value;

 		var reg=/^([hH][tT]{2}[pP]:\/\/|[hH][tT]{2}[pP][sS]:\/\/)(([A-Za-z0-9-~]+)\.)+([A-Za-z0-9-~\/])+$/;

 		if(!reg.test(url)){
        
            $('.website').html("请输入贵公司正确的网址").css("color","red")
        
        }else{
         $('.website').html("*星号代表此选项必填：请手动输入您公司/企业真实官网，无官方网址请填写无。").css("color","#666")
        
        })
        </script>
<script src="${ctx}/static/front/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<!--锚点-->
<script type="text/javascript">
    $(document).ready(function() {
        $("#div1Link").click(function() {
            $("html, body").animate({
                scrollTop: $("#maodian1").offset().top }, {duration: 500,easing: "swing"});
            return false;
        });
        $("#div2Link").click(function() {
            $("html, body").animate({
                scrollTop: $("#maodian12").offset().top }, {duration: 500,easing: "swing"});
            return false;
        });
        $("#div3Link").click(function() {
            $("html, body").animate({
                scrollTop: $("#maodian13").offset().top }, {duration: 500,easing: "swing"});
            return false;
        });
    });
    
    
    
    
    
    
     $("#phonenumber").blur(function () {  //提交申请
        var mHpone=$("#phonenumber").val();                //手机号码
      
        if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(mHpone))){   //手机判断
         $('.phonenumber').html("请输入正确的手机号码！").css("color","red");
            }else{
		$('.phonenumber').html("*星号代表此选项必填：请手动输入您公司/企业负责该项目的负责人手机电话。").css("color","#666");
           
            }
        });
        
</script>
</body>
</html>