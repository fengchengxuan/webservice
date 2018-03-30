$(function() {

    $(".submit").click(function () {

        if (verify()) {

            $("form").attr('action', '/webca/addwebca');

        } else {

            return false;

        }
    });

    function verify() {
        if ($.trim($("input[name=title]").val()) == ''  ) {
            alert('标题不能为空!');
            return false;
        }else if ($("input[name=title]").val().length<10){
            alert("标题长度过短!");
            return false;
        }
        if ($.trim($("input[name=keywords]").val()) ==''){
            alert("关键词不能为空!");
            return false;
        }else if ($("input[name=keywords]").val().length<22){
            alert("关键词长度过短!");
            return false;
        }
        if ($.trim($("#description").val()) ==''){
            alert("描述不能为空!");
            return false;
        }else if($("#description").val().length<15){
            alert("描述过短!");
            return false;
        }
        alert("保存成功!");
        return true;
    }
});