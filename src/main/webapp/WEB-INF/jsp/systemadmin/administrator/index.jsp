<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<!DOCTYPE html>
<html ng-app>
<head>
    <meta charset="UTF-8">
    <title>系统管理员设置</title>
    <link rel="icon" href="${ctx}/static/background/images/i.png">
    <link rel="stylesheet" href="${ctx}/static/background/css/adm.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/background/css/bootstrap.min.css" type="text/css">
    <script src="${ctx}/static/background/js/jquery-3.2.1.js" type="text/javascript"></script>
    <script src="${ctx}/static/background/js/bootstrap.min.js" type="text/javascript"></script>
    <style>
        .list5{
            background:  #3eb7f3;
        }
        .wrap .blist .li{
            cursor: pointer;
            background: white;
            color: #24a0ff;
            width: 110px;
            height: 33px;
            line-height: 33px;
            text-align: center;
            font-size: 14px;    border-radius: 4px;
            display: block;
        }

        .wrap .blist .li.active{
            cursor: pointer;
            background: url(/static/front/images/title12.png);
            color: white;

        }
        .clearfix li{
            float: left;
        }
        .passwordShow{
            cursor: pointer;
        }
        .forget-password-s{
            cursor: pointer;
        }
        .forget-user-s{
            cursor: pointer;
        }
        #Selected{
            height: 43px;
            line-height: 43px;
            cursor: pointer;
            text-align: center;
            font-size: 14px;
            border-left:1px solid #2090cc;
        }
        #ddoli{
            position: absolute;
            left: 0;
            top: 43px;
        }
        #ddoli ul {
            border: 1px solid #ccc;
            border-top: none;
        }
        #ddoli ul li{
            cursor: pointer;
            width: 105px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            background: #ffffff;
            color: #666;
            font-size: 14px;
            border-top: 1px solid #ccc;
            font-weight: 100;
        }
        #ddoli ul li:hover{
            background: #24a1ee;
            color: #ffffff;
        }
        .contener .admlistbox{
            height: auto;
            padding-bottom: 25px;
        }
    </style>
</head>
<body ng-init="sysa=false;basea=true;contenta=true;producta=true;ordera=true;membera=true;adva=true;pagefoota=true;keya=true;allnava=true;adma=false;
newsa=true;aticalea=true;consulta=true;allordera=true;myevaluatea=true;fosa=true;videoadva=true;subjecta=true;deputynava=true">
<jsp:include page="/WEB-INF/jsp/comm/top.jsp"/>
<div class="contener" style="overflow: hidden">
    <jsp:include page="/WEB-INF/jsp/comm/left.jsp"/>
    <div class="contentbox">
        <div class="top">
            <img src="${ctx}/static/background/images/FZ.png" alt="">
            <span>当前位置</span>
            <span>></span>
            <a href="${ctx}/admin/administrator"> <span>系统管理</span></a>
            <span>></span>
            <span>系统管理员设置</span>
        </div>
        <div class="inner" style="height: 430px">
            <div class="title">&nbsp;&nbsp;&nbsp;&nbsp;管理员设置</div>
            <div class="admbox">
                <div class="left">
                </div>
                <div class="right">
                    <div>系统管理员</div>
                    <p>系统管理员作为对峰程7080会员体验网站系统最高等级的管理员，具有对网站系统(系统管理、内容管理、产品管理、订单管理、会员管理、广告管理、关键词管理、页脚管理)等所有功能进行添加、修改、编辑、删除、保存、取消等一系列操作，此管理员一般设置以网站负责人、项目负责人才会设置该账号等级。</p>
                    <div>运营管理员</div>
                    <p>系统管理员作为对峰程7080会员体验网站系统最高等级的管理员，具有对网站系统(内容管理、产品管理、订单管理、会员管理、广告管理)等所有功能进行添加、修改、编辑、删除、保存、取消等一系列操作，此管理员一般设置以网络主管、运营主管才会设置该账号等级。</p>
                    <div>普通管理员</div>
                    <p>系统管理员作为对峰程7080会员体验网站系统最高等级的管理员，具有对网站系统(内容管理、产品管理、订单管理)等所有功能进行添加、修改、编辑、删除、保存、取消等一系列操作，此管理员一般设置以助理才会设置该账号等级。</p>
                    <div>编辑管理员</div>
                    <p>系统管理员作为对峰程7080会员体验网站系统最高等级的管理员，具有对网站系统(内容管理、产品管理)等所有功能进行添加、修改、编辑、删除、保存、取消等一系列操作，此管理员一般设置以编辑才会设置该账号等级。</p>
                </div>
            </div>
        </div>
        <div class="adm-list"></div>
    </div>
    <div class="admlistbox">
        <table class="admtable">
            <thead>
            <tr>
                <th style="width: 107px">序号</th>
            <th style="border-left:1px solid #2090cc;width: 110px">账号</th>
            <th style="border-left:1px solid #2090cc;width: 127px;">账号等级</th>
                <th style="position: relative;width: 117px;text-align: center">
                    <div class="ddo" id="Selected"><span>权限</span>&nbsp;<img src="${ctx}/static/background/images/adm_icon.png" alt="下拉"></div>
                    <div style="display: none" id="ddoli">
                        <ul>
                            <li style="border-top: none">系统管理员</li>
                            <li>内容管理员</li>
                            <li>产品管理员</li>
                            <li>订单管理员</li>
                            <li>会员管理员</li>
                            <li>关键词管理员</li>
                            <li>页脚管理员</li>
                        </ul>
                    </div>
                </th>
            <th style="border-left:1px solid #2090cc;width: 96px">状态</th>
            <th style="border-left:1px solid #2090cc;width: 226px">登录IP</th>
            <th  style="border-left:1px solid #2090cc;width: 105px" >重设密码</th>
            <th  style="border-left:1px solid #2090cc;width: 92px"  >忘记密码</th>
                <th  style="border-left:1px solid #2090cc;width: 92px" >忘记账号</th>
            </tr>
            </thead>
            <tbody ng-init="m=false" id="show">
            <tr style="width: 980px;height: 5px"></tr>
            <tr style="height: 36px;background-color: #F4F4F4">
                <td><input type="checkbox" placeholder="" ng-checked="m">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1</td>
                <td>fengcheng</td>
                <td>系统管理员</td>
                <td>
                    系统管理员
                </td>
                <td>正常</td>
                <td>2017.06.18  登录IP  113.15.21.171</td>
                <td class="modbut passwordShow" style="color: #0D62F0" >重设密码</td>
                <td class="modbut" style="color: #EC2323" >忘记密码</td>
                <td class="modbut" style="color: #EC2323" >忘记账号</td>
            </tr>
            <tr style="height: 52px">
                <td><input type="checkbox" placeholder="" ng-checked="m">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2</td>
                <td>fengcheng</td>
                <td>系统管理员</td>
                <td>
                    系统管理员
                </td>
                <td>正常</td>
                <td>2017.06.18  登录IP  113.15.21.171</td>
                <td class="modbut passwordShow" style="color: #0D62F0" >重设密码</td>
                <td class="modbut" style="color: #EC2323" >忘记密码</td>
                <td class="modbut" style="color: #EC2323" >忘记账号</td>
            </tr>
            <tr style="height: 36px;background-color: #F4F4F4">
                <td><input type="checkbox" placeholder="" ng-checked="m">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3</td>
                <td>fengcheng</td>
                <td>系统管理员</td>
                <td>
                    系统管理员
                </td>
                <td>正常</td>
                <td>2017.06.18  登录IP  113.15.21.171</td>
                <td class="modbut" style="color: #0D62F0" >重设密码</td>
                <td class="modbut" style="color: #EC2323" >忘记密码</td>
                <td class="modbut" style="color: #EC2323" >忘记账号</td>
            </tr>
            <tr style="height: 52px;">
                <td><input type="checkbox" placeholder="" ng-checked="m">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4</td>
                <td>fengcheng</td>
                <td>系统管理员</td>
                <td>
                    系统管理员
                </td>
                <td>正常</td>
                <td>2017.06.18  登录IP  113.15.21.171</td>
                <td class="modbut" style="color: #0D62F0" >重设密码</td>
                <td class="modbut" style="color: #EC2323" >忘记密码</td>
                <td class="modbut" style="color: #EC2323" >忘记账号</td>
            </tr>
            <tr style="height: 52px">
                <td style="text-align: center"><input type="checkbox" placeholder="" ng-model="m">&nbsp;&nbsp;全选</td>
            </tr>
            </tbody>
        </table>
        <div class="admbtnbox">
            <button class="add" data-toggle="modal" data-target="#myModal" onclick="addAdmin()">添加</button>
            <button class="rev" style="margin: 0 30px 0 30px" id="modifyShow-x1" >修改</button>
            <button class="del" id="reset-show">删除</button>
        </div>
        <div class="pages">
            <input type="hidden" id="currentPage"/>
            <span id="totalNum">共1页</span>
            <span id="oldPage"  style="margin: 0 0 0 10px"><a href =javascript:void(null)>上一页</a></span>
            <span id="nextPage" style="margin: 0 0 0 16px"><a href =javascript:void(null)>下一页</a></span>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/jsp/comm/footer.jsp"/>
