<p>Thêm sản phẩm</p>
<table border="1" width="100%" style="border-collapse: collapse;">
 <form method="POST" action="modules/quanlybds/xuly.php" enctype="multipart/form-data">
 		
	   <tr>
	  	<td>Tên bài viết</td>
	  	<td><input type="text" name="tensanpham" required></td>
	  </tr>

	  <tr>
	  	<td>Mã BV</td>
	  	<td><input type="text" name="masp" required></td>
	  </tr>
	  <tr>
	  	<td>Giá</td>
	  	<td><input type="text" name="giasp" required></td>
	  </tr>
	  <tr>
	  	<td>Hình ảnh</td>
	  	<td><input type="file" name="hinhanh" required></td>
	  </tr>
	  <tr>
	  	<td>Pháp lý</td>
	  	<td><input type="text" name="phaply" required></td>	  
	  </tr>
	  <td>Nội dung</td>
	  	<td><textarea rows="10"  name="noidung" style="resize: none"></textarea></td>
	  </tr>


	  <tr>
	  	<td>Địa chỉ map</td>
	  	<td><input type="text" name="diachi_map" required></td>	  
	  </tr>
	  <tr>
	  	<td>Lợi nhuận kỳ vọng</td>
	  	<td><input type="text" name="loinhuankyvong" required></td>	  
	  </tr>
	  <tr>
	  	<td>Diện tích</td>
	  	<td><input type="text" name="dientich" required></td>	  
	  </tr>
	  <tr>
	  	<td>Đã bán</td>
	  	<td><input type="text" name="daban" ></td>	  
	  </tr>
	  <tr>
	  	<td>địa chỉ</td>
	  	<td><input type="text" name="diachi" required></td>	  
	  </tr>



	  <tr>
	    <td>Danh mục BĐS</td>
	    <td>
	    	<select name="danhmuc">
	    		<?php
	    		$sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc ASC";
	    		$query_danhmuc = mysqli_query($mysqli,$sql_danhmuc);
	    		while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
	    		?>
	    		<option value="<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></option>
	    		<?php
	    		} 
	    		?>
	    	</select>
	    </td>
	  </tr>
	  <tr>
	    <td>Tình trạng</td>
	    <td>
	    	<select name="tinhtrang">
	    		<option value="1">Đang mở bán</option>
	    		<option value="0">Dự án kết thúc</option>
	    	</select>
	    </td>
	  </tr>
	   <tr>
	    <td colspan="2"><input type="submit" name="themsanpham" value="Thêm sản phẩm"></td>
	  </tr>
 </form>
</table>