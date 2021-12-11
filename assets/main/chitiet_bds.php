<?php
	$sql_chitiet = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc AND tbl_sanpham.id_sanpham='$_GET[id]' LIMIT 1";
	$query_chitiet = mysqli_query($mysqli,$sql_chitiet);
	while($row_chitiet = mysqli_fetch_array($query_chitiet)){
?>
<div class="main_chitiet_bds-container">
    <div class="main_section__chitiet_bds">
        <div class="main_section__chitiet_bds-Col1">
            <div class="main_section__chitiet_bds--card ">
                <div class="main_section__chitiet_bds--placeholder">
                    <img class="main_section__chitiet_bds--placeholder--img" src="admincp/modules/quanlybds/uploads/<?php echo $row_chitiet['hinhanh'] ?>" alt="">
                </div>
                
                <div class="main_section__chitiet_bds--body">
                    <form method="POST" action="assets/main/themgiohang.php?idsanpham=<?php echo $row_chitiet['id_sanpham'] ?>">
                    <h3 class="main_section__chitiet_bds--body--title"><?php echo $row_chitiet['tensanpham'] ?></h3>
                    <div class="main_section__chitiet_bds--body--badgePrice"><?php echo number_format($row_chitiet['giasp'],0,',','.').'VNĐ'?>/Lô</div>
                    <div class=" main_section__chitiet_bds--body--divider"></div>
                    <div class="main_card_body__detailWrapper">
                                   <span class="main_card_body__detailIcon">
                                        <i class="fab fa-squarespace"></i>
                                   </span>
                                   <span class="main_card_body__detailLabel">Diện tích : </span>
                                   <span class="main_card_body__detailValue"><?php echo number_format($row_chitiet['dientich'],0,',','.')?> m<sup>2</sup></span>
                                </div>
                                <div><input class="themgiohang" name="themgiohang" type="submit" value="Thêm vào giỏ hàng"></div>
                    </form>
                </div>
            </div>
            <div class=" main_section__chitiet_bds--cardWrapper ">
                <div class="main_section__chitiet_bds--card--headerWrapper">
                    <div class="main_section__chitiet_bds--card--header">
                        <span class = "main_section__chitiet_bds--card--hcardTitleWrapper">Thông tin đầu tư </span>
                    </div>
                </div>
                <div class="main_section__chitiet_bds--card--body">
                    <div class="main_section__chitiet_bds--card--bodyRow">
                        <div class="col-md-6">
                            <div class="mb-1">
                                <span class="prop-label">
                                    Pháp lý :
                                </span>
                                <span><?php echo $row_chitiet['phaply'] ?></span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-1">
                                    <span class="prop-label">
                                        Lợi nhuận kỳ vọng : 
                                    </span>
                                    <span><?php echo $row_chitiet['loinhuankyvong'] ?>%</span>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class=" main_section__chitiet_bds--cardWrapper ">
                <div class="main_section__chitiet_bds--card--headerWrapper">
                    <div class="main_section__chitiet_bds--card--header">
                        <span class = "main_section__chitiet_bds--card--hcardTitleWrapper">Mô tả tổng quan</span>
                    </div>
                </div>
                <div class="main_section__chitiet_bds--card--body">
                    <div class="main_section__chitiet_bds--card--bodyInformation">
                        <p><?php echo $row_chitiet['noidung'] ?></p>
                    </div>
                </div>
            </div>
            <div class=" main_section__chitiet_bds--cardWrapper ">
                <div class="main_section__chitiet_bds--card--headerWrapper">
                    <div class="main_section__chitiet_bds--card--header">
                        <span class = "main_section__chitiet_bds--card--hcardTitleWrapper">Địa điểm</span>
                    </div>
                </div>
                <div class="main_section__chitiet_bds--card--body">
                    <div class="main_section__chitiet_bds--card--bodymapContainer">
                    <iframe src="<?php echo $row_chitiet['diachi_map'] ?>" width="800" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

                    
                    </div>
                </div>
            </div>
        </div>
        <div class="main_section__chitiet_bds-Col2">
            <div class="main_section__chitiet_bds--card">
                <div class="main_section__chitiet_bds--body">
                    <div class="main_section__chitiet_bds--body--projectStarrtus">
                        <div class="main_section__chitiet_bds--body--IconstartusSuccess">
                            <img class="main_section__chitiet_bds--body--Icon" src="./assets/img/iconstartus.png" alt="">
                        </div>
                        <div class="main_section__chitiet_bds--body--startusText">
                        <?php if($row_chitiet['tinhtrang']==1){
                                            echo 'Đang mở bán';
                                        }else{
                                            echo 'Dự án kết thúc';
                                            } 
                                        ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
} 
?>