<script src="${ctx}/static/background/js/angular.min.js" type="text/javascript"></script>
</body>
</html>
<!--模态框 添加-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 100px">
    <div class="modal-dialog" >
        <div class="modal-content" style="width:543px;height: 444px; ">
            <div >
                <button type="button"  data-dismiss="modal"
                        aria-hidden="true" style="background: transparent;color: #009F43;border: 0;position: relative;left: 505px;top:1px;font-size:25px;">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>
            <div class="modal-body" style="margin-left: 30px;font-family: '微软雅黑',sans-serif;font-size: 14px;">
                <div>账号昵称<input id="addUserName" type="text" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 20px" placeholder="">
                </div>

                <p style="font-size: 12px;color:red;margin-left: 85px;">昵称设置只能以英文或数字两者结合</p>
                <div class="modal-body" style="margin-left: -15px;font-family: '微软雅黑',sans-serif;font-size: 14px;">
                    <div>账号密码<input id="addPassword" type="password" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 20px" placeholder="" onfocus="this.value=''" onblur="">
                    </div>
                <div style="margin-top:10px;">账号等级
                    <label>
                        <select style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 15px;;color: #333;font-size: 16px;" id="addAdmin" >
                            <option>系统管理员</option>
                            <option>运营管理员</option>
                            <option>普通管理员</option>
                            <option>编辑管理员</option>
                        </select>
                    </label>
                </div>
                <div  style="margin: 20px 0">手机号码<input id="addPhoneNumber" type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 20px" value="例如：fengcheng" onfocus="this.value=''" onblur="if(this.value==''){this.value=' 例如：fengcheng'}">
                </div>
                <!--邮箱-->
                <div><span style="margin-left:-20px;">邮箱/e-mail</span><input id="addEmail" type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 20px" value="例如：fengcheng" onfocus="this.value=''" onblur="if(this.value==''){this.value=' 例如：fengcheng'}">
                </div>
                <div style="margin-top: 30px;width: 432px;height: 160px;">
                    <div style="width: 76px;height: 170px;float: left;">权&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;限</div>
                    <div style="float: left;width: 80px;font-size: 12px;"><input type="checkbox" placeholder=""  id="product"><span style="position: relative;top: -3px;"> 产品管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;"><input type="checkbox" placeholder=""  id="system"><span style="position: relative;top: -3px;"> 系统管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;"><input type="checkbox" placeholder=""  id="vip"><span style="position: relative;top: -3px;"> 会员管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;"><input type="checkbox" placeholder=""  id="key"><span style="position: relative;top: -3px;"> 关键词管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;line-height: 50px"><input type="checkbox" placeholder=""  id="content"><span style="position: relative;top: -3px;"> 内容管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;line-height: 50px"><input type="checkbox" placeholder=""  id="order"><span style="position: relative;top: -3px;"> 订单管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;line-height: 50px"><input type="checkbox" placeholder=""  id="advertising"><span style="position: relative;top: -3px;"> 广告管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;line-height: 50px"><input type="checkbox" placeholder=""  id="footer"><span style="position: relative;top: -3px;"> 页脚管理</span></div>
                    </div>
                </div>
                <div style="position: absolute;top: 370px;left: 130px;">
                    <button   style="width:100px;height: 25px;background: #24a1e4; color: #fff;border: 0;" onclick="addSubmit()">
                        提交
                    </button>
                    <button type="reset"
                            data-dismiss="modal" style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;margin-left: 15px;">
                        取消
                    </button>
                </div>
            </div>
            <!-- /.modal-content --><!--内容-->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>


