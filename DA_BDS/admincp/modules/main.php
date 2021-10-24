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
				if($tam=='quanlydanhmucbaiviet' && $query=='them'){
					include("modules/quanlydanhmucbv/them.php");
					include("modules/quanlydanhmucbv/lietke.php");
				}elseif ($tam=='quanlydanhmucbaiviet' && $query=='sua') {
					include("modules/quanlydanhmucbv/sua.php");
				}
				
				
				elseif ($tam=='quanlybv' && $query=='them') {
					include("modules/quanlybv/them.php");
					include("modules/quanlybv/lietke.php");
				}elseif($tam=='quanlybv' && $query=='sua'){
					include("modules/quanlybv/sua.php");
				
				
				
				}elseif($tam=='quanlydonhang' && $query=='lietke'){
					include("modules/quanlydonhang/lietke.php");
				}elseif($tam=='donhang' && $query=='xemdonhang'){
					include("modules/quanlydonhang/xemdonhang.php");
				}
				else{
					include("modules/dashboard.php");
				}
	?> 
	
</div>