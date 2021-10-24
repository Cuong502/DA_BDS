<?php

	$sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc ASC";
	$query_danhmuc = mysqli_query($mysqli,$sql_danhmuc);
	
	    		
?>
<div class="menu">
    <nav>
        <a href="index.php" class="header_logo"> <img src="./assets/img/logo1.png"> </img></a>
        <ul class="header_ul">
            <li class="home_page header__navbar"><a class="header_a" href="index.php">TRANG CHỦ</a></li>
            <?php 
				while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
				?>
				<li class="header__navbar" >
                    <a class="header_a" href="index.php?quanly=danhmucsanpham&id=<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></a></li>
				<?php
				} 
				?>
                <!-- <li class="header_buy header__navbar"><a class="header_a"  href="index.php?quanly=mua">MUA BÁN NHÀ ĐẤT</a>
                    <ul class="header__buy_house__list">
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                BÁN CĂN HỘ CHUNG CƯ
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                BÁN NHÀ RIÊNG, NHÀ MẶT PHỐ
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                BÁN BIỆT THỰ, NHÀ LIỀN KỀ
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                BÁN ĐẤT NỀN
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                BÁN ĐẤT THỔ CƯ
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                BÁN TÒA NHÀ VĂN PHÒNG
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                BÁN CĂN HỘ OFICETEL
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                BÁN ĐẤT TRANG TRẠI, NGHĨ DƯỠNG
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                BÁN KHO, NHÀ XƯỠNG, KIOT
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                BÁN NHÀ ĐẤT KHÁC
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="header_rent header__navbar"><a class="header_a"  href="#">CHO THUÊ NHÀ ĐẤT</a>
                    <ul class="header__buy_house__list">
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                CHO THUÊ CĂN HỘ CHUNG CƯ
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                CHO THUÊ NHÀ RIÊNG, NHÀ MẶT PHỐ
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                CHO THUÊ BIỆT THỰ, NHÀ LIỀN KỀ
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                CHO THUÊ ĐẤT NỀN
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                CHO THUÊ ĐẤT THỔ CƯ
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                CHO THUÊ TÒA NHÀ VĂN PHÒNG
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               CHO THUÊ CĂN HỘ OFICETEL
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               CHO THUÊ ĐẤT TRANG TRẠI, NGHĨ DƯỠNG
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               CHO THUÊ KHO, NHÀ XƯỠNG, KIOT
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               CHO THUÊ NHÀ ĐẤT KHÁC
                            </a>
                        </li>
                    </ul>
                </li>
                <li class=" header_project header__navbar"><a class="header_a"  href="#">DỰ ÁN</a>
                    <ul class="header__buy_house__list">
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               DỰ ÁN CĂN HỘ CHUNG CƯ
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               DỰ ÁN NHÀ RIÊNG, NHÀ MẶT PHỐ
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               DỰ ÁN BIỆT THỰ, NHÀ LIỀN KỀ
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               DỰ ÁN ĐẤT NỀN
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               DỰ ÁN ĐẤT THỔ CƯ
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               DỰ ÁN TÒA NHÀ VĂN PHÒNG
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                              DỰ ÁN CĂN HỘ OFICETEL
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                              DỰ ÁN ĐẤT TRANG TRẠI, NGHĨ DƯỠNG
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               DỰ ÁN KHO, NHÀ XƯỠNG, KIOT
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               DỰ ÁN NHÀ ĐẤT KHÁC
                            </a>
                        </li>
                    </ul>
                </li>
                <li class=" header_phonebook header__navbar"><a class="header_a"  href="#">DANH BẠ</a>
                    <ul class="header__buy_house__list">
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               CHỦ ĐẦU TƯ DỰ ÁN
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                              SÀN GIAO DỊCH BẤT ĐỘNG SẢN
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="header_news header__navbar"><a class="header_a" href="#">TIN TỨC</a>
                <ul class="header__buy_house__list">
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                               KIẾN TRÚC NHÀ ĐẸP
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                              REVIEW BẤT ĐỘNG SẢN
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                              PHONG THỦY NHÀ Ở
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                                TIN TỨC DOANH NGHIỆP
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                              PHÂN TÍCH - NHẬN ĐỊNH
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                              THÔNG TIN QUY HOẠCH
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                              KIẾN THỨC BẤT ĐỘNG SẢN
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                              TIN TỨC DỰ ÁN
                            </a>
                        </li>
                        <li class="header_navbar_list">
                            <a class="header_navbar_list__name" href="#">
                              TIN TỨC THỊ TRƯỜNG
                            </a>
                        </li>
                    </ul>
                </li> -->
                
                <button class="header_button_post">
                    <i class="header_button_post_icon far fa-edit"></i><span class="header_button_post_write" >ĐĂNG TIN</span>
                </button>
            </ul>

        </nav>
        
        </div>