<!--模态框 修改-->
<div    id="modify-x1" style="display: none">

    <div style="width:542px;height: 444px; ">

        <div  style="width:542px;height: 444px;background: white;    position: fixed;top: 10%;left: 33%;z-index: 2 ">
            <div >
                <button type="button"   style="background: transparent;color: #009F43;border: 0;position: relative;left: 505px;top:1px;font-size:25px;" id="modifyHide-x1">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>
            <div style="margin-left: 55px;font-family: '微软雅黑',sans-serif;font-size: 14px;" >
                <div>账号昵称<input id="updateName" type="text" style="width: 270px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 20px" placeholder="">
                </div>
                <p style="font-size: 12px;color:red;margin-left: 85px;">昵称一旦设定不可修改</p>
                <div style="margin-top:10px;color: #333;font-size: 16px;">账号等级
                    <label>
                    <select id="updateAdmin" style="width: 270px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 7px;;color: #333;font-size: 16px;" >
                        <option>系统管理员</option>
                        <option>运营管理员</option>
                        <option>普通管理员</option>
                        <option>编辑管理员</option>
                    </select>
                    </label>
                    <span style="color: red">可修改账号等级</span></div>
                <div  style="margin: 20px 0">手机号码<input id="updatePhone" type="text" placeholder="" style="width: 270px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 20px" >
                    <span style="color: red">可修改</span></div>
                <!--邮箱-->
                <div><span style="margin-left:-20px;">邮箱/e-mail</span><input id="updateEmail" type="text" placeholder="" style="width: 270px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 20px">
                    <span style="color: red">可修改</span></div>
                <div style="margin-top: 30px;width: 432px;height: 160px;">
                    <div style="width: 76px;height: 170px;float: left;">权&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;限</div>
                    <div style="float: left;width: 80px;font-size: 12px;"><input id="upSystem" type="checkbox" placeholder=""><span style="position: relative;top: -3px;"> 系统管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;"><input id="upProduct" type="checkbox" placeholder=""><span style="position: relative;top: -3px;"> 产品管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;"><input id="upVip" type="checkbox" placeholder=""><span style="position: relative;top: -3px;"> 会员管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;"><input id="upKey" type="checkbox" placeholder=""><span style="position: relative;top: -3px;"> 关键词管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;line-height: 50px"><input id="upContent" type="checkbox" placeholder=""><span style="position: relative;top: -3px;"> 内容管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;line-height: 50px"><input id="upOrder" type="checkbox" placeholder=""><span style="position: relative;top: -3px;"> 订单管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;line-height: 50px"><input id="upAdvertising" type="checkbox" placeholder=""><span style="position: relative;top: -3px;"> 广告管理</span></div>
                    <div style="float: left;width: 80px;font-size: 12px;line-height: 50px"><input id="upFooter" type="checkbox" placeholder=""><span style="position: relative;top: -3px;"> 页脚管理</span></div>
                    </div>
                </div><span style="font-size: 12px;color:red;position: relative;top: -97px;left: 215px;width: 180px;line-height: 28px">可以修改账号权限</span>
                <div style="position: absolute;top: 355px;left: 130px;">
                    <button onclick="updateSubmit()" style="width:100px;height: 25px;background: #24a1e4; color: #fff;border: 0;">
                        提交
                    </button>
                    <input type="reset"
                             style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;margin-left: 15px;" value="取消">
                </div>
            </div>
            <!-- /.modal-content --><!--内容-->
        </div><!-- /.modal-dialog -->
    <div style="width: 100%;height: 1000px;background: rgba(0,0,0,0.5);position:fixed;left: 0;top:0;z-index: 1"></div>
    </div><!-- /.modal -->


<%--删除提示--%>


<!--模态框 重设密码-->

    <div  id="password-p11" style="display: none;position: fixed;top: 15%;left: 33%;z-index: 2">
        <div class="modal-content" style="width:523px;height: 444px; ">

            <div >
                <button type="button"   style="background: transparent;color: #009F43;border: 0;position: relative;left: 486px;font-size:25px;" id="passwordHide">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>
            <form>
            <div class="modal-body" style="margin-left: 45px;font-family: '微软雅黑',sans-serif;font-size: 14px;">
                <div><span style="letter-spacing: 9.5px;">账号昵称</span><input type="text" placeholder="" style="color: #666;width: 280px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 10px" name="loginName" id="loginName">
                </div>
                <div style="margin-top: 44px;color: #666"><span style="letter-spacing:20px;">原密码</span><input type="password" placeholder="" style="width: 280px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 2px" id="password">
                    <p style="font-size: 12px;margin-left: 110px;color: red;">可填写原密码也可以不填写原密码</p>
                </div>
                <div style="margin-top: 30px;"><span>请输入新密码</span><input type="password" placeholder="" style="color: #666;width: 280px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 20px" id="newpwd" name="newpwd">
                </div>
                <div style="margin-top: 44px;"><span>再次确认密码</span><input type="password" placeholder="" style="color: #666;width: 280px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 20px" id="repassword" name="repassword">
                </div>
                <div style="position: absolute;top: 320px;left: 105px;">
                    <button style="width:100px;height: 25px;background: #24a1e4; color: #fff;border: 0;" id="hand">
                        提交
                    </button>
                    <button type="reset" style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;margin-left: 15px;" >
                        取消
                    </button>
                </div>

            </div>
            <!-- /.modal-content --><!--内容-->
            </form>
        </div><!-- /.modal-dialog -->
        <div style="position: fixed;left:0;top:0;z-index: -1;width: 100%;height: 1500px;background: rgba(0,0,0,0.5)"></div>
    </div><!-- /.modal -->


