<?php
	$sql_sua_bv = "SELECT * FROM tbl_baiviet WHERE id_baiviet='$_GET[idbaiviet]' LIMIT 1";
	$query_sua_bv = mysqli_query($mysqli,$sql_sua_bv);
?>
<p>Sửa bài viết</p>
<table border="1" width="100%" style="border-collapse: collapse;">
<?php
while($row = mysqli_fetch_array($query_sua_bv)) {
?>
 <form method="POST" action="modules/quanlybv/xuly.php?idbaiviet=<?php echo $row['id_baiviet'] ?>" enctype="multipart/form-data">
	  <tr>
	  	<td>Tên sản phẩm</td>
	  	<td><input type="text" value="<?php echo $row['tenbaiviet'] ?>" name="tenbaiviet"></td>
	  </tr>
	   <tr>
	  	<td>Mã bài viết</td>
	  	<td><input type="text" value="<?php echo $row['mabaiviet'] ?>" name="mabaiviet"></td>
	  </tr>
	  <tr>
	  	<td>Giá </td>
	  	<td><input type="text" value="<?php echo $row['gia'] ?>" name="gia"></td>
	  </tr>
	   <tr>
	  	<td>Hình ảnh</td>
	  	<td>
	  		<input type="file" name="hinhanh">
	  		<img src="modules/quanlybv/uploads/<?php echo $row['hinhanh'] ?>" width="150px">
	  	</td>
		  <tr>
	  	<td>Pháp lý /td>
	  	<td><input type="text" value="<?php echo $row['phaply'] ?>" name="phaply"></td>
	  </tr>
	  </tr>
	   <tr>
	  	<td>Nội dung</td>
	  	<td><textarea rows="10"  name="noidung" style="resize: none"><?php echo  $row['noidung'] ?></textarea></td>
	  </tr>
	  <tr>
	    <td>Danh mục BĐS</td>
	    <td>
	    	<select name="danhmuc">
	    		<?php
	    		$sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
	    		$query_danhmuc = mysqli_query($mysqli,$sql_danhmuc);
	    		while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
	    			if($row_danhmuc['id_danhmuc']==$row['id_danhmuc']){
	    		?>
	    		<option selected value="<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></option>
	    		<?php
	    			}else{
	    		?>
	    		<option value="<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></option>
	    		<?php
	    			}
	    		} 
	    		?>
	    	</select>
	    </td>
	  </tr>
	  <tr>
	    <td>Tình trạng</td>
	    <td>
	    	<select name="tinhtrang">
	    		<?php
	    		if($row['tinhtrang']==1){ 
	    		?>
	    		<option value="1" selected>Kích hoạt</option>
	    		<option value="0">Ẩn</option>
	    		<?php
	    		}else{ 
	    		?>
	    		<option value="1">Kích hoạt</option>
	    		<option value="0" selected>Ẩn</option>
	    		<?php
	    		} 
	    		?>

	    	</select>
	    </td>
	  </tr>
	   <tr>
	    <td colspan="2"><input type="submit" name="suabaiviet" value="Sửa bài viết"></td>
	  </tr>
 </form>
 <?php
 } 
 ?>

</table>