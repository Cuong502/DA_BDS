<?php
	if(isset($_POST['dangnhap'])){
		$tentaikhoan = $_POST['txtTentaikhoan'];
		$matkhau = md5($_POST['pswMatkhau']);
		$sql = "SELECT * FROM tbl_dangky WHERE tentaikhoan='".$tentaikhoan."' AND matkhau='".$matkhau."' LIMIT 1";
		$row = mysqli_query($mysqli,$sql);
		$count = mysqli_num_rows($row);

		if($count>0){
			$row_data = mysqli_fetch_array($row);
			$_SESSION['dangky'] = $row_data['tenkhachhang'];
			$_SESSION['id_khachhang'] = $row_data['id_dangky'];
			header("Location:index.php?quanly=account");
		}else{
			echo '<p style="color:red">Mật khẩu hoặc Email sai ,vui lòng nhập lại.</p>';
			
		}
	} 
?>
        <div class="root">
            <div class="root_img">
                <form action="#"autocomplete="off" method="POST">
                    <div class="style_content__register">
                        <div class="style_body">
                            <div class="react_tabs">
                               <ul class="react_tabslist">
                                   <li class="style_tabs_register " style="background-color: #FFF">Đăng nhập</li>
                                   <li class="style_tabs_login" style="background-color: #FF9933">
                                        <a href="index.php?quanly=dangky" style = "text-decoration: none; color: #000">Đăng ký</a>
                                    </li>
                               </ul>
                               
                               <div class="react_tabs_tab-panel">
                                   <div class="style_formGroup">
                                       <div class="style_input_container">
                                           <div class="style_container">
                                               <div class="style_iconcontainer">
                                               <i class=" iconfas fas fa-user fa-fw"></i>
                                               </div>
                                               <div class="style_input">
                                                    <input name="txtTentaikhoan" placeholder="Tên tài khoản" value="" required >
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
                                                    <input type ="password"name="pswMatkhau" placeholder="Mật khẩu" value="" required >
                                               </div>
                                           </div>
                                       </div>
                                   </div>
                               </div>
                               <div class="react_tabs_tab-panel">
                                   <div class="style_formGroup">
                                       <div class="style_input_container">
                                           <input class = " style_button" type="submit" name="dangnhap" value="Đăng nhập">
                                       </div>
                                   </div>
                               </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>