<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/taglib.jsp"%>
 <link rel="stylesheet" href="../../../static/background/css/bootstrap.min.css">
 <link rel="stylesheet" href="../../../static/background/css/top.css">
 <style>
     .Progresspng img{
         height: 14px;
         width: 505px;
     }
     *{
         margin: 0;
         padding: 0;
     }
     body{
         font-family: '微软雅黑',sans-serif;
     }
     #order-p1{color: #333}
     .order-bi{
         width: 0;
         height: 0;
     }.order-bi p{border: 0;width: 33px;height: 33px;
          background: url("../../../static/background/images/x.png")no-repeat;
          cursor: pointer;
          position: relative;left:673px;top: 0;
      }
     .ordercheckbox{
         width: 320px;
         height: 41px;
         float: left;
     }.ordercheckbox input{
          margin: 24px 0 0 38px;
          width: 17px;height: 17px;border: 1px solid #676767;
      }
     .order-hr{
         clear: both;
         border: 0;
         height: 1px;
         width: 666px;
         background: #cccccc;
         margin:0 auto;
         position: relative;top: 12px;
     }
     .order-hr1{
         margin:0 auto;
     }
     .order-bi2{
         width: 730px;
         height: 45px;
         line-height: 63px;
     }
     .order-bi23{
         margin-top: 5px;
         width: 730px;
         height: 40px;
         line-height: 63px;
     }
     .order-del-zx{
         color: #ccc;
         font-size: 12px;
         width: 600px;
         margin: 15px 0 0 38px;
     }
     .order-del-zx span{
         color: red;
     }
     .order-progress{
         margin-top: 10px;
         margin-left: 38px;
         width: 830px;
         /*height: 25px;*/
     }
     .order-progress>div{
         float: left;
     }
     .progress-text{
         margin: 0 22px 0 35px;
         line-height: 11px;
         color: red;
     }
     .progress-text2{
         margin:0 9px 0 8px;
         line-height: 13px;
     }
     .order-p2 .progress-text{
         color: #20d457;
     }
     .progress-100{
         line-height: 11px;
         color: #666;
         margin-left: 10px;
     }
     .delete-but{
         margin: 25px 0 0 275px;
     }
     .delete-but button{
         float: left;
         border-radius: 4px;
         border: 0;
         width: 130px;
         height: 36px;
         line-height: 36px;
         color: white;
         font-size: 16px;
         background: #1b94d3;
         cursor: pointer;
         margin-top: -35px;
     }
     .order-p-mod{
         width: 706px;height: 620px;background:white;margin:40px auto 0 auto
     }

 </style>