<!--忘记密码模态框 -->
    <div id="forget-password" style="display: none;position: fixed;top: 15%;left: 33%;z-index: 2">
        <div class="modal-content" style="width:523px;height: 488px; ">
            <div >
                <button type="button" id="forget-password-h" style="background: transparent;color: #009F43;border: 0;position: relative;left: 486px;font-size:25px;">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>

            <div class="wrap">
                <div  class="left-Promise">
                    <div style="background: white;width: 155px;height: 50px" class="blist clearfix">
                        <span class="active li" style="margin: 0 0 0 120px">账号</span>
                        <span class="li" style="margin: -33px 0 0 260px">邮箱</span>
                    </div>
                </div>


                <form action="" method="post" id="pwdform">
                <div class="modal-body" style="margin-left: 18px;font-family: '微软雅黑',sans-serif;font-size: 14px;">
                        <div class="blsit-list">
                            <div  class="li">
                                <div>账 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号<input type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 18px" name="userName" class="userName" ></div>
                        <div style="margin: 15px 0">手&nbsp;&nbsp; 机&nbsp;&nbsp; 账&nbsp;&nbsp; 号<input  type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 18px" name="phone" id="phone">
                </div>
                <div style="color: #ccc;clear: both"><input type="text" placeholder="" style="float: left;width: 134px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 111px" name="code">
                    <input type="button" class="bt-1 bt" id="pyzm" style="padding-top: 3px;" value="获取验证码" ><span style="margin-left: 8px">请手动刷新一下</span></div>
                                <div style="margin-top:10px;clear: both "><p style="width: 112px;height: 60px;position: relative;top: 13px;">联系系统管理员</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">如果账号不是系统管理员密码忘记可直接联系系统管理员系统管理员拥有系统八大功能操作及管理权限，可通过删除或者修改，新建等措施，找回密码。</p>
                                </div>
                                <div style="margin-top:10px; "><p style="width: 112px;height: 60px;position: relative;top: 13px;letter-spacing:2.7px;">人工找回密码</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">
                                    技术支持<br>
                                    联系人名称：峰程<br>
                                    联系QQ：1312003765<br>
                                    联系电话：0771-430-0785</p>
                                </div>
                                <div style="position: absolute;top: 350px;left: 130px;">
                                    <input type="button"  style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;text-align: center;cursor: pointer" value="提交" id="forgetpwd">

                                    <input type="reset"
                                           style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;margin-left: 15px;" value="取消">

                                </div>



                            </div>
                          <div  style="display: none" class="li">
                              <div>账 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号<input type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 18px" name="userNames" ></div>
                <div style="margin: 15px 0;float: left">邮箱 &nbsp;&nbsp;&nbsp;&nbsp;e-mail<input  type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 20px" name="email" id="email">
                </div>
                <div style="color: #ccc;clear: both"><input type="text" placeholder="" style="float: left;width: 134px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 111px" name="e-code"><input class="bt-1 bt" id="eyzm" style="padding-top: 3px;" value="获取验证码" placeholder="">  <span style="margin-left: 8px">请手动刷新一下</span></div>

                              <div style="margin-top:10px;clear: both "><p style="width: 112px;height: 60px;position: relative;top: 13px;">联系系统管理员</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">如果账号不是系统管理员密码忘记可直接联系系统管理员系统管理员拥有系统八大功能操作及管理权限，可通过删除或者修改，新建等措施，找回密码。</p>
                              </div>
                              <div style="margin-top:10px; "><p style="width: 112px;height: 60px;position: relative;top: 13px;letter-spacing:2.7px;">人工找回密码</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">
                                  技术支持<br>
                                  联系人名称：峰程<br>
                                  联系QQ：1312003765<br>
                                  联系电话：0771-430-0785</p>
                              </div>
                              <div style="position: absolute;top: 350px;left: 130px;">
                                  <input type="button"  style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;text-align: center;cursor: pointer" value="提交" id="forgetpswd">

                                  <input type="reset"
                                         style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;margin-left: 15px;" value="取消">
                              </div>
                </div>
                 </div>
            </div>
                </form>

            </div>
            <!-- /.modal-content --><!--内容-->

        </div><!-- /.modal-dialog -->
        <div style="position: fixed;left:0;top:0;z-index: -1;width: 100%;height: 1500px;background: rgba(0,0,0,0.5)"></div>
    </div><!-- /.modal -->


