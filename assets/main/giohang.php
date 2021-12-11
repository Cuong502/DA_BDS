<div class="giohanh">
  
  <?php
    if(isset($_SESSION['cart'])){  
    }
  ?>
  <table style="width:100%;text-align: center; float:left;">
    <tr style="border-bottom:2px solid #000; line-height: 30px;">
      <th style="width:5%">Id</th>
      <th colspan="2" style="width:50% ;">Tên sản phẩm</th>
      <th style="width:10%">Giá sản phẩm</th>
      <th style="width:8%">Số lượng</th>
      <th style="width:22%">Thành tiền</th>
      <th></th>
    
    </tr>
    <?php
    if(isset($_SESSION['cart'])){
      $i = 0;
      $tongtien = 0;
      foreach($_SESSION['cart'] as $cart_item){
        $thanhtien = $cart_item['soluong']*$cart_item['giasp'];
        $tongtien+=$thanhtien;
        $i++;
    ?>
    <tr class="giohang_tr">
      <td><?php echo $i; ?></td>
      <td style="margin:0;padding:10px 0 0 0;"><img src="admincp/modules/quanlybds/uploads/<?php echo $cart_item['hinhanh']; ?>" width="200px"></td>
      <td style="text-align:left;"><?php echo $cart_item['tensanpham']; ?></td>
      <td><?php echo number_format($cart_item['giasp'],0,',','.').'vnđ'; ?></td>
      <td>
        <a href="assets/main/themgiohang.php?cong=<?php echo $cart_item['id'] ?>"><i class="fa fa-plus fa-style" aria-hidden="true"></i></a>
        <?php echo $cart_item['soluong']; ?>
        <a href="assets/main/themgiohang.php?tru=<?php echo $cart_item['id'] ?>"><i class="fa fa-minus fa-style" aria-hidden="true"></i></a>

      </td>
      <td><?php echo number_format($thanhtien,0,',','.').'vnđ' ?></td>
      <td><a href="assets/main/themgiohang.php?xoa=<?php echo $cart_item['id'] ?>"><i class="far fa-trash-alt" style="color:red;"></i></a></td>
    </tr>
    <?php
      }
    ?>
    <tr>
      <td colspan="8">
        <p style="float: right;padding-right: 130px; font-weight:600;">Tổng tiền : <?php echo number_format($tongtien,0,',','.').'vnđ' ?></p><br/>
        <p style="float: right;"><a style="text-decoration: none; color:red; font-weight:500;" href="assets/main/themgiohang.php?xoatatca=1">Delete All</a></p>
        <div style="clear: both;"></div>
        <?php
          if(isset($_SESSION['dangky'])){
            ?> 
            <p><a style="text-decoration: none; color:#FFF; background-color: #5cb85c; padding:10px 20px ; margin-top:30px; border-radius: 4px;" href="assets/main/thanhtoan.php">Đặt hàng </a></p>
        <?php
          }else{
        ?>
          <p><a style="text-decoration: none; color:#FFF; background-color: #5cb85c; padding:10px 20px ; margin-top:30px; border-radius: 4px;" href="index.php?quanly=dangnhap">Dăng nhập để đặt hàng</a></p>
        <?php
          }
        ?>
      </td>
    </tr>
    <?php	
    }else{ 
    ?>
    <tr>
      <td colspan="8">
        <p>Hiện tại giỏ hàng trống .</p>
        
      </td>
    
    </tr>
    <?php
    } 
    ?>
  </table>
</div>