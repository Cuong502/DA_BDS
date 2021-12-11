<div class="clear"></div>
<div class="main">

	<?php

				if(isset($_GET['action']) && $_GET['query']){
					$tam = $_GET['action'];
					$query = $_GET['query'];
				}else{
					$tam = '';
					$query = '';
				}
				if($tam=='quanlydanhmucbatdongsan' && $query=='them'){
					include("modules/quanlydanhmucbds/them.php");
					include("modules/quanlydanhmucbds/lietke.php");
				}elseif ($tam=='quanlydanhmucbatdongsan' && $query=='sua') {
					include("modules/quanlydanhmucbds/sua.php");
				}
				
				elseif ($tam=='quanlybds' && $query=='them') {
					include("modules/quanlybds/them.php");
					include("modules/quanlybds/lietke.php");
				}elseif($tam=='quanlybds' && $query=='sua'){
					include("modules/quanlybds/sua.php");
				}
				
				elseif($tam=='quanlydanhmucbaiviet' && $query=='them'){
						include("modules/quanlydanhmucbaiviet/them.php");
						include("modules/quanlydanhmucbaiviet/lietke.php");
				}elseif($tam=='quanlydanhmucbaiviet' && $query=='sua'){
						include("modules/quanlydanhmucbaiviet/sua.php");
				}
				
				elseif($tam=='quanlybaiviet' && $query=='them'){
						include("modules/quanlybaiviet/them.php");
						include("modules/quanlybaiviet/lietke.php");		
				}elseif($tam=='quanlybaiviet' && $query=='sua'){
						include("modules/quanlybaiviet/sua.php");
				}

				elseif($tam=='quanlyweb' && $query=='capnhat'){
					include("modules/thongtinweb/quanly.php");
				}
				elseif($tam=='quanlydonhang' && $query=='lietke'){
					include("modules/quanlydonhang/lietke.php");
				}elseif($tam=='donhang' && $query=='xemdonhang'){
					include("modules/quanlydonhang/xemdonhang.php");
				}
				else{
					include("modules/dashboard.php");
				}
	?> 
	
</div>