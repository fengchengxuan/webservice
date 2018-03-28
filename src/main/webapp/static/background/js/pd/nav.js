$(function() {

    $(".save").click(function () {

        if (validate()) {

            $("form").attr('action', '/nav/addnav.html');

        } else {

            return false;

        }
    });

    function validate() {
        if ($.trim($("input[name=navname]").val()) == '') {
            $(".scatalog").html("副导航名称不能为空");
            return false;
        }
        if ($.trim($("input[name=navtitle]").val()) == ''  ) {
            $(".stitle").html("标题不能为空");
            return false;
        }else if ($("input[name=navtitle]").val().length<10 || $("input[name=navtitle]").val().length>80){
            $(".stitle").html("标题长度过短或长度过长!");
            return false;
        }
        if ($.trim($("input[name=keywords]").val()) ==''){
            $(".skeywords").html("关键词不能为空!");
            return false;
        }else if ($("input[name=keywords]").val().length<22 || $("input[name=keywords]").val().length>100){
            $(".skeywords").html("关键词长度过短或长度过长!");
            return false;
        }
        if ($.trim($("#description").val()) ==''){
            $(".sdescribe").html("描述不能为空!");
            return false;
        }else if($("#description").val().length<15 || $("#description").val().length>200 ){
            $(".sdescribe").html("描述过短或过长!");
            return false;
        }
        if ($.trim($("input[name=navurl]").val()) ==''){
            $(".surl").html("网址url不能为空!")
            return false;
        }
        alert("保存成功!");
        return true;
    }
});