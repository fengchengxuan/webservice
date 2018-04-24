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





