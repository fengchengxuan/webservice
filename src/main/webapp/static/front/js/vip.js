    
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
    
    





