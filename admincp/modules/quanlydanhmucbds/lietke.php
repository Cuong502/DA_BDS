<?php
	$sql_lietke_danhmucbds = "SELECT * FROM tbl_danhmuc ORDER BY thutu ASC";
	$query_lietke_danhmucbds = mysqli_query($mysqli,$sql_lietke_danhmucbds);
?>
<p>Liệt kê danh mục</p>
<table border="1" style="width:100%;border-collapse: collapse;">
  <tr>
  	<th>Id</th>
    <th>Tên danh mục</th>
  	<th>Quản lý</th>
  
  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_danhmucbds)){
  	$i++;
  ?>
  <tr>
  	<td><?php echo $i ?></td>
    <td><?php echo $row['tendanhmuc'] ?></td>
   	<td>
   		<a href="modules/quanlydanhmucbds/xuly.php?iddanhmuc=<?php echo $row['id_danhmuc'] ?>">Xoá</a> 
       | <a href="?action=quanlydanhmucbatdongsan&query=sua&iddanhmuc=<?php echo $row['id_danhmuc'] ?>">Sửa</a> 
   	</td>
   
  </tr>
  <?php
  } 
  ?>
 
</table>