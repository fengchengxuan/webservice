<%@ page contentType="text/html;charset=UTF-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp"%>
<style>.footer .content .center{
    margin: 26px 0 0 0;
    height: 90px;
}
.last span{
    position: relative;
    top: -6px;
}
.footer .content .center div{
    height: 100px;
}
.footer .content .top div {
    margin-top: 10px;
}
.footer .content{
    height: auto;
}
</style>
<div class="footer" style="background: white;height: 180px">
    <div>
        <div class="content">
            <div class="top">
                <a href=""><div style="float: left">免责声明</div></a>
                <div class="cut">|</div>
                <a href=""><div>服务条款/隐私政策</div></a>
                <div class="cut">|</div>
                <a href=""><div>法律声明</div></a>
                <div class="cut">|</div>
                <a href=""><div style="float: right">建议/投诉/客服中心</div></a>
            </div>
            <div class="center">
                <div>友情链接</div>
                <div class="lianjie">
                    <a href="#"><img src="${ctx}/static/front/images/bgzj-logo.png" alt="" style="width: 56px"></a>
                    <a href="#" style="margin-left: 20px;"><img src="${ctx}/static/front/images/djgp-logo.png" alt="" style="width: 65px"></a>
                </div>
            </div>
            <div class="last">
                <div>
                    <a href="http://kexin.knet.cn/shenqing.html" target="_blank" rel="nofollow">
                        <span>可信网站</span>
                       <img src="${ctx}/static/front/images/bottom1.jpg" alt="">
                    </a>
                </div>
                <div>
                    <a href="http://kexin.knet.cn/shenqing.html" target="_blank" rel="nofollow">
                        <span  style="top:-8px">诚信信网站</span>
                        <a href="" rel="nofollow"><img src="${ctx}/static/front/images/bottom2.jpg" alt=""></a>
                    </a>
                </div>
                <div>
                    <a href="http://www.beianbeian.com/ " target="_blank" rel="nofollow">
                        <span>工信部ICP备案</span>
                        <img src="${ctx}/static/front/images/bottom1.jpg" alt="">
                    </a>
                </div>
                <div>
                    <a href="http://www.cyberpolice.cn/wfjb/ " target="_blank" rel="nofollow">
                        <span>网警</span>
                        <img src="${ctx}/static/front/images/bottom1.jpg" alt="">
                    </a>
                </div>
                <div >© 2017-2021 fengcheng7080.com 版权所有</div>
            </div>
        </div>
    </div>
</div>