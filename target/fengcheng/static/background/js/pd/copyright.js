$(".sub").click(function () {
    $.ajax({
        url: ctx +'/copyright/updatecopyright',
        type: 'POST',
        data: "webname="+$("#webname").val()+"&icp="+$("#icp").val()+"&copyrighted="+$("#copyrighted").val()+
        "&master="+$("#master").val(),
        dataType: "json",
        cache: false,
        success: function (data) {
            if (data.data) {
                if (data.flag) {
                    alert("设置成功!");
                    window.location.href = ctx + "/admin/copyright";
                } else {
                    alert("设置失败!");
                    return false;
                }
            }else {
                alert("您还未登录!");
            }
        }
    })
});