<!--模态框 忘记账号-->

    <div class="modal-dialog" id="forget-user"  style="display: none;position: fixed;top: 15%;left: 33%;z-index: 2">
        <div class="modal-content" style="width:523px;height: 488px; ">
            <div >
                <button type="button"  id="forget-user-h" style="background: transparent;color: #009F43;border: 0;position: relative;left: 486px;font-size:25px;">
                    <img src="${ctx}/static/background/images/admbutton.png" alt="">
                </button>
            </div>

            <div class="wrap">
                <div   class="left-Promise">
                    <div style="background: white;width: 155px;height: 50px" class="blist clearfix">
                        <span class="active li" style="margin: 0 0 0 120px">账号</span>
                        <span class="li" style="margin: -33px 0 0 260px">邮箱</span>
                    </div>
                </div>


            <form action="" method="post" id="forgetUserform">
            <div class="modal-body" style="margin-left: 18px;font-family: '微软雅黑',sans-serif;font-size: 14px;">

                <div class="blsit-list">
                    <div  class="li">
                <div style="margin: 15px 0">手&nbsp;&nbsp; 机&nbsp;&nbsp; 账&nbsp;&nbsp; 号<input type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 18px" name="phonenumber"  id="phonenumber">
                </div>
                <div style="color: #ccc;clear: both"><input type="text" placeholder="" style="float: left;width: 134px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 111px" name="phonecode"><input type="button" class="bt-1 bt" id="phoneyzm" value="获取验证码" >  <span style="margin-left: 8px">请手动刷新一下</span></div>

                        <div style="margin-top:10px;clear: both "><p style="width: 112px;height: 60px;position: relative;top: 13px;">联系系统管理员</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">如果账号不是系统管理员密码忘记可直接联系系统管理员系统管理员拥有系统八大功能操作及管理权限，可通过删除或者修改，新建等措施，找回密码。</p>
                        </div>
                        <div style="margin-top:10px; "><p style="width: 112px;height: 60px;position: relative;top: 13px;letter-spacing:2.7px;">人工找回密码</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">
                            技术支持<br>
                            联系人名称：峰程<br>
                            联系QQ：1312003765<br>
                            联系电话：0771-430-0785</p>
                        </div>

                        <div style="position: absolute;top: 330px;left: 130px;">
                            <input type="button" style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;" value="提交" id="forgetUser"/>
                            <input type="reset"
                                   data-dismiss="modal" style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;margin-left: 15px;" value="取消">

                        </div>



                    </div>




     <div  class="li" style="display: none">
                        <div style="margin: 15px 0;float: left">邮箱 &nbsp;&nbsp;&nbsp;&nbsp;e-mail<input type="text" placeholder="" style="width: 332px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 20px" name="emails" id="emails">
                </div>
                <div style="color: #ccc;clear: both"><input type="text" placeholder="" style="float: left;width: 134px;height: 25px;border-radius: 4px;border: 1px #ccc solid; margin-left: 111px" name="emailcode"><input type="button" class="bt-1 bt" id="emailyzm" value="获取验证码" > <span style="margin-left: 8px">请手动刷新一下</span></div>

         <div style="margin-top:10px;clear: both "><p style="width: 112px;height: 60px;position: relative;top: 13px;">联系系统管理员</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">如果账号不是系统管理员密码忘记可直接联系系统管理员系统管理员拥有系统八大功能操作及管理权限，可通过删除或者修改，新建等措施，找回密码。</p>
         </div>
         <div style="margin-top:10px; "><p style="width: 112px;height: 60px;position: relative;top: 13px;letter-spacing:2.7px;">人工找回密码</p><p style="width: 342px;height: 60px;display: block;margin-left: 115px;margin-top: -60px;font-size: 12px;line-height: 22px">
             技术支持<br>
             联系人名称：峰程<br>
             联系QQ：1312003765<br>
             联系电话：0771-430-0785</p>
         </div>

         <div style="position: absolute;top: 330px;left: 130px;">
             <input type="button" style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;text-align: center;cursor: pointer" id="forgetUsers" value="提交">
             <input type="reset"
                    data-dismiss="modal" style="width: 100px;height: 25px;background: #24a1e4; color: #fff;border: 0;margin-left: 15px;" value="取消">

         </div>


     </div>

 </div>


            </div>
            <!-- /.modal-content --><!--内容-->
            </form>
        </div><!-- /.modal-dialog -->
        <div style="position: fixed;left:0;top:0;z-index: -1;width: 100%;height: 1500px;background: rgba(0,0,0,0.5)"></div>
    </div><!-- /.modal -->



<%--删除提示--%>
<div id="reset-p1" style="width: 100%; height: 100%; background: rgba(0, 0, 0, 0.3); position: fixed; top: 0; left: 0; display: none;">
    <div style="width: 476px;height: 427px;background:white;position: fixed;top: 28%;left: 40%;border-radius: 4px">
        <img src="${ctx}/static/background/images/index-delete.jpg" alt="" width="454" height="233" style="margin:50px 0 0 16px">
        <div style="height: 10px"></div>
        <button id="reset-hide" style="width: 128px;height: 36px; border: 1px solid #ccc;margin: 28px 0 0 85px;background: #fff;border-radius: 2px">取消删除</button>
        <button id="delete" style="background: #1994d3;color: white;width: 128px;height: 36px;border: 0;margin: 28px 0 0 35px;border-radius: 2px">确定删除</button>
    </div>
</div>



<script type="text/javascript">


    function showLi(){
        $("#ddoli").show();
    }
    function hideLi(){
        $("#ddoli").hide();
    }
    $(document).ready(function() {
        $("#Selected").click(function(){
            if("block" == $("#ddoli").css("display")){
                hideLi();
            }else{
                showLi();
            }
        });

        $("#ddoli>ul>li").each(function(i,v){
            $(this).click(function(){
                $("#Selected>span").html($(this).html());
                hideLi();
            });
        });

        $("#Selected").blur(function(){
            hideLi();
        });
        $(".passwordShow").click(function () {
            $("#password-p11").show();

        });
        $("#passwordHide").click(function () {
            $("#password-p11").hide();
        });

    });
    $(document).ready(function() {
        // 忘记密码
        $("#forget-password-h").click(function () {
            $("#forget-password").hide();
        });
        $(".forget-password-s").click(function () {
            $("#forget-password").show();
        })
    });
    $(document).ready(function() {
        // 忘记账号
        $("#forget-user-h").click(function () {
            $("#forget-user").hide();
        });
        $(".forget-user-s").click(function () {
            $("#forget-user").show();
        })
    })
