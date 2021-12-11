<?php
	$sql_lietke_bds = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc 
                              ORDER BY id_sanpham ASC";
	$query_lietke_bds = mysqli_query($mysqli,$sql_lietke_bds);
?>
<p>Liệt kê danh mục bài viết</p>
<table class="table_lietke">
  <tr>
  	<th>Id</th>
    <th>Tên bài viết</th>
    <th>Mã bài viết</th>
    <th>Giá </th>
    <th>Hình ảnh</th>
    <th>Pháp lý</th>
    <th>Nội dung</th>

    <th style="max-width:200px">Địa chỉ map</th>
    <th>Lợi nhuận kỳ vọng</th>
    <th>Diện tích</th>
    <th>Đã bán</th>
    <th>Địa chỉ</th>
    <th>Trạng thái</th>
  	<th>Quản lý</th>
    
  
  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_bds)){
  	$i++;
  ?>
  <tr>
  	<td><?php echo $i ?></td>
    <td><?php echo $row['tensanpham'] ?></td>
    <td><?php echo $row['masp'] ?></td>
    <td><?php echo $row['giasp'] ?></td>
    <td><img src="modules/quanlybds/uploads/<?php echo $row['hinhanh'] ?>" width="150px"></td>
    <td><?php echo $row['phaply'] ?></td>
    <td class="noidung_td"><?php echo $row['noidung'] ?></td>

    <td  style="max-width:200px;    overflow: hidden;padding:10px;"><?php echo $row['diachi_map'] ?></td>
    <td><?php echo $row['loinhuankyvong'] ?></td>
    <td><?php echo $row['dientich'] ?></td>
    <td><?php echo $row['daban'] ?></td>
    <td><?php echo $row['diachi'] ?></td>

    <td><?php if($row['tinhtrang']==1){
        echo 'Đang mở bán';
      }else{
        echo 'Dự án kết thúc';
      } 
      ?>
      
    </td>
   	<td>
   		<a href="modules/quanlybds/xuly.php?id_sanpham=<?php echo $row['id_sanpham'] ?>">Xoá</a> 
       || <a href="?action=quanlybds&query=sua&id_sanpham=<?php echo $row['id_sanpham'] ?>">Sửa</a> 
   	</td>
   
  </tr>
  <?php
  } 
  ?>
 
</table>