$(".login").click(function (){
    var type;
    if($("#phonenumber").val().match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)){
         type = "1";
    }else{
        type = "0";
    }
        $.ajax({
            url : ctx+'/logs',
            type : 'POST',
            data :"user="+$("#phonenumber").val()+"&password="+$("#password").val()+"&type="+type,
            dataType : 'json',
            success : function(data) {
                if(!data.success){
                    if(data.unregister){
                    	alert("用户未注册，请先注册");
                    }else if(data.logined){
                    	alert("用户已登录");
                    } else  if(data.failed){
                        $("#login1124").html("登录失败！用户名或者密码错误!").css('border','1px solid red').css('background',' #ffebeb');
                        return false;
                    }
                }else {
                	window.location.href = ctx+"/New/vip";
                }
            } })
});

function key() {
    if(event.keyCode==13){
        document.getElementById("logins").click();
    }
}