</script>
<script src="${ctx}/static/background/js/jquery-3.2.1.js" type="text/javascript"></script>
<script type="text/javascript">
    var userObj;
    var totalNum;
    $(document).ready(function(){
        $("#currentPage").val(1);
        });
        $.ajax({
            url : '${ctx}/admin/showUser',
            type : 'POST',
            data :"",
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data){
                if(data!=null){
                    userObj=data.userList;
                    totalNum=data.totalNum;
                    $("#totalNum").text("共"+totalNum+"页");
                    showUserInfo(userObj,totalNum,1);
                }
            }
        });

    function showUserInfo(userObj,totalNum,currentPage){
        $("#show").empty();
        $("#show").append("<tr style=\"width: 980px;height: 5px\"></tr>");
        var i=(currentPage-1)*5;
        if(totalNum==currentPage){
            for( i;i<userObj.length;i++){
                var j=i+1;
                var row="<tr style=\"height: 36px;background-color: #F4F4F4\">" +
                    " <td><input type=\"checkbox\" placeholder=\"\" value=\""+userObj[i].loginName+"\" ng-checked=\"m\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+j+"</td>" +
                    " <td>"+userObj[i].loginName+"</td>" +
                    " <td>"+userObj[i].level+"</td>" +
                    " <td>"+userObj[i].power+"</td>" +
                    " <td>"+userObj[i].state+"</td>" +
                    " <td>"+userObj[i].ip+"</td>" +
                    " <td class=\"passwordShow\" style=\"color: #0D62F0\" ><input type=\"hidden\">重设密码</td>"+
                    " <td class=\"forget-password-s\" style=\"color: #EC2323\" ><input type=\"hidden\">忘记密码</td>" +
                    " <td class=\"forget-user-s\" style=\"color: #EC2323\" ><input type=\"hidden\">忘记账号</td>" +
                    " </tr>";
                $("#show").append(row);
            }
        }else if(totalNum!=currentPage &&totalNum>currentPage){
            var end=i+5;
            for( i;i<end;i++){
                var j=i+1;
                var row="<tr style=\"height: 36px;background-color: #F4F4F4\">" +
                    " <td><input type=\"checkbox\" placeholder=\"\" value=\""+userObj[i].loginName+"\" ng-checked=\"m\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+j+"</td>" +
                    " <td>"+userObj[i].loginName+"</td>" +
                    " <td>"+userObj[i].level+"</td>" +
                    " <td>"+userObj[i].power+"</td>" +
                    " <td>"+userObj[i].state+"</td>" +
                    " <td>"+userObj[i].ip+"</td>" +
                    " <td class=\"passwordShow\" style=\"color: #0D62F0\" ><input type=\"hidden\">重设密码</td>" +
                    " <td class=\"forget-password-s\" style=\"color: #EC2323\" ><input type=\"hidden\">忘记密码</td>" +
                    " <td class=\"forget-user-s\" style=\"color: #EC2323\"><input type=\"hidden\"/>忘记账号</td>" +
                    " </tr>";
                $("#show").append(row);
            }
        }
        for(var j=1;j<=$("#show").find("tr").length ;j++){
            if(j%2!=0){
                $("#show").find("tr:eq("+j+")").css("background-color","#cccccc");
            }else{
                $("#show").find("tr:eq("+j+")").css("background-color","#fffaff");
            }
        }
        $(".pages").find(".page").empty();
        $("#nextPage").before("<span class=\"page\">" + currentPage + "</sqan>");
        $(".page").css("color","red");
    }
    //上一页
    $("#oldPage").click(function () {
        var currentPage= $("#currentPage").val();  //取当前页码
        var nextPage=currentPage-1;               //上一页的数
        if(currentPage>1){
            $("#currentPage").val(nextPage);
            showUserInfo(userObj,totalNum,nextPage)
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
            showUserInfo(userObj,totalNum,nextPage)
        }else if(currentPage==totalNum){
            alert("已经是最后一页了。");
        }
    });
    //------------------------------------添加
    $("#addAdmin").change(function(){
        selectPermissions();
    });
    function addSubmit() {
        $("#clickId").is(':checked');
        $.ajax({
            url : '${ctx}/admin/addUser',
            type : 'POST',
            data :"addUserName="+$("#addUserName").val()+"&addPassword="+$("#addPassword").val()+"&addAdmin="+$("#addAdmin").val()+"&addPhoneNumber="+$("#addPhoneNumber").val()
            +"&addEmail="+$("#addEmail").val()+"&system="+$("#system").is(':checked') +"&product="+$("#product").is(':checked') +"&vip="+$("#vip").is(':checked')+"&footer="+$("#footer").is(':checked')
            +"&key="+$("#key").is(':checked') +"&content="+$("#content").is(':checked')+"&order=" +$("#order").is(':checked')+"&advertising=" +$("#advertising").is(':checked'),
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data){
                if(data!=null){
                  alert(data[0]);
                  if(data[0]=="添加成功"){
                     var url= window.location.href;
                     window.location.href=url;

                  }
                }
            }
        });
    }
    function addAdmin() {
        selectPermissions();
    }
    function selectPermissions(){
        if($("#addAdmin").val()=="系统管理员"){
            $("#system").prop("checked",true);
            $("#product").prop("checked",true);
            $("#vip").prop("checked",true);
            $("#key").prop("checked",true);
            $("#content").prop("checked",true);
            $("#order").prop("checked",true);
            $("#advertising").prop("checked",true);
            $("#footer").prop("checked",true);
        }
        if($("#addAdmin").val()=="运营管理员"){
            $("#system").prop("checked",true);
            $("#product").prop("checked",true);
            $("#vip").prop("checked",true);
            $("#key").prop("checked",false);
            $("#content").prop("checked",false);
            $("#order").prop("checked",true);
            $("#advertising").prop("checked",false);
            $("#footer").prop("checked",false)
        }
        if($("#addAdmin").val()=="普通管理员"){
            $("#system").prop("checked",true);
            $("#product").prop("checked",true);
            $("#vip").prop("checked",true);
            $("#key").prop("checked",false);
            $("#content").prop("checked",false);
            $("#order").prop("checked",false);
            $("#advertising").prop("checked",false);
            $("#footer").prop("checked",false)
        }
        if($("#addAdmin").val()=="编辑管理员"){
            $("#system").prop("checked",true);
            $("#product").prop("checked",true);
            $("#vip").prop("checked",false);
            $("#key").prop("checked",false);
            $("#content").prop("checked",false);
            $("#order").prop("checked",false);
            $("#advertising").prop("checked",false);
            $("#footer").prop("checked",false);
        }
    }
