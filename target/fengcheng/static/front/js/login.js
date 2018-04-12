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
                if(data.msg){
                    if(data.message){
                        window.location.href = ctx+"/vip";
                    }else{
                        $("#login1124").html("登录失败！用户名或者密码错误!").css('border','1px solid red').css('background',' #ffebeb');
                        return false;
                    }
                }else {
                    alert("您已经登录过了");
                }
            } })
});

function key() {
    if(event.keyCode==13){
        document.getElementById("logins").click();
    }
}