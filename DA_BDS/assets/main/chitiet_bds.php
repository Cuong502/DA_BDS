<?php
	$sql_chitiet = "SELECT * FROM tbl_baiviet,tbl_danhmuc WHERE tbl_baiviet.id_danhmuc=tbl_danhmuc.id_danhmuc
	 AND tbl_baiviet.id_baiviet='$_GET[id]' LIMIT 1";
	$query_chitiet = mysqli_query($mysqli,$sql_chitiet);
	while($row_chitiet = mysqli_fetch_array($query_chitiet)){
?>
<div class="main_chitiet_bds-container">
    <div class="main_section__chitiet_bds">
        <div class="main_section__chitiet_bds-Col1">
            <div class="main_section__chitiet_bds--card ">
                <div class="main_section__chitiet_bds--placeholder">
                    <img class="main_section__chitiet_bds--placeholder--img" src="admincp/modules/quanlybv/uploads/<?php echo $row_chitiet['hinhanh'] ?>" alt="">
                </div>

                <div class="main_section__chitiet_bds--body">
                    <h3 class="main_section__chitiet_bds--body--title"><?php echo $row_chitiet['tenbaiviet'] ?></h3>
                    <div class="main_section__chitiet_bds--body--badgePrice">5.000.000.VNĐ/Phần</div>
                    <div class="main_section__chitiet_bds--body--addressContainer">
                        <span class="main_section__chitiet_bds--body--addressIcon">
                        <i class = "fa fa-file-alt"></i>
                        </span>                    
                        <span class = "main_section__chitiet_bds--body--address" >0x79b6930DEfb52d90EDF0c82880450e9808E841Dd</span>
                    </div>
                    <div class=" main_section__chitiet_bds--body--divider"></div>
                    <div class="main_card_Investercontainer--row ">
                         <span class = "main_card_Investercontainer--col"><?php echo $row_chitiet['sonhadautu'] ?> nhà đầu tư</span>
                         <div class="main_card_Investercontainer--textFriction"><?php echo $row_chitiet['daban'] ?>/<?php echo $row_chitiet['gia'] ?></div>
                    </div>
                    <div class="main_card_Investercontainer--Progresscontainer">
                        <div class= "main_card_Investercontainer--Progress">
                            <div class="main_card_Investercontainer--Progressvalue" style="width:70% "></div>
                        </div>
                    </div>
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
                                    Thời gian đầu tư :
                                </span>
                                <span><?php echo $row_chitiet['thoigiandautu'] ?></span>
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
                        <iframe src="https://www.google.com/maps/place/16%C2%B004'37.9%22N+108%C2%B013'21.9%22E/@16.0772266,108.2221525,19z/data=!4m5!3m4!1s0x0:0x0!8m2!3d16.0771893!4d108.2227371?hl=vi-VN" 
                            frameborder="0" allowfullscreen></iframe>
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