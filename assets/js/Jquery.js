
   
   // Hàm xem paswourd
    isBool = true;
    function showHiden(i){
        if(isBool){
        	document.getElementById("txt_password").setAttribute("type","password");
            document.getElementById("eye").style.color='#959595';
                	isBool = false;
        }else{
            document.getElementById("txt_password").setAttribute("type","text");
            document.getElementById("eye").style.color='#FF9966';
                	isBool = true;

        }
    }
    // 
    isBool = true;
    function showHiden_moi(i){
        if(isBool){
        	document.getElementById("password_moi").setAttribute("type","password");
            document.getElementById("eye_moi").style.color='#959595';
                	isBool = false;
        }else{
            document.getElementById("password_moi").setAttribute("type","text");
            document.getElementById("eye_moi").style.color='#FF9966';
                	isBool = true;

        }
    }
    // 
    isBool = true;
    function showHiden_moi2(i){
        if(isBool){
        	document.getElementById("txt_xacNhanMatKhau").setAttribute("type","password");
            document.getElementById("eye_moi2").style.color='#959595';
                	isBool = false;
        }else{
            document.getElementById("txt_xacNhanMatKhau").setAttribute("type","text");
            document.getElementById("eye_moi2").style.color='#FF9966';
                	isBool = true;

        }
    }
    // 
    function checkName(){
        var name = document.getElementById('txt_name').value;
        var check_error_name = document.getElementById('error_name');
        var regexName = /^[^\d+]*[\d+]{0}[^\d+]*$/;
        if(name == "" || name == null){
            check_error_name.innerHTML = "Họ tên không được để trống !";
        }else if(!regexName.test(name)){
            check_error_name.innerHTML = "Họ tên không hợp lệ !";
        }else{
            check_error_name.innerHTML = "";
            return name;
        }
    }
    // Hàm check Phone
    function checkPhone(){
        var phone = document.getElementById('txt_phone').value;
        var check_error_phone = document.getElementById('error_phone');
        var regexPhone = /^\+?\d{1,3}?[- .]?\(?(?:\d{2,3})\)?[- .]?\d\d\d[- .]?\d\d\d\d$/;
        if(phone == "" || phone==null){
            check_error_phone.innerHTML = "Số điện thoại không được để trống !";
        }else if(!regexPhone.test(phone)){
            check_error_phone.innerHTML = "Định dạng số điện thoại không đúng !";
        }else{
            check_error_phone.innerHTML = "";
            return phone;
        }
   }
//    Hàm check Email
function checkEmail(){
    var email = document.getElementById('txt_email').value;
    var check_error_email = document.getElementById('error_email');
    var regexemail = /\b[A-Z0-9._%+-]+@(?:[A-Z0-9-]+\.)+[A-Z]{2,6}\b/i;
    if(email == "" || email==null){
        check_error_email.innerHTML = "Email không được để trống !";
    }else if(!regexemail.test(email)){
        check_error_email.innerHTML = "Định dạng email không đúng !";
    }else{
        check_error_email.innerHTML = "";
        return email;
    }
}
// check địa chỉ
function checkDiachi(){
        var diachi = document.getElementById('txt_diachi').value;
        var check_error_diachi = document.getElementById('error_diachi');
        if(diachi == "" || diachi==null){
            check_error_diachi.innerHTML = "Địa chỉ không được để trống !";
        }else{
            check_error_diachi.innerHTML = "";
            return diachi;
        }
    }
// check tên tài khoản
    function checkTaikhoan(){
        var taikhoan = document.getElementById('txt_taikhoan').value;
        var check_error_taikhoan = document.getElementById('error_taikhoan');
        if(taikhoan == "" || taikhoan==null){
            check_error_taikhoan.innerHTML = "Tên tài khoản không được để trống !";
        }else{
            check_error_taikhoan.innerHTML = "";
            return taikhoan;
        }
    }
//    Hàm check Password
function checkPassword(){
        var password = document.getElementById('password').value;
        var check_error_password = document.getElementById('error_password');
        var regexpass = /\ /;
        if(password == "" || password==null){
            check_error_password.innerHTML = "Mật khẩu không được để trống !";
        }else if(regexpass.test(pass)){
            check_error_password.innerHTML = "Mật khẩu chứa dấu cách !";
        }else{
            check_error_password.innerHTML = "";
            return pass;
        }
    }
// Hàm check Password mới
function checkPassword(){
    var pass = document.getElementById('password_moi').value;
    var check_error_pass = document.getElementById('error_pass_moi');
    var regexpass = /\ /;
    if(pass == "" || pass==null){
        check_error_pass.innerHTML = "Mật khẩu không được để trống !";
    }else if(regexpass.test(pass)){
        check_error_pass.innerHTML = "Mật khẩu chứa dấu cách !";
    }else{
        check_error_pass.innerHTML = "";
        return pass;
    }
}
// 
function checkCon_Password(){
    var con_pass = document.getElementById('txt_xacNhanMatKhau').value;
    var check_error_con_pass = document.getElementById('error_con_pass');
    var password = checkPassword();
    var regexpass = /\ /;
    if(con_pass == "" || con_pass==null){
        check_error_con_pass.innerHTML = "Mật khẩu không được để trống !";
    }else if(regexpass.test(con_pass)){
        check_error_con_pass.innerHTML = "Mật khẩu chứa dấu cách !";
    }else if(con_pass != password){
        check_error_con_pass.innerHTML = "Mật khẩu xác nhận không trùng khớp!";
    }else{
        check_error_con_pass.innerHTML = "";
        return con_pass;
    }
}