$(function() {

    $(".hand").click(function () {

        if (validate()) {

            $("form").attr('action', '/User/adduser.action');

        } else {

            return false;

        }
    });

    function validate() {
        if ($.trim($("input[name=loginName]").val()) == '' || $.trim($("input[name=userName]").val())=="" ) {
            alert('不能全为空格!');
            return false;
        }
        return true;
    }
});