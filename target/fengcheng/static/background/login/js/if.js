//设置cookie
function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + escape(cvalue) + "; " + expires;
}
//获取cookie
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) != -1){
            var cnameValue = unescape(c.substring(name.length, c.length));
            return cnameValue;
        }
    }
    return "";
}
//清除cookie
function clearCookie(cname) {
    setCookie(cname, "", -1);
}

$("#rememberMe").click(function(){

    if(this.checked){
        var checknum = "yes";
        $('#rememberMe').prop("checked",true);
        console.log(checknum);
        setCookie('customername', $('#username').val().trim(), 7);
        setCookie('checked', checknum.trim(), 7)
    }else {
        $('#rememberMe').prop("checked",false);
        var nul ="";
        var checknum = "no";
        console.log(checknum);

        setCookie('checked', checknum.trim(), 7)
    }


});

$(function(){

    //获取cookie
    var cusername = getCookie('customername');
//var cpassword = getCookie('customerpass');
    var cchecked = getCookie('checked');
    console.log(cchecked);
    console.log(cusername);
    if(cchecked=="yes"){
        $("#rememberMe").attr("checked","checked");
    }else if(cchecked=="no"){
        $("#rememberMe").removeAttr("checked");
    }

    if(cusername != ""  && cchecked == "yes"){
        $("#username").val(cusername);
        console.log(cusername);
    }else{
        $("#username").val("");
    }
});





//回车
function keyup(){
    if(event.keyCode==13){
        console.log(1);
        document.getElementById("login").click();
    }
}

$("#login").click(function(){
    $.ajax({
        url: ctx + '/admin/login',
        type: 'POST',
        data: $("#mainform").serialize(),
        dataType: 'json',
        async:true,
        cache:false,
        success: function (msg) {
            if(msg.msg){
                if (msg.data) {
                    window.location.href= ctx +"/admin/hyperchannel";
                } else {
                    alert("用户名或者密码错误");
                }
            }else{
                alert("您已经登录过了！");
            }
        }
    })
});


var code; //在全局定义验证码
//产生验证码
window.onload = function() {
    createCode();
};

function createCode() {
    code = "";
    var codeLength = 4; //验证码的长度
    var checkCode = document.getElementById("code1");
    var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
        'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //随机数
    for(var i = 0; i < codeLength; i++) { //循环操作
        var charIndex = Math.floor(Math.random() * 36); //取得随机数的索引
        code += random[charIndex]; //根据索引取得随机数加到code上
    }
    checkCode.value = code; //把code值赋给验证码
}
//校验验证码
function validate() {
    var inputCode = document.getElementById("input1").value.toUpperCase(); //取得输入的验证码并转化为大写

    var findNodes = document.getElementById("span").children;
    if(findNodes.length==0) {
        if (inputCode != code) { //若输入的验证码与产生的验证码不一致时
            var appdom = document.createElement("span");
            appdom.innerHTML = "验证码输入错误!";
            document.getElementById("span").appendChild(appdom);
            createCode(); //刷新验证码
            return false;
        }
    }
    else {
        var findNodes = document.getElementById("span").children;
        if (inputCode == code) {
            document.getElementById("span").removeChild(findNodes[0]);
        }
    }
}