<!--清缓存模态框-->
<div id="order-p1" style="position: relative;z-index: 99;display: none">
    <div style="width: 100%;height: 1900px;background: rgba(0, 0, 0, 0.3);position: fixed">
        <div class="order-p-mod">
            <!--关闭按钮-->
            <div class="order-bi">
                <div class="ordercheckbox">
                    <input type="checkbox" name="selectall" placeholder="">
                    <span style="position: relative;top: -4px">全选</span>
                </div>
                <p id="orderHide" onclick="oo()"></p>
            </div>

            <div class="order-hr order-hr1"></div>
            <div class="order-bi order-bi2 order-bi23">
                <div class="ordercheckbox">
                    <input type="checkbox" name="stuCheckBox" placeholder="">
                    <span style="position: relative;top: -4px;">全站目录缓存清除垃圾</span>
                </div>
                <div style="width: 230px;margin-left: 500px;">
                    <span style="color: #ee1212">缓存垃圾: 112MB</span>
                </div>
            </div>

            <!--1-->
            <div class="order-del-zx">
                <span>注释：</span>因目录添加、修改、删除存操作时发生缓存垃圾暂时储存于网站空间时，对其进行清除。
            </div>
            <div class="order-progress">
                <div>
                    <img src="../../../static/background/images/dui-x.png" alt="">
                </div>
                <div class="progress-text2">
                    发现缓存垃圾
                </div>
                <div class="Progresspng">
                    <img src="../../../static/background/images/Progress1.png" alt="">
                </div>
                <div class="progress-100">
                    0%
                </div>
            </div>
            <div class="order-hr order-hr1"></div>
            <div class="order-bi order-bi2">
                <div class="ordercheckbox">
                    <input type="checkbox" name="stuCheckBox" placeholder="">
                    <span style="position: relative;top: -4px;">全站内页缓存清理垃圾</span>
                </div>
                <div style="width: 230px;margin-left: 500px;">
                    <span style="color: #ee1212">缓存垃圾: 112MB</span>
                </div>
            </div>

            <!--2-->
            <div class="order-del-zx">
                <span>注释：</span>因网站子页面或其它页面添加、修改、删除操作时发生缓存垃圾暂时储存于网站空间时，对其进行清除。
            </div>
            <div class="order-progress">
                <div>
                    <img src="../../../static/background/images/dui-x.png" alt="">
                </div>
                <div class="progress-text2">
                    发现缓存垃圾
                </div>
                <div class="Progresspng">
                    <img src="../../../static/background/images/Progress1.png" alt="">
                </div>
                <div class="progress-100">
                    0%
                </div>
            </div>
            <div class="order-hr order-hr1"></div>
            <div class="order-bi order-bi2">
                <div class="ordercheckbox">
                    <input type="checkbox" name="stuCheckBox" placeholder="">
                    <span style="position: relative;top: -4px;">全站新闻及文章缓存清理垃圾</span>
                </div>
                <div style="width: 230px;margin-left: 500px;">
                    <span style="color: #ee1212">缓存垃圾: 612MB</span>

                </div>
            </div>

            <!--3-->
            <div class="order-del-zx">
                <span>注释：</span>因新闻及文章添加、修改、删除操作时发生缓存垃圾暂时储存于网站空间时，对其进行清除。
            </div>
            <div class="order-progress">
                <div>
                    <img src="../../../static/background/images/dui-x.png" alt="">
                </div>
                <div class="progress-text2">
                    发现缓存垃圾
                </div>
                <div class="Progresspng">
                    <img src="../../../static/background/images/Progress1.png" alt="">
                </div>
                <div class="progress-100">
                    0%
                </div>
            </div>
            <div class="order-hr order-hr1"></div>
            <div class="order-bi order-bi2">
                <div class="ordercheckbox">
                    <input type="checkbox" name="stuCheckBox" placeholder="">
                    <span style="position: relative;top: -4px;">全站数据库缓存清理垃圾</span>
                </div>
                <div style="width: 230px;margin-left: 500px;">
                    <span style="color: #ee1212">缓存垃圾: 882MB</span>
                </div>
            </div>

            <!--4-->
            <div class="order-del-zx">
                <span>注释：</span>因操作目录、内页、新闻及文章时产生暂时垃圾缓存，存于系统数据，对这些不需要缓存及垃圾进行清
                <a style="margin-left: 35px;color: #ccc;text-decoration: none">除，该操作权限仅限系统超级管理员方能使用，其它等级用户暂无权利操作该项功能。</a>
            </div>
            <div class="order-progress">
                <div>
                    <img src="../../../static/background/images/dui-x.png" alt="">
                </div>
                <div class="progress-text2">
                    发现缓存垃圾
                </div>
                <div class="Progresspng">
                    <img src="../../../static/background/images/Progress1.png" alt="">
                </div>
                <div class="progress-100">
                    0%
                </div>
            </div>
            <div class="order-hr order-hr1"></div>
            <div class="order-bi order-bi2">


            </div>

            <!--按钮-->
            <div class="delete-but">
                <button style="margin-top: -20px">清扫缓存及垃圾</button>
            </div>
        </div>
    </div>
</div>



