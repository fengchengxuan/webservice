function myshow (formData){
    $.ajax({
        url: ctx+'/editvip',
        type: 'POST',
        data: formData,
        dataType: "json",
        cache: false,
        contentType: false,
        processData: false,
        success: function (data) {
            console.log(data);
            if (data.msg) {
            } else {
                alert("图片太大,无法上传");
            }
        }
    })
}

$(".save").click(function () {
	
	
	
	   var website=$("#web").val();
	var email = document.getElementById('email').value;
	var stablephone = document.getElementById('stablephone').value;
	var phone1 = document.getElementById('address').value;
	    var phone = document.getElementById('phonenumber').value;
	    if(!(/^1(3|4|5|7|8)\d{9}$/.test(phone))){
	    $('.phonenumber').html('手机号码有误，请重填');
	    return ;

	    }else if(phone==""){

	    $('.phonenumber').html('手机号码有误，请重填');
	    return ;
	    }
	    else if(stablephone==""){
	    $('.stablephone').html('电子邮箱不能为空');
	    return ;
	    }else if(!email.match(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/)){
	    $('.email').html('电子邮箱错误');
	    return ;
	    }
	    else if(email==""){
	    $('.email').html('电子邮箱不能为空');
	    return ;
	    }else if(!(/^((ht|f)tps?):\/\/[\w\-]+(\.[\w\-]+)+([\w\-\.,@?^=%&:\/~\+#]*[\w\-\@?^=%&\/~\+#])?$/.test(website))){
            //alert("");
            $('.website').html('请输入贵公司正确的网址');
            return ;
        }

	    
	    
	    
	  

	 
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	
    $.ajax({
        url: ctx+'/updateUserInfo',
        type: 'POST',
        data: "vipName="+$("#vipname").val()+"&phonenumber="+$("#phonenumber").val()+"&stablephone="+$("#stablephone").val()+
        "&email="+$("#email").val()+"&social="+$("#social").val()+"&companyname="+$("#companyname").val()+"&htype="+$("#htype").val()
        +"&ctype="+$("#ctype").val()+"&stype="+$("#stype").val()+"&web="+$("#web").val()+"&address="+$("#address").val(),
        dataType: "json",
        cache: false,
        success: function (data) {
            console.log(data);
            if (data.data) {
                if (data.flag) {
                    alert("设置成功!");
                    window.location.href = ctx + "/vips";
                } else {
                   alert("失败");
                }
            }else {
                alert("您还未登录!");
            }
        }
    })
});