//-------------------------------------------------------删除
    var userList=[];
    $("#reset-hide").click(function(){
        $("#reset-p1").hide();
    });
    $("#reset-show").click(function() {
        var checkboxAll=$("#show").find("input:checkbox:checked");
        if(checkboxAll==null || checkboxAll.length<1){
            alert("请选择一行");
            return ;
        }
        if(checkboxAll.length>0){
            var userName;
            for(var i=0;i<checkboxAll.length;i++){
                userName= checkboxAll[i].value;
                userList.push(userName);
            }
        }
        $("#reset-p1").show();
    });
    $("#delete").click(function(){
        $.ajax({
            url : '${ctx}/admin/deleteUser',
            type : 'POST',
            data : "userList="+userList,
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                 if(data!=null){
                     alert(data[0]);
                     var url= window.location.href;
                     window.location.href=url;
                 }
            }
        });
    });
    //--------------------------------------修改

        $("#modifyHide-x1").click(function(){

            $("#modify-x1").hide();
        });
        $("#modifyShow-x1").click(function(){
           var checkboxAll=$("#show").find("input:checkbox:checked");
            if(checkboxAll==null || checkboxAll.length<1){
                alert("请选择一行");
                return ;
            }else if(checkboxAll.length>1){
                alert("请选择一行");
                return ;
            }
            $("#updateName").val(checkboxAll[0].value);
            $.ajax({
                url : '${ctx}/admin/findUser',
                type : 'POST',
                data : "loginName="+ $("#updateName").val(),
                async:true,
                cache:false,
                dataType : 'json',
                success : function(data) {
                    if(data!=null&&data.length>0){
                     $("#updateEmail").val( data[0].email);
                        $("#updatePhone").val(data[0].phonenumber);
                        $("#updateAdmin").val(data[0].level);
                        showPermissions(data[0].permissions);
                        $("#modify-x1").show();
                    }
                }
            });
        });

    function updateSubmit(){
       $.ajax({
            url : '${ctx}/admin/updateUser',
            type : 'POST',
            data : "loginName="+$("#updateName").val()+"&phonenumber="+$("#updatePhone").val()+"&email="+$("#updateEmail").val()+"&level="+$("#updateAdmin").val() +
           "&system="+ $("#upSystem").is(':checked')+"&product="+ $("#upProduct").is(':checked')+"&vip=" +$("#upVip").is(':checked')+
        "&key="+$("#upKey").is(':checked')+"&content="+ $("#upContent").is(':checked')+ "&order="+$("#upOrder").is(':checked')+
        "&advertising="+$("#upAdvertising").is(':checked')+"&footer="+ $("#upFooter").is(':checked'),
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null){
                    alert(data[0]);
                    var url= window.location.href;
                    window.location.href=url;
                }
            }
        });
    }
    $("#updateAdmin").change(function(){
        if($(this).val()=="系统管理员"){
            $("#upSystem").prop("checked",true);
            $("#upProduct").prop("checked",true);
            $("#upVip").prop("checked",true);
            $("#upKey").prop("checked",true);
            $("#upContent").prop("checked",true);
            $("#upOrder").prop("checked",true);
            $("#upAdvertising").prop("checked",true);
            $("#upFooter").prop("checked",true);
        }
        if($(this).val()=="运营管理员"){
            $("#upSystem").prop("checked",true);
            $("#upProduct").prop("checked",true);
            $("#upVip").prop("checked",true);
            $("#upKey").prop("checked",false);
            $("#upContent").prop("checked",false);
            $("#upOrder").prop("checked",true);
            $("#upAdvertising").prop("checked",false);
            $("#upFooter").prop("checked",false)
        }
        if($(this).val()=="普通管理员"){
            $("#upSystem").prop("checked",true);
            $("#upProduct").prop("checked",true);
            $("#upVip").prop("checked",false);
            $("#upKey").prop("checked",false);
            $("#upContent").prop("checked",true);
            $("#upOrder").prop("checked",false);
            $("#upAdvertising").prop("checked",true);
            $("#upFooter").prop("checked",false)
        }
        if($(this).val()=="编辑管理员"){
            $("#upSystem").prop("checked",true);
            $("#upProduct").prop("checked",true);
            $("#upVip").prop("checked",false);
            $("#upKey").prop("checked",false);
            $("#upContent").prop("checked",false);
            $("#upOrder").prop("checked",false);
            $("#upAdvertising").prop("checked",false);
            $("#upFooter").prop("checked",false)
        }
    });
   function showPermissions(permissions) {
       if(permissions.system=="true"){
           $("#upSystem").prop("checked",true)
       }
       if(permissions.product=="true"){
           $("#upProduct").prop("checked",true)
       }
       if(permissions.vip=="true"){
           $("#upVip").prop("checked",true)
       }
       if(permissions.key=="true"){
           $("#upKey").prop("checked",true)
       }
       if(permissions.content=="true"){
           $("#upContent").prop("checked",true)
       }
       if(permissions.order=="true"){
           $("#upOrder").prop("checked",true)
       }
       if(permissions.advertising=="true"){
           $("#upAdvertising").prop("checked",true)
       }
       if(permissions.footer=="true"){
           $("#upFooter").prop("checked",true)
       }
   }
    $("#hand").click(function () {
        $.ajax({
            url : '${ctx}/admin/changepwd',
            type : 'POST',
            data : "newpwd="+$("#newpwd").val()+"&repassword="+$("#repassword").val()+"&loginName="+$("#loginName").val(),
            async:true,
            cache:false,
            dataType : 'json',
            success : function(data) {
                if(data!=null){
                    alert(data[0]);
                }
            }
        });
    });

    //    手机/邮箱验证
    $("#phone").blur(function(){
        var phoneber = $("#phone") .val();
        if(!(/^1(3|4|5|7|8)\d{9}$/.test(phoneber))){
            $("#pyzm").attr("disabled","true");
            $(this).addClass("err");
            alert("手机号码格式错误,请重新填写");
        }else{
            $("#pyzm").removeAttr("disabled");
            $(this).removeClass("err");
        }
    });

    $("#email").blur(function(){
        var emailber = $("#email") .val();
        if(!(/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/.test(emailber))){
            alert("邮箱格式错误，请重新填写");
            $(this).addClass("err");
            $("#eyzm").attr("disabled","true");
            return false;
        }
        else{
            $("#eyzm").removeAttr("disabled");
            $(this).removeClass("err");
        }
    });
    $("#phonenumber").blur(function(){
        var phoneber = $("#phonenumber") .val();
        if(!(/^1(3|4|5|7|8)\d{9}$/.test(phoneber))){
            $("#phoneyzm").attr("disabled","true");
            $(this).addClass("err");
            alert("手机号码格式错误,请重新填写");
        }else{
            $("#phoneyzm").removeAttr("disabled");
            $(this).removeClass("err");
        }
    });

    $("#emails").blur(function(){
        var emailber = $("#emails") .val();
        if(!(/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/.test(emailber))){
            alert("邮箱格式错误，请重新填写");
            $(this).addClass("err");
            $("#emailyzm").attr("disabled","true");
            return false;
        }
        else{
            $("#emailyzm").removeAttr("disabled");
            $(this).removeClass("err");
        }
    });

    <!--忘记密码手机验证码-->
    $("#pyzm").click(function () {
        var countdown = 60;
            settime(this);
            $.ajax({
                type: 'POST',
                url: ctx + '/admin/code',
                dataType: 'json',
                data: {"phone": $("#phone").val()},
                success: function (data) {
                    console.log(data);
                }
            });
        function settime(obj) {
            if(countdown == 0) {
                obj.removeAttribute("disabled");
                obj.value = "获取验证码";
                countdown = 60;
                return;
            } else {
                obj.setAttribute("disabled", true);
                obj.value = "重新发送(" + countdown + ")";
                countdown--;
            }
            setTimeout(function() {
                settime(obj)
            }, 1000)
        }
    });

    <!--忘记帐号手机验证码-->
    $("#phoneyzm").click(function () {
        var countdown = 60;
            settime(this);
            $.ajax({
                type: 'POST',
                url: ctx + '/admin/phonecode',
                dataType: 'json',
                data: {"phonenumber": $("#phonenumber").val()},
                success: function (data) {
                    console.log(data);
                }
            });
        function settime(obj) {
            if(countdown == 0) {
                obj.removeAttribute("disabled");
                obj.value = "获取验证码";
                countdown = 60;
                return;
            } else {
                obj.setAttribute("disabled", true);
                obj.value = "重新发送(" + countdown + ")";
                countdown--;
            }
            setTimeout(function() {
                settime(obj)
            }, 1000)
        }
    });

    <!--忘记密码邮箱验证码-->
    $("#eyzm").click(function () {
        var countdown = 60;
            settime(this);
            $.ajax({
                type: 'POST',
                url: ctx + '/admin/mailcode',
                dataType: 'json',
                data: {"email": $("#email").val()},
                success: function (data) {
                    console.log(data);
                }
            });
        function settime(obj) {
            if(countdown == 0) {
                obj.removeAttribute("disabled");
                obj.value = "获取验证码";
                countdown = 60;
                return;
            } else {
                obj.setAttribute("disabled", true);
                obj.value = "重新发送(" + countdown + ")";
                countdown--;
            }
            setTimeout(function() {
                settime(obj)
            }, 1000)
        }
    });

    <!--忘记帐号邮箱验证码-->
    $("#emailyzm").click(function () {
        var countdown = 60;
            settime(this);
            $.ajax({
                type: 'POST',
                url: ctx + '/admin/emailcode',
                dataType: 'json',
                data: {"emails": $("#emails").val()},
                success: function (data) {
                    console.log(data);
                }
            });
        function settime(obj) {
            if(countdown == 0) {
                obj.removeAttribute("disabled");
                obj.value = "获取验证码";
                countdown = 60;
                return;
            } else {
                obj.setAttribute("disabled", true);
                obj.value = "重新发送(" + countdown + ")";
                countdown--;
            }
            setTimeout(function() {
                settime(obj)
            }, 1000)
        }
    });

    <!--忘记密码-->
    $("#forgetpwd").click(function () {
        $.ajax({
            type: 'POST',
            url: ctx + '/admin/forgetpwd',
            dataType: 'json',
            data:$("#pwdform").serialize() ,
            success: function (data) {
                if (data.flag){
                    if (data.message){
                    alert("操作成功,请耐心等待系统给您发的短信");
                    send();
                    window.location.reload();
                }else {
                        alert("验证码错误");
                    }
                }else {
                    alert("没有这个账号");
                }
            }
        })
    });

    <!--忘记密码发送手机短信-->
    function send() {
        $.ajax({
            type: 'POST',
            url: ctx + '/admin/notice',
            dataType: 'json',
            data: {"phone": $("#phone").val()},
            success: function (data) {
                console.log(data);
            }
        })
    }

    <!--忘记密码-->
    $("#forgetpswd").click(function () {
        $.ajax({
            type: 'POST',
            url: ctx + '/admin/forgetpwd',
            dataType: 'json',
            data:$("#pwdform").serialize() ,
            success: function (data) {
                if (data.flag){
                    if(data.message){
                    alert("操作成功,请耐心等待系统给您发的邮件");
                    sendemail();
                    window.location.reload();
                }else {
                    alert("验证码错误");
                }
            }else {
                alert("没有这个账号");
            }
            }
        })
    });

    <!--忘记密码发送邮邮件通知-->
    function sendemail() {
        $.ajax({
            type: 'POST',
            url: ctx + '/admin/inform',
            dataType: 'json',
            data: {"email": $("#email").val()},
            success: function (data) {
                console.log(data);
            }
        })
    }

    <!--忘记帐号-->
    $("#forgetUser").click(function () {
        $.ajax({
            type: 'POST',
            url: ctx + '/admin/forgetnumber',
            dataType: 'json',
            data:$("#forgetUserform").serialize() ,
            success: function (data) {
                if (data.msg){
                    alert("操作成功,请耐心等待系统给您发的短信");
                    tip();
                    window.location.reload();
                }else {
                    alert("验证码错误");
                }
            }
        })
    });

    function tip() {
        $.ajax({
            type: 'POST',
            url: ctx + '/admin/lip',
            dataType: 'json',
            data: {"phonenumber": $("#phonenumber").val()},
            success: function (data) {
                console.log(data);
            }
        });
    }

    <!--忘记帐号-->
    $("#forgetUsers").click(function () {
        $.ajax({
            type: 'POST',
            url: ctx + '/admin/forgetnumber',
            dataType: 'json',
            data:$("#forgetUserform").serialize() ,
            success: function (data) {
                if (data.msg){
                    alert("操作成功,请耐心等待系统给您发的邮件");
                   inform();
                    window.location.reload();
                }else {
                    alert("验证码错误");
                }
            }
        })
    });

    function inform() {
        $.ajax({
            type: 'POST',
            url: ctx + '/admin/tip',
            dataType: 'json',
            data: {"emails": $("#emails").val()},
            success: function (data) {
                console.log(data);
            }
        });
    }


</script>
<script src="${ctx}/static/background/js/jquery-3.2.1.js" type="text/javascript"></script>
<%--切换--%>
<script type="text/javascript">
    $(function(){
        $(".blist").on("click",".li",function(){
            // 设index为当前点击
            var index = $(this).index();
            // 点击添加样式利用siblings清除其他兄弟节点样式
            $(this).addClass("active").siblings().removeClass("active");
            // 同理显示与隐藏
            $(this).parents(".wrap").find(".blsit-list .li").eq(index).show().siblings().hide();
        })
    })
</script>


