$(".save").click(function(){

    if($("#oldpassword").val()==null || $("#oldpassword").val()=="" ) {
        //alert("");
        $("#qsrmm").html("请输入密码");

        return ;
    } else if($("#password").val()==null||$("#password").val()=="" ){
        //alert("");
        $("#qsrxmm").html("请输入新密码");

        return ;
    }
    else if($("#password").val()!=$("#repassword").val() ){
        $("#passd").html("您输入的新密码与确认密码确认不一致");

        return ;
    }
    else if($("#oldpassword").val()==$("#password").val() ){
        //alert("");
        $("#passd").html("新旧密码不能一样");
        return ;
    }
    $.ajax({
        url : ctx+'/findpwd',
        type : 'POST',
        data : "oldpassword="+$("#oldpassword").val()+"&password="+$("#password").val()+"&repassword="+$("#repassword").val(),
        async:true,
        cache:false,
        dataType : 'json',
        success : function(data){
            if(data!=null){
                alert(data[0]);
                window.location.href = ctx+"/pwd"
            }
        }})
});

$(function () {
    var aStr = ["弱", "中", "您的密码强度不错，定期更改密码会更安全哦", "密码很强势"];
    function checkStrong(val) {
    var modes = 0;
    if (val.length < 6) return 0;
    if (/\d/.test(val)) modes++; //数字
    if (/[a-z]/.test(val)) modes++; //小写
    if (/[A-Z]/.test(val)) modes++; //大写
    if (/\W/.test(val)) modes++; //特殊字符
    if (val.length > 20) return 4;
    return modes;
    };

    $("#repassword").keyup(function() {
    var val = $(this).val();
    var num = checkStrong(val);
    switch (num) {
    case 0:
    break;
    case 1:
    $("#tips span").css('color', 'red').text('').eq(num - 1).css('font-size', '12px').text(aStr[num - 1]);
    break;
    case 2:
    $("#tips span").css('color', 'red').text('').eq(num - 1).css('font-size', '12px').text(aStr[num - 1]);
    break;
    case 3:
    $("#tips span").css('color', 'red').text('').eq(num - 1).css('font-size', '12px').text(aStr[num - 1]);
    break;
    case 4:
    $("#tips span").css('color', 'red').text('').eq(num - 1).css('font-size', '12px').text(aStr[num - 1]);
    break;
    default:
    break;
    }
    })

    });

    var password=document.getElementById("password");
    password.onblur=function(){
    if((password.value).length!=0){
    reg=/(\w){6,20}/;
    if(!reg.test(password.value)){
    $("#qsrxmm1").html("密码不合法");
    return ;
    }
    else{
    $("#qsrxmm1").html("");
    }
    }
    };