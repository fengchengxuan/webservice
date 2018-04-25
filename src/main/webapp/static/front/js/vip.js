    
    function myshow (){
    var formData = new FormData($("#myform")[0]);
    $.ajax({
        url: ctx+'/editvip',
        type: 'POST',
        data: formData,
        dataType: "json",
        cache: false,
        contentType: false,
        processData: true,
        success: function (msg) {
        	console.log("####################################"+msg);
        	alert("msg:"+msg);
            if (msg.data) {
            	window.location.href = ctx+"/vips";
            } else{
            	alert("图片太大或无法上传");
        	}
        }
    })
}
    
    function upload_profile(){
    	var formData = new FormData($("#profileForm")[0]);
	    $.ajax({
	        url: ctx+'/uploadProfile',
	        type: 'POST',
	        data: formData,
	        dataType: "json",
	        cache: false,
	        contentType: false,
	        processData: false,
	        success: function (msg) {
	            if (!msg.errMsg) {
	            
	            	$("#max").html("图片太大，请上传小于20kb的图片");
	            } else{
	            	window.location.href = ctx+"/vips";
	        	}
	        }
	    });
    }  
    
    

$(".save").click(function () {
	
	
	
	
	
	
	
	
	
	
	
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




