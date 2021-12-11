<?php
	if(isset($_POST['dangky'])) {
		$tenkhachhang = $_POST['txtHovaten'];
		$email = $_POST['txtEmail'];
		$dienthoai = $_POST['txtDienthoai'];
        $diachi = $_POST['txtdiachi'];
        $tentaikhoan = $_POST['txtTentaikhoan'];
		$matkhau = md5($_POST['pswMatkhau']);
		$sql_dangky = mysqli_query($mysqli,"INSERT INTO tbl_dangky(tenkhachhang,email,dienthoai,diachi,tentaikhoan,matkhau) 
        VALUE('".$tenkhachhang."','".$email."','".$dienthoai."','".$diachi."', '".$tentaikhoan."','".$matkhau."')");
		if($sql_dangky){
			echo '<p style="color:green">Bạn đã đăng ký thành công</p>';
			$_SESSION['dangky'] = $tenkhachhang;
            $_SESSION['email'] = $email;
			$_SESSION['id_khachhang'] = mysqli_insert_id($mysqli);
			header("Location:index.php?quanly=giohang");
		}
	}
?>
        <div class="root">
            <div class="root_img">
                <form action="" method="POST">
                    <div class="style_content__register">
                        <div class="style_body">
                            <div class="react_tabs">
                               <ul class="react_tabslist">
                                   <li class="style_tabs_login">
                                       <a href="index.php?quanly=dangnhap" style = "text-decoration: none; color: #000">Đăng nhập</a>
                                    </li>
                                   <li class="style_tabs_register">Đăng ký</li>
                               </ul>
                               <div class="react_tabs_tab-panel">
                                   <div class="style_formGroup">
                                       <div class="style_input_container">
                                           <div class="style_container">
                                               <div class="style_iconcontainer">
                                               <i class=" iconfas fas fa-user fa-fw"></i>
                                               </div>
                                               <div class="style_input">
                                                    <input id="txt_name" type = "text" name="txtHovaten" placeholder="Họ Tên" required onblur="checkName()">
                                               </div>
                                           </div>
                                           <div id="error_name" style=" margin:5px 0 0 40px;color: red; font-size :14px;"></div>
                                       </div>
                                   </div>
                               </div>
                               <div class="react_tabs_tab-panel">
                                   <div class="style_formGroup">
                                       <div class="style_input_container">
                                           <div class="style_container">
                                               <div class="style_iconcontainer">
                                               <i class=" iconfas fas fa-envelope fa-fw"></i>
                                               </div>
                                               <div class="style_input">
                                                    <input id="txt_email" type = "email"name="txtEmail" placeholder="Email" required onblur="checkEmail()">
                                               </div>
                                           </div>
                                           <div id="error_email" style=" margin:5px 0 0 40px;color: red; font-size :14px;"></div>
                                       </div>
                                   </div>
                               </div>
                            
                               <div class="react_tabs_tab-panel">
                                   <div class="style_formGroup">
                                       <div class="style_input_container">
                                           <div class="style_container">
                                               <div class="style_iconcontainer">
                                               <i class=" iconfas fas fa-phone fa-fw"></i>
                                               </div>
                                               <div class="style_input">
                                                    <input id="txt_phone" type="text" name="txtDienthoai" placeholder="Số điện thoại" required onblur="checkPhone()">
                                               </div>
                                           </div>
                                           <div id="error_phone" style=" margin:5px 0 0 40px;color: red; font-size :14px;"></div>  
                                       </div>
                                   </div>
                               </div>
                               <div class="react_tabs_tab-panel">
                                   <div class="style_formGroup">
                                       <div class="style_input_container">
                                           <div class="style_container">
                                               <div class="style_iconcontainer">
                                               <i class=" iconfas fas fa-map-marker-alt fa-fw"></i>
                                               </div>
                                               <div class="style_input">
                                                    <input id="txt_diachi" type  = "text" name="txtdiachi" placeholder="Địa chỉ" required onblur="checkDiachi()">
                                               </div>
                                           </div>
                                           <div id="error_diachi" style=" margin:5px 0 0 40px;color: red; font-size :14px;"></div> 
                                       </div>
                                   </div>
                               </div>
                               <div class="style_seferater"></div>
                               <div class="react_tabs_tab-panel">
                                   <div class="style_formGroup">
                                       <div class="style_input_container">
                                           <div class="style_container">
                                               <div class="style_iconcontainer">
                                               <i class=" iconfas fas fa-user fa-fw"></i>
                                               </div>
                                               <div class="style_input">
                                                    <input id="txt_taikhoan" type = "text" name="txtTentaikhoan" placeholder="Tên tài khoản" required onblur="checkTaikhoan()">
                                               </div>
                                           </div>
                                           <div id="error_taikhoan" style=" margin:5px 0 0 40px;color: red; font-size :14px;"></div>
                                       </div>
                                   </div>
                               </div>
                               <div class="react_tabs_tab-panel">
                                   <div class="style_formGroup">
                                       <div class="style_input_container">
                                           <div class="style_container">
                                               <div class="style_iconcontainer">
                                               <i class=" iconfas fas fa-unlock fa-fw"></i>
                                               </div>
                                               <div class="style_input">
                                                    <input id="txt_password" type = "password" name="pswMatkhau" placeholder="Mật khẩu" required onblur=" checkPassword()">
                                               </div>
                                               <div class="style_iconcontainer">
                                               		<i  onclick="showHiden(this)" id="eye" class=" fas fa-eye" style="cursor: pointer;"  ></i>
                                               </div>
                                           </div>
                                           <div id="error_password" style=" margin:5px 0 0 40px;color: red; font-size :14px;"></div>
                                       </div>
                                   </div>
                               </div>
                               <div class="react_tabs_tab-panel">
                                   <div class="style_formGroup">
                                       <div class="style_input_container">
                                           <div class="style_container">
                                               <div class="style_iconcontainer">
                                               <i class=" iconfas fas fa-unlock fa-fw"></i>
                                               </div>
                                               <div class="style_input">
                                                    <input id="txt_xacNhanMatKhau" type="password"  placeholder="Nhập lại mật khẩu" required style="outline: none;" onblur="checkCon_Password()">
                                               </div>
                                               <div class="style_iconcontainer">
                                               		<i  onclick="showHiden_moi2(this)" id="eye_moi2" class=" fas fa-eye" style="cursor: pointer;"  ></i>
                                               </div>
                                           </div>
                                       <div id="error_con_pass" style=" margin:5px 0 0 40px;color: red; font-size :14px;"></div>
                                       </div>
                                   </div>
                               </div>
                               <div class="react_tabs_tab-panel">
                                   <div class="style_formGroup">
                                       <div class="style_input_container">
                                           <input class="style_button" type="submit" name="dangky" value="Đăng ký">
                                       </div>
                                   </div>
                               </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>