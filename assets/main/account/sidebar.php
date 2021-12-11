<div class="main_page-Content-sidebarContainer">
            <div class="main_page-Content-sidebar">
                <div class="main_page-Content-sidebar--profileHeaderWrap">
                    <div class="main_page-Content-sidebar--profileHeadercardWrap">
                        <div class="main_page-Content-sidebarProfile">
                            <img src="./assets/img/logo-dhktdn-150.png" alt="" class="main_page-Content-sidebarProfile--avatar">
                            <h4 class="main_page-Content-sidebarProfile--Name">
                                <?php
                                if(isset($_SESSION['dangky'])){
                                    echo '<span style="color:red">'.$_SESSION['dangky'].'</span>';  
                                } 
                                ?>
                            </h4>
                        </div>
                    </div>
                    <div class="main_page-Content-sidebar--profile-Body">
                        <ul class="main_page-Content-sidebar--profile-BodyNavContainer">
                                <li class="main_page-Content-sidebar--profile-BodyNavWrapper">
                                    <a href="index.php?quanly=account" class="main_page-Content-sidebar--profile-BodyNavWrapper__Activity">
                                        <span><i style="margin-right : 10px;" class = "fa fa-user"></i>
                                            Tài khoản của tôi
                                        </span>
                                    </a>
                                </li>
                                <li class="main_page-Content-sidebar--profile-BodyNavWrapper">
                                    <a href="index.php?quanly=thaydoithongtin" class="main_page-Content-sidebar--profile-BodyNavWrapper__Activity">
                                        <span><i style="margin-right : 10px;" class = "fa fa-edit"></i>
                                            Thay đổi thông tin
                                        </span>
                                    </a>
                                </li>
                                <li class="main_page-Content-sidebar--profile-BodyNavWrapper">
                                    <a href="index.php?quanly=chuyenkhoan" class="main_page-Content-sidebar--profile-BodyNavWrapper__Activity">
                                            <span><i style="margin-right : 10px;" class = "fas fa-wallet"></i>
                                                Chuyển khoản
                                            </span>
                                        </a>
                                </li>
                                <li class="main_page-Content-sidebar--profile-BodyNavWrapper">
                                    <a href="index.php?dangxuat=1" class="main_page-Content-sidebar--profile-BodyNavWrapper__Activity">
                                            <span><i style="margin-right : 10px;" class = "fas fa-sign-out-alt"></i>
                                               Đăng xuất
                                            </span>
                                        </a>
                                </li>
                        </ul>     
                    </div>
                </div>
                
            </div>
        </div>