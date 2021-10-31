<?php
	if(isset($_POST['dangky'])) {
		$tenkhachhang = $_POST['txtHovaten'];
		$email = $_POST['txtEmail'];
		$dienthoai = $_POST['txtDienthoai'];
        $tentaikhoan = $_POST['txtTentaikhoan'];
		$matkhau = md5($_POST['pswMatkhau']);
		$sql_dangky = mysqli_query($mysqli,"INSERT INTO tbl_dangky(tenkhachhang,email,dienthoai,tentaikhoan,matkhau) 
        VALUE('".$tenkhachhang."','".$email."','".$dienthoai."', '".$tentaikhoan."','".$matkhau."')");
		if($sql_dangky){
			echo '<p style="color:green">Bạn đã đăng ký thành công</p>';
			$_SESSION['dangky'] = $tenkhachhang;
			$_SESSION['id_khachhang'] = mysqli_insert_id($mysqli);
			header("Location:index.php?quanly=account");
		}
	}
?>
        <div class="root">
            <div class="root_img">
                <form action="#" method="POST">
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
                                                    <input type = "text" name="txtHovaten" placeholder="Họ Tên" required>
                                               </div>
                                           </div>
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
                                                    <input type = "email"name="txtEmail" placeholder="Email" required>
                                               </div>
                                           </div>
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
                                                    <input type  = "text" name="txtDienthoai" placeholder="Số điện thoại" required>
                                               </div>
                                           </div>
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
                                                    <input type = "text" name="txtTentaikhoan" placeholder="Tên tài khoản" required>
                                               </div>
                                           </div>
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
                                                    <input type = "password" name="pswMatkhau" placeholder="Mật khẩu" required>
                                               </div>
                                           </div>
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
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>