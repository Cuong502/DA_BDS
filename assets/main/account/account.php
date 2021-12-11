

<div class="main_page">
    <div class="main_page-Background">
        <div class="main_page-Background-header"></div>
    </div>
    <div class="main_page-Content">
        <?php
			include("sidebar.php"); 
			?>

        <div class="main_page-Content-pageContainer">
				<?php
				if(isset($_GET['account'])){
					$tam = $_GET['account'];
				}else{
					$tam = '';
				}
                if($tam=='myAccount'){
					include("myAccount.php");
				}elseif($tam=='thaydoithongtin'){
					include("thaydoithongtin.php");
				}else{
					include("myAccount.php");
				}
                
                ?>
        </div>
    </div>
</div>
