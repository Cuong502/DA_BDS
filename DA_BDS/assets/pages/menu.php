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
			<li class="header__navbar">
                <a class="header_a"  href="index.php?quanly=danhmucsanpham&id=<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></a></li>
			<?php
			} 
			?>               
            <button class="header_button_post">
                <i class="header_button_post_icon far fa-edit"></i><span class="header_button_post_write" >ĐĂNG TIN</span>
            </button>
        </ul>

    </nav>
</div>