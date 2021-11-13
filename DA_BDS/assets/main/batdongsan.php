<?php
	$sql_bds = "SELECT * FROM tbl_baiviet WHERE tbl_baiviet.id_danhmuc='$_GET[id]' ORDER BY id_baiviet ASC";
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
                    <a href="index.php?quanly=chitietbatdongsan&id=<?php echo $row_bds['id_baiviet'] ?>" class="main_propertyLink">
                        <div class="main_card">
                            <div class="main_card_imgContainer">
                                <img class="main_card_imgContaine__img" src="admincp/modules/quanlybv/uploads/<?php echo $row_bds['hinhanh'] ?>" alt="">
                                <span class="main_status">Tocken
                                    <br>
                                    <span class="main_statusBold">
                                        <?php if($row_bds['tinhtrang']==1){
                                            echo 'Đang mở bán';
                                        }else{
                                            echo 'Dự án kết thúc';
                                            } 
                                        ?>
                                    </span>
                                </span>                                
                            </div>
                            <div class="main_card_body">
                                <h3 class="main_card_body__title"><?php echo $row_bds['tenbaiviet'] ?></h3>
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
                                        <i class = "fas fa-clock"></i>
                                   </span>
                                   <span class="main_card_body__detailLabel">Thời gian đầu tư </span>
                                   <span class="main_card_body__detailValue"><?php echo $row_bds['thoigiandautu'] ?></span>
                                </div>
                                <div class="main_card_body__detailWrapper">
                                   <span class="main_card_body__detailIcon">
                                        <i class = "fas fa-dollar-sign"></i>
                                   </span>
                                   <span class="main_card_body__detailLabel">Lợi nhuận kỳ vọng</span>
                                   <span class="main_card_body__detailValue"><?php echo $row_bds['loinhuankyvong'] ?>%</span>
                                </div>
                                <div class="main_card_divider"></div>
                                <div class="main_card_Investercontainer">
                                    <span><?php echo $row_bds['sonhadautu'] ?> nhà đầu tư</span>
                                    <div class="main_card_Percentage"><?php echo $row_bds['daban'] ?>/<?php echo $row_bds['gia'] ?></div>
                                </div>
                                <div class="main_card_Progresscontainer">
                                    <div class="main_card_Progress">
                                        <!-- <progress id="myProgress"  value="0" max="100"></progress>
                                        <script>
                                            function myFunction() {
                                                document.getElementById("myProgress").value = "75";
                                            } -->
                                        </script>
                                            <div class="main_card_Progressvalue" style="width:70% "></div>
                                    </div>
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
                
                <!-- <li class="main_itemwraper">
                    <a href="#" class="main_propertyLink">
                        <div class="main_card">
                            <div class="main_card_imgContainer">
                                <img class="main_card_imgContaine__img" src="./assets/img/trung-tam-hanh-chinh.jpg" alt="">
                                <span class="main_status">Tocken
                                    <br>
                                    <span class="main_statusBold">Đang mở bán</span>
                                </span>                                
                            </div>
                            <div class="main_card_body">
                                <h3 class="main_card_body__title">Corn building Đà Nẵng</h3>
                                <div class="main_card_body__priceProject">Đang mở bán</div>
                                <div class="main_card_body__detailWrapper">
                                   <span class="main_card_body__detailIcon">
                                        <i class = "fas fa-clock"></i>
                                   </span>
                                   <span class="main_card_body__detailLabel">Thời gian đầu tư </span>
                                   <span class="main_card_body__detailValue">6 Tháng</span>
                                </div>
                                <div class="main_card_body__detailWrapper">
                                   <span class="main_card_body__detailIcon">
                                        <i class = "fas fa-dollar-sign"></i>
                                   </span>
                                   <span class="main_card_body__detailLabel">Lợi nhuận kỳ vọng</span>
                                   <span class="main_card_body__detailValue">15%</span>
                                </div>
                                <div class="main_card_divider"></div>
                                <div class="main_card_Investercontainer">
                                    <span>10 nhà đầu tư</span>
                                    <div class="main_card_Percentage">800/1.000</div>
                                </div>
                                <div class="main_card_Progresscontainer">
                                    <div class="main_card_Progress">
                                            <div class="main_card_Progressvalue" style="width:80% "></div>
                                    </div>
                                </div>
                                <div class="main_card_divider"></div>
                                <div class="main_card_Footercontainer">
                                    <div class="main_card_Footer">
                                        <div class="main_card_Footer__detailWrapper">
                                            <span class="main_card_Footer__detailIcon">
                                                <i class="fas fa-map-marker-alt"></i>
                                            </span>
                                            <span class="main_card_Footer__detailLabel">Đà Nẵng</span>
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
                <li class="main_itemwraper">
                    <a href="#" class="main_propertyLink">
                        <div class="main_card">
                            <div class="main_card_imgContainer">
                                <img class="main_card_imgContaine__img" src="./assets/img/toa-nha-cao-nhat-vn.jpg" alt="">
                                <span class="main_status">Tocken
                                    <br>
                                    <span class="main_statusBold">Đang mở bán</span>
                                </span>                                
                            </div>
                            <div class="main_card_body">
                                <h3 class="main_card_body__title">Landmark 81 Sài Gòn</h3>
                                <div class="main_card_body__priceProject">Đang mở bán</div>
                                <div class="main_card_body__detailWrapper">
                                   <span class="main_card_body__detailIcon">
                                        <i class = "fas fa-clock"></i>
                                   </span>
                                   <span class="main_card_body__detailLabel">Thời gian đầu tư </span>
                                   <span class="main_card_body__detailValue">6 Tháng</span>
                                </div>
                                <div class="main_card_body__detailWrapper">
                                   <span class="main_card_body__detailIcon">
                                        <i class = "fas fa-dollar-sign"></i>
                                   </span>
                                   <span class="main_card_body__detailLabel">Lợi nhuận kỳ vọng</span>
                                   <span class="main_card_body__detailValue">15%</span>
                                </div>
                                <div class="main_card_divider"></div>
                                <div class="main_card_Investercontainer">
                                    <span>10 nhà đầu tư</span>
                                    <div class="main_card_Percentage">600/1.000</div>
                                </div>
                                <div class="main_card_Progresscontainer">
                                    <div class="main_card_Progress">
                                            <div class="main_card_Progressvalue" style="width:60% "></div>
                                    </div>
                                </div>
                                <div class="main_card_divider"></div>
                                <div class="main_card_Footercontainer">
                                    <div class="main_card_Footer">
                                        <div class="main_card_Footer__detailWrapper">
                                            <span class="main_card_Footer__detailIcon">
                                                <i class="fas fa-map-marker-alt"></i>
                                            </span>
                                            <span class="main_card_Footer__detailLabel">Hồ Chí Minh</span>
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
                <li class="main_itemwraper">
                    <a href="#" class="main_propertyLink">
                        <div class="main_card">
                            <div class="main_card_imgContainer">
                                <img class="main_card_imgContaine__img" src="./assets/img/toa-nha-con-ga-DN.jpg" alt="">
                                <span class="main_status">Tocken
                                    <br>
                                    <span class="main_statusBold">Đang mở bán</span>
                                </span>                                
                            </div>
                            <div class="main_card_body">
                                <h3 class="main_card_body__title">nhà thờ con gà</h3>
                                <div class="main_card_body__priceProject">Đang mở bán</div>
                                <div class="main_card_body__detailWrapper">
                                   <span class="main_card_body__detailIcon">
                                        <i class = "fas fa-clock"></i>
                                   </span>
                                   <span class="main_card_body__detailLabel">Thời gian đầu tư </span>
                                   <span class="main_card_body__detailValue">6 Tháng</span>
                                </div>
                                <div class="main_card_body__detailWrapper">
                                   <span class="main_card_body__detailIcon">
                                        <i class = "fas fa-dollar-sign"></i>
                                   </span>
                                   <span class="main_card_body__detailLabel">Lợi nhuận kỳ vọng</span>
                                   <span class="main_card_body__detailValue">18%</span>
                                </div>
                                <div class="main_card_divider"></div>
                                <div class="main_card_Investercontainer">
                                    <span>10 nhà đầu tư</span>
                                    <div class="main_card_Percentage">900/1.000</div>
                                </div>
                                <div class="main_card_Progresscontainer">
                                    <div class="main_card_Progress">
                                            <div class="main_card_Progressvalue" style="width:90% "></div>
                                    </div>
                                </div>
                                <div class="main_card_divider"></div>
                                <div class="main_card_Footercontainer">
                                    <div class="main_card_Footer">
                                        <div class="main_card_Footer__detailWrapper">
                                            <span class="main_card_Footer__detailIcon">
                                                <i class="fas fa-map-marker-alt"></i>
                                            </span>
                                            <span class="main_card_Footer__detailLabel">Đà Nẵng</span>
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
                <li class="main_itemwraper">
                    <a href="#" class="main_propertyLink">
                        <div class="main_card">
                            <div class="main_card_imgContainer">
                                <img class="main_card_imgContaine__img" src="./assets/img/ho-guom-ha-noi-avt.jpg" alt="">
                                <span class="main_status">Tocken
                                    <br>
                                    <span class="main_statusBold">Đang mở bán</span>
                                </span>                                
                            </div>
                            <div class="main_card_body">
                                <h3 class="main_card_body__title">Hồ hoàn kiếm</h3>
                                <div class="main_card_body__priceProject">Đang mở bán</div>
                                <div class="main_card_body__detailWrapper">
                                   <span class="main_card_body__detailIcon">
                                        <i class = "fas fa-clock"></i>
                                   </span>
                                   <span class="main_card_body__detailLabel">Thời gian đầu tư </span>
                                   <span class="main_card_body__detailValue">6 Tháng</span>
                                </div>
                                <div class="main_card_body__detailWrapper">
                                   <span class="main_card_body__detailIcon">
                                        <i class = "fas fa-dollar-sign"></i>
                                   </span>
                                   <span class="main_card_body__detailLabel">Lợi nhuận kỳ vọng</span>
                                   <span class="main_card_body__detailValue">15%</span>
                                </div>
                                <div class="main_card_divider"></div>
                                <div class="main_card_Investercontainer">
                                    <span>10 nhà đầu tư</span>
                                    <div class="main_card_Percentage">200/1.000</div>
                                </div>
                                <div class="main_card_Progresscontainer">
                                    <div class="main_card_Progress">
                                            <div class="main_card_Progressvalue" style="width:20% "></div>
                                    </div>
                                </div>
                                <div class="main_card_divider"></div>
                                <div class="main_card_Footercontainer">
                                    <div class="main_card_Footer">
                                        <div class="main_card_Footer__detailWrapper">
                                            <span class="main_card_Footer__detailIcon">
                                                <i class="fas fa-map-marker-alt"></i>
                                            </span>
                                            <span class="main_card_Footer__detailLabel">Hà Nội</span>
                                        </div>
                                        <div class="main_card_Footer__Footericon">
                                            <i class = " ti-angle-right"></i>
                                        </div>
                                    </div>
                                    </div>
                            </div>
                           
                        </div>
                    </a>

                </li>    -->
            </ul>
            
        </div>
    </div>
</div>