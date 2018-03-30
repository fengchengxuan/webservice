function verify() {
        if ($.trim($("input[name=statics]").val()) == ''  ) {
            alert('静态设置不能为空!');
            return false;
        }
        if ($.trim($("input[name=active]").val()) ==''){
            alert("动态设置不能为空!");
            return false;
        }
        if ($.trim($("input[name=definition]").val()) ==''){
            alert("网站名称不能为空!");
            return false;
        }
        if ($.trim($("input[name=certificate]").val()) ==''){
            alert("备案号不能为空!");
            return false;
        }
        if ($.trim($("input[name=copyright]").val()) ==''){
            alert("版权不能为空!");
            return false;
        }
        if ($.trim($("input[name=owner]").val()) ==''){
            alert("所有者不能为空!");
            return false;
        }
        alert("保存成功!");
        return true;
    }