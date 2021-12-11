<div class="main_page">
    <div class="main_page-Background">
        <div class="main_page-Background-header"></div>
    </div>
    <div class="main_page-Content">
        <?php
			include("sidebar.php"); 
			?>

        <div class="main_page-Content-pageContainer">
            <h1 class="main_page-Content-pageContainer__Title">Thay đổi thông tin</h1>
            <div class="clear"></div>
            <div class="tabs">
                <ul id="tabs-nav">
                    <li><a href="#tab1">Đổi mật khẩu</a></li>
                    <li><a href="#tab2">Thông tin cá nhân</a></li>
                </ul> <!-- END tabs-nav -->
                <div id="tabs-content">
                    <div id="tab1" class="tab-content">

                    <?php
                        if(isset($_POST['doimatkhau'])){
                            $taikhoan = $_POST['email'];
                            $matkhau_cu = md5($_POST['password_cu']);
                            $matkhau_moi = md5($_POST['password_moi']);
                            $sql = "SELECT * FROM tbl_dangky WHERE email='".$taikhoan."' AND matkhau='".$matkhau_cu."' LIMIT 1";
                            $row = mysqli_query($mysqli,$sql);
                            $count = mysqli_num_rows($row);
                            if($count>0){
                                $sql_update = mysqli_query($mysqli,"UPDATE tbl_dangky SET matkhau='".$matkhau_moi."'");
                                $title = "Mật khẩu đã được thay đổi.";
                                echo "<script type='text/javascript'>alert('$title');</script>";
                            }else{
                                $title = "Tài khoản hoặc Mật khẩu cũ không đúng,vui lòng nhập lại.";
                                echo "<script type='text/javascript'>alert('$title');</script>";
                            }
                        } 
                    ?>
                    <div class="change_password">
                        <div class="thaydoimatkhau">
                            <form action="" autocomplete="off" method="POST">	
                                <div class="style_content__register" style="margin-top:20px; border:none; right:360px;">
                                            <div class="style_body">
                                                <div class="react_tabs">
                                                <ul class="">
                                                    <li class="style_tabs_change_password " style="background-color: #FFF">Thay đổi mật khẩu</li>
                                                </ul>
                                                
                                                <div class="react_tabs_tab-panel">
                                                    <div class="style_formGroup">
                                                        <div class="style_input_container">
                                                            <div class="style_container">
                                                                <div class="style_iconcontainer">
                                                                <i class=" iconfas fas fa-user fa-fw"></i>
                                                                </div>
                                                                <div class="style_input">
                                                                        <input name="email" placeholder="Email" value="" required style="outline: none;">
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
                                                                <i class=" iconfas fas fa-unlock fa-fw"></i>
                                                                
                                                                </div>
                                                                <div class="style_input">
                                                                        <input id="txt_password" type ="password"name="password_cu" placeholder="Mật khẩu cũ" value="" required style="outline: none;">
                                                                </div>
                                                                <div class="style_iconcontainer">
                                                                        <i  onclick="showHiden(this)" id="eye" class=" fas fa-eye" style="cursor: pointer; "></i>
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
                                                                <i class=" iconfas fas fa-unlock fa-fw"></i>
                                                                
                                                                </div>
                                                                <div class="style_input">
                                                                        <input id="password_moi" type ="password"name="password_moi" placeholder="Mật khẩu mới" value="" required style="outline: none;" onblur="checkPassword()">
                                                                </div>
                                                                <div class="style_iconcontainer">
                                                                        <i  onclick="showHiden_moi(this)" id="eye_moi" class=" fas fa-eye" style="cursor: pointer; "></i>
                                                                </div>
                                                            </div>
                                                            <div id="error_pass_moi" style=" margin:5px 0 0 40px;color: red; font-size :14px;"></div>
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
                                                                        <input id="txt_xacNhanMatKhau" type ="password"name="password_moi" placeholder="Nhập lại mật khẩu mới" required style="outline: none;" onblur="checkCon_Password()">
                                                                </div>
                                                                <div class="style_iconcontainer">
                                                                        <i  onclick="showHiden_moi2(this)" id="eye_moi2" class=" fas fa-eye" style="cursor: pointer; "></i>
                                                                </div>
                                                            </div>
                                                            <div id="error_con_pass" style=" margin:5px 0 0 40px;color: red; font-size :14px;"></div>
                                                        </div>
                                                    </div>
                                                    </div>
                                                <div class="react_tabs_tab-panel">
                                                    <div class="style_formGroup">
                                                        <div class="style_input_container">
                                                            <input class = " style_button" style="width:100%;"type="submit" name="doimatkhau" value="Hoàn tất">
                                                        </div>
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
                                        </div>
                                </form>
                        </div>
                    </div>
                    </div>
                    <div id="tab2" class="tab-content">
                    </div>
                </div>
            </div> <!-- END tabs-content -->
        </div> <!-- END tabs -->
    </div>
</div>