<!--更新存模态框-->
<div id="order-p2" style="position: relative;z-index: 99;display: none">
    <div style="width: 100%;height: 1900px;background: rgba(0, 0, 0, 0.3);position: fixed">
        <div class="order-p-mod">
            <!--关闭按钮-->
            <div class="order-bi">
                <div class="ordercheckbox">
                    <input type="checkbox" name="all" id="all" onclick="checkAll()" placeholder="">
                    <span style="position: relative;top: -4px">全选/单选</span>
                </div>
                <p id="orderHide1" onclick="oo()"></p>
            </div>
            <div class="order-hr"></div>
            <div class="order-bi order-bi2 order-bi23">

                <div class="ordercheckbox">
                    <input type="checkbox" name="checkname[]" value="1" placeholder="">
                    <span style="position: relative;top: -4px;">全站目录</span>
                </div>

            </div>

            <!--1-->
            <div class="order-del-zx">
                <span>注释：</span>因目录添加、修改、删除操作时发生的页面数据库会存在一定缓存时间，未及时在网站前台展示，故选择该
                <a style="margin-left: 35px;color: #ccc;text-decoration: none">项立即对其进行及时更新。</a>
            </div>
            <div class="order-progress">

                <div class="progress-text" style="color: #20d457;">
                    更新进度
                </div>
                <div class="Progresspng">
                    <img src="../../../static/background/images/Progress1.png" alt="">
                </div>
                <div class="progress-100">
                    0%
                </div>
            </div>
            <div class="order-hr"></div>
            <div class="order-bi order-bi2">
                <div class="ordercheckbox">
                    <input type="checkbox" name="checkname[]" value="2" placeholder="">
                    <span style="position: relative;top: -4px;">全站内页</span>
                </div>

            </div>

            <!--2-->
            <div class="order-del-zx">
                <span>注释：</span>因网站子页面或其它页面添加、修改、删除操作时发生的页面数据库会存在一定缓存时间，未及时在
                <a style="margin-left: 35px;color: #ccc;text-decoration: none">网站前台展示，故选择该项立即对其进行及时更新。</a>
            </div>
            <div class="order-progress">

                <div class="progress-text" style="color: #20d457;">
                    更新进度
                </div>
                <div class="Progresspng">
                    <img src="../../../static/background/images/Progress1.png" alt="">
                </div>
                <div class="progress-100">
                    0%
                </div>
            </div>
            <div class="order-hr"></div>
            <div class="order-bi order-bi2">
                <div class="ordercheckbox">
                    <input type="checkbox" name="checkname[]" value="3" placeholder="">
                    <span style="position: relative;top: -4px;">全站新闻及文章</span>
                </div>

            </div>

            <!--3-->
            <div class="order-del-zx">
                <span>注释：</span>因新闻及文章添加、修改、删除操作时发生的页面数据库会存在一定缓存时间，未及时在网站前台展示，故
                <a style="margin-left: 35px;color: #ccc;text-decoration: none"></a>选择该项立即对其进行及时更新。
            </div>
            <div class="order-progress">

                <div class="progress-text" style="color: #20d457;">
                    更新进度
                </div>
                <div class="Progresspng">
                    <img src="../../../static/background/images/Progress1.png" alt="">
                </div>
                <div class="progress-100">
                    0%
                </div>
            </div>
            <div class="order-hr"></div>
            <div class="order-bi order-bi2">
                <div class="ordercheckbox">
                    <input type="checkbox" name="checkname[]" value="4" placeholder="">
                    <span style="position: relative;top: -4px;">全站数据库</span>
                </div>

            </div>

            <!--4-->
            <div class="order-del-zx">
                <span>注释：</span>因操作目录、内页、新闻及文章时产生数据缓存于数据库，数据库会存在一定缓存时间，未及时在网站前台
                <a style="margin-left: 35px;color: #ccc;text-decoration: none">展示，故选择该项立即对其进行及时更新。</a>
            </div>
            <div class="order-progress">

                <div class="progress-text" style=" color: #20d457;">
                    更新进度
                </div>
                <div class="Progresspng">
                    <img src="../../../static/background/images/Progress1.png" alt="">
                </div>
                <div class="progress-100">
                    0%
                </div>
            </div>
            <div class="order-hr"></div>
            <div class="order-bi order-bi2">


            </div>

            <!--按钮-->
            <div class="delete-but">
                <button>更新</button>
            </div>
        </div>
    </div>
</div>


<div id="header">
    <div class="header-content">
        <a href="http://www.fengcheng7080.com" class="logo" target="_blank"><img src="../../../static/background/images/logo.png" alt=""></a>
        <div class="extbtn">
            <div style="float: left"><img src="../../../static/background/images/xx.png" alt="背景"></div>
            <img class="extimg" onclick="exit()" src="../../../static/background/images/icon.png" alt="退出">
            <p>退出</p>
        </div>
        <div class="ht-user">
            <div class="uname-hello">欢迎<span style="color: blue">${sessionScope.loginName}</span>登录峰程7080网站后台</div>
            <div class="uname-text">
                <span style="color: blue">${sessionScope.loginName}</span>
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <span>${sessionScope.level}</span></div>
        </div>
        <div class="hc-btns">
            <button class="hc-btn4" data-toggle="modal" data-target="#myModa7" style="margin-right: 0">联系管理员</button>
            <button class="hc-btn3" id="orderShow1">更新全站</button>
            <button class="hc-btn2" id="orderShow">清除网站缓存</button>
            <a href="http://www.fengcheng7080.com" target="_blank"><button class="hc-btn1">浏览网站首页</button></a>
        </div>
    </div>
</div>

<!--联系管理员模态框-->
<div class="modal fade" id="myModa7" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true"  >
    <div class="modal-dialog" >
        <div >
        </div>
        <div class="modal-content" style="width:671px;height: 382px;background: url('${ctx}/static/front/images/modal-content.jpg')no-repeat;border: 1px solid #fff;position:relative;left:-8%;top:130px;padding:50px 0;">
            <%--<div style="width: 0;height: 0">--%>
                <button data-dismiss="modal" style="width: 35px;height: 35px;border: 0;position: relative;top: -51px;left: 635px;">
                    <img src="../../../static/background/images/x.png" alt="">
                </button>
            <%--</div>--%>
            <%--<div>--%>
                <%--<div style="margin:36px 0 0 482px;float: left;width: 300px;line-height: 30px;">--%>

                    <%--职位:<span style="color: #999">功能开发员</span><br>--%>
                    <%--性别:<span style="color: #999">男</span><br>--%>
                    <%--姓名:<span style="color: #999">林新泽</span>--%>
                <%--</div>--%>
                <%--<div style="position: relative;top: 36px;line-height: 30px;left:-20px">--%>

                    <%--职位:<span style="color: #999">功能开发员</span><br>--%>
                    <%--性别:<span style="color: #999">男</span><br>--%>
                    <%--姓名:<span style="color: #999">李良耿</span>--%>
                <%--</div>--%>

                <%--<div style="margin: 18px 0 0 511px;float: left;width: 285px;line-height: 39px;color: #0c9bdd;">--%>
                    <%--1047923973<br>--%>
                    <%--0771-4300785--%>
                <%--</div>--%>
                <%--<div style="position: relative;top: 55px;line-height: 39px;color: #0c9bdd;">--%>
                    <%--1047923973<br>--%>
                    <%--0771-4300785--%>
                <%--</div>--%>






                <%--<div style="margin:72px 0 0 482px;float: left;width: 314px;line-height: 30px;">--%>
                    <%--职位:<span style="color: #999">专属客服经理</span><br>--%>
                    <%--性别:<span style="color: #999">女</span><br>--%>
                    <%--姓名:<span style="color: #999">贞儿</span>--%>
                <%--</div>--%>
                <%--<div style="position: relative;top: 130px;left:-30px;line-height: 30px;">--%>
                    <%--职位:<span style="color: #999">专属客服经理</span><br>--%>
                    <%--性别:<span style="color: #999">女</span><br>--%>
                    <%--姓名:<span style="color: #999">薇儿</span>--%>
                <%--</div>--%>

                <%--<div style="margin: 18px 0 0 511px;float: left;width: 285px;line-height: 39px;color: #0c9bdd;">--%>
                    <%--1047923973<br>--%>
                    <%--0771-4300785--%>
                <%--</div>--%>
                <%--<div style="position: relative;top: 145px;line-height: 39px;color: #0c9bdd;">--%>
                    <%--1047923973<br>--%>
                    <%--0771-4300785--%>
                <%--</div>--%>



            <%--</div>--%>
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>

<script src="../../../static/background/js/jquery-3.2.1.js" type="text/javascript"></script>
<script src="../../../static/background/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript">
    function exit() {
        $.ajax({
            url : '${ctx}/admin/exit',
            type : 'POST',
            dataType: 'json',
            success : function() {
                window.location.href = ctx+"/admin";
            }
        })
    }
</script>



<!--清除缓存-->

<script type="text/javascript">
    $(document).ready(function(){
        $("#orderHide").click(function(){
            $("#order-p1").hide();
        });
        $("#orderShow").click(function(){
            $("#order-p1").show();
        });

        $("#orderHide1").click(function(){
            $("#order-p2").hide();
        });
        $("#orderShow1").click(function(){
            $("#order-p2").show();
        });

    });
</script>
<script src="../../../static/background/js/jquery-3.2.1.js" type="text/javascript"></script>
<script type="text/javascript">
    $('input[name="selectall"]').click(function(){
        if($(this).is(':checked')){
            $('input[name="stuCheckBox"]').each(function(){
                //此处如果用attr，会出现第三次失效的情况
                $(this).prop("checked",true);
            });
        }else{
            $('input[name="stuCheckBox"]').each(function(){
                $(this).removeAttr("checked",false);
            });
        }
    });
</script>