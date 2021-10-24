<?php
	$sql_lietke_bv = "SELECT * FROM tbl_baiviet,tbl_danhmuc WHERE tbl_baiviet.id_danhmuc=tbl_danhmuc.id_danhmuc 
                              ORDER BY id_baiviet ASC";
	$query_lietke_bv = mysqli_query($mysqli,$sql_lietke_bv);
?>
<p>Liệt kê danh mục bài viết</p>
<table style="width:100%" border="1" style="border-collapse: collapse;">
  <tr>
  	<th>Id</th>
    <th>Tên bài viết</th>
    <th>Mã bài viết</th>
    <th>Giá </th>
    <th>Hình ảnh</th>
    <th>Pháp lý</th>
    <th>Nội dung</th>

    <th>thời gian đầu tư</th>
    <th>Lợi nhuận kỳ vọng</th>
    <th>số nhà đầu tư</th>
    <th>Đã bán</th>
    <th>địa chỉ</th>
    <th>Trạng thái</th>
  	<th>Quản lý</th>
    
  
  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_bv)){
  	$i++;
  ?>
  <tr>
  	<td><?php echo $i ?></td>
    <td><?php echo $row['tenbaiviet'] ?></td>
    <td><?php echo $row['mabaiviet'] ?></td>
    <td><?php echo $row['gia'] ?></td>
    <td><img src="modules/quanlybv/uploads/<?php echo $row['hinhanh'] ?>" width="150px"></td>
    <td><?php echo $row['phaply'] ?></td>
    <td><?php echo $row['noidung'] ?></td>

    <td><?php echo $row['thoigiandautu'] ?></td>
    <td><?php echo $row['loinhuankyvong'] ?></td>
    <td><?php echo $row['sonhadautu'] ?></td>
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
   		<a href="modules/quanlybv/xuly.php?id_baiviet=<?php echo $row['id_baiviet'] ?>">Xoá</a> 
       || <a href="?action=quanlybv&query=sua&id_baiviet=<?php echo $row['id_baiviet'] ?>">Sửa</a> 
   	</td>
   
  </tr>
  <?php
  } 
  ?>
 
</table>