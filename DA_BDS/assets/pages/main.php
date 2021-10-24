<div class="main">
	<?php
			if(isset($_GET['quanly'])){
				$tam = $_GET['quanly'];
			}else{
				$tam = '';
			}
			if($tam=='danhmucsanpham'){
				include("assets/main/batdongsan.php");
			}elseif($tam=='dangky'){
                include("assets/main/dangky.php");
            }elseif($tam=='dangnhap'){
                include("assets/main/dangnhap.php");
            }elseif($tam=='chitietbatdongsan'){
                include("assets/main/chitiet_bds.php");
            }elseif($tam=='account'){
                include("assets/main/account.php");
            }
			else{
                include("assets/main/home_page.php");
            }
                ?>
    </div>