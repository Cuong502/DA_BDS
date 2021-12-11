<?php
	$sql_bds = "SELECT * FROM tbl_sanpham WHERE tbl_sanpham.id_danhmuc='$_GET[id]' ORDER BY id_sanpham ASC";
	$query_bds = mysqli_query($mysqli,$sql_bds);
	//get ten danh muc
	$sql_cate = "SELECT * FROM tbl_danhmuc WHERE tbl_danhmuc.id_danhmuc='$_GET[id]' LIMIT 1";
	$query_cate = mysqli_query($mysqli,$sql_cate);
	$row_title = mysqli_fetch_array($query_cate);
?>
<div class="main_BDS">
    <div class="main_header">
        
        <div class="main_container">
            <ul class="main_row">
                <?php
					while($row_bds = mysqli_fetch_array($query_bds)){ 
				?>
                <li class="main_itemwraper">
                    <a href="index.php?quanly=chitietbatdongsan&id=<?php echo $row_bds['id_sanpham'] ?>" class="main_propertyLink">
                        <div class="main_card">
                            <div class="main_card_imgContainer">
                                <img class="main_card_imgContaine__img" src="admincp/modules/quanlybds/uploads/<?php echo $row_bds['hinhanh'] ?>" alt="">
                                                                
                            </div>
                            <div class="main_card_body">
                                <h3 class="main_card_body__title"><?php echo $row_bds['tensanpham'] ?></h3>
                                <div class="main_card_body__priceProject">
                                    <?php if($row_bds['tinhtrang']==1){
                                                echo 'Đang mở bán';
                                            }else{
                                                echo 'Dự án kết thúc';
                                                } 
                                            ?>
                                </div>
                                <div class="main_card_body__detailWrapper">
                                   <span class="main_card_body__detailIcon">
                                        <i class = "fas fa-dollar-sign"></i>
                                   </span>
                                   <span class="main_card_body__detailLabel">Lợi nhuận kỳ vọng</span>
                                   <span class="main_card_body__detailValue"><?php echo $row_bds['loinhuankyvong'] ?>%</span>
                                </div>
                                <div class="main_card_divider"></div>
                                <div class="main_card_body__detailWrapper">
                                   <span class="main_card_body__detailIcon">
                                        <i class="fab fa-squarespace"></i>
                                   </span>
                                   <span class="main_card_body__detailLabel">Diện tích : </span>
                                   <span class="main_card_body__detailValue"><?php echo number_format($row_bds['dientich'],0,',','.')?> m<sup>2</sup></span>
                                </div>
                                <div class="main_card_divider"></div>
                                <div class="main_card_Footercontainer">
                                    <div class="main_card_Footer">
                                        <div class="main_card_Footer__detailWrapper">
                                            <span class="main_card_Footer__detailIcon">
                                                <i class="fas fa-map-marker-alt"></i>
                                            </span>
                                            <span class="main_card_Footer__detailLabel"><?php echo $row_bds['diachi'] ?></span>
                                        </div>
                                        <div class="main_card_Footer__Footericon">
                                            <i class = " ti-angle-right"></i>
                                        </div>
                                    </div>
                                    </div>
                            </div>
                           
                        </div>
                    </a>

                </li>
                <?php
				} 
			    ?>
            </ul>
            
        </div>
    </div>
</div>