<header class="header">
    <div class="grid">
        <div class="grid_icon"><i class="far fa-envelope"></i></div>
        <div class=" grid_icon_info grid_info_separate"><span>info@batdongsan.com</span></div>
        <div class="grid_icon_phone"><i class="fas fa-phone-volume"></i></div>
        <div class="grid_icon_phone_info"><span>0123456789</span></div>
        <div class="">
            <?php
				if(isset($_SESSION['dangky'])){                     			
                        echo '
                        <div class="header_account">
                            <a href="index.php?quanly=account" style= "text-decoration: none; cursor: pointer;display: block;">
                                <span class = "grid_login_a" style="color:red">
                                    <i class = " grid_login_icon fas fa-user"></i>
                                    '.$_SESSION['dangky'].'
                                    <i class = " fas fa-caret-down"></i>
                                </span>
                            </a>
                            <ul class="header__navbar-user-menu">
                                <li class="header__navbar-user-item">
                                    <a href="index.php?quanly=account">
                                    <i style="margin-right : 10px;" class = "fa fa-user"></i>
                                    Tài khoản của tôi</a>
                                </li>
                                <li class="header__navbar-user-item">
                                    <a href="">
                                    <i style="margin-right : 10px;" class = "fa fa-edit"></i>
                                    Thay đổi thông tin</a>
                                </li>
                                <li class="header__navbar-user-item header__navbar-user-item--separate">
                                    <a href="index.php?dangxuat=1">
                                    <i style="margin-right : 10px;" class = "fas fa-sign-out-alt"></i>Đăng xuất</a>
                                </li>
                            </ul>
                        </div>';  
                     
                ?>				
				<?php
				}else{ 
				?>
                   <div class="grid_login " >                        
                        <a class= "grid_login_a" href="index.php?quanly=dangnhap"> ĐĂNG NHẬP</a>
                    </div>
                    <div class="grid_register grid_register_separate">
                        <a class= "grid_login_a" href="index.php?quanly=dangky"> ĐĂNG KÝ</a>
                    </div>
				<?php
				} 
				?>
            
        </div>
       
    </div>
    <div class="clear_grid"></div>
    <div class="clear_header"></div>
</header>