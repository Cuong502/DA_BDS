<div class="main">
	<?php
			if(isset($_GET['quanly'])){
				$tam = $_GET['quanly'];
			}else{
				$tam = '';
			}
			if($tam=='danhmucsanpham'){
				include("assets/main/batdongsan.php");
			}elseif($tam=='account'){
                include("assets/main/account/account.php");
            }elseif($tam=='thaydoithongtin'){
                include("assets/main/account/thaydoithongtin.php");
            }elseif($tam=='chuyenkhoan'){
                include("assets/main/account/chuyenkhoan.php");
            }elseif($tam=='dangky'){
                include("assets/main/dangky.php");
            }elseif($tam=='dangnhap'){
                include("assets/main/dangnhap.php");
            }elseif($tam=='chitietbatdongsan'){
                include("assets/main/chitiet_bds.php");
            }elseif($tam=='sansolana'){
                include("assets/main/san_sol.php");
            }elseif($tam=='giohang'){
                include("assets/main/giohang.php");
            }elseif($tam=='tintuc'){
                include("assets/main/tintuc.php");
            }elseif($tam=='lienhe'){
                include("assets/main/lienhe.php");
            }elseif($tam=='camon'){
                include("assets/main/camon.php");
            }elseif($tam=='baiviet'){
                include("assets/main/baiviet.php");

            }
			else{
                include("assets/main/home_page.php");
            }
                ?>
    </div>