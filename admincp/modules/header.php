<?php
	if(isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
		unset($_SESSION['dangnhap']);
		header('Location:login.php');
	}
?>
<div class="header">
	<p><a href="index.php?dangxuat=1" style="text-decoration: none;color:blue; padding:20px; background-color : aqua;border-radius: 8px; ">Đăng xuất


	<!-- <?php if(isset($_SESSION['dangnhap'])){
				echo $_SESSION['dangnhap'];
	} ?> -->
	</a></p>
</div>