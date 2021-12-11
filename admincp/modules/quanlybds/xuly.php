<?php
include('../../config/config.php');

$tensanpham = $_POST['tensanpham'];
$masp = $_POST['masp'];
$giasp = $_POST['giasp'];
//xuly hinh anh
$hinhanh = $_FILES['hinhanh']['name'];
$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
$hinhanh = time().'_'.$hinhanh;

$phaply = $_POST['phaply'];
$noidung = $_POST['noidung'];

$diachi_map = $_POST['diachi_map'];
$loinhuankyvong = $_POST['loinhuankyvong'];
$dientich = $_POST['dientich'];
$daban = $_POST['daban'];
$diachi = $_POST['diachi'];

$tinhtrang = $_POST['tinhtrang'];
$danhmuc = $_POST['danhmuc'];


if(isset($_POST['themsanpham'])){
	//them
	$sql_them = "INSERT INTO tbl_sanpham(tensanpham,masp,giasp,hinhanh,phaply,noidung,diachi_map, loinhuankyvong,dientich,daban,diachi,tinhtrang,id_danhmuc) 
	VALUE('".$tensanpham."','".$masp."','".$giasp."', '".$hinhanh."','".$phaply."','".$noidung."',
	  '".$diachi_map."','".$loinhuankyvong."','".$dientich."', '".$daban."','".$diachi."',   '".$tinhtrang."','".$danhmuc."')";
	mysqli_query($mysqli,$sql_them);
	move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);
	header('Location:../../index.php?action=quanlybds&query=them');
}elseif(isset($_POST['suasanpham'])){
	//sua
	if(!empty($_FILES['hinhanh']['name'])){
		move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);
		
		$sql_update = "UPDATE tbl_sanpham 
		SET tensanpham='".$tensanpham."',masp='".$masp."',giasp='".$giasp."', hinhanh='".$hinhanh."',phaply='".$phaply."',noidung='".$noidung."',diachi_map='".$diachi_map."',loinhuankyvong='".$loinhuankyvong."',dientich='".$dientich."',daban =  '".$daban." ,diachi='".$diachi."',tinhtrang='".$tinhtrang."',id_danhmuc='".$danhmuc."'
		 WHERE id_sanpham='$_GET[idsanpham]'";
		//xoa hinh anh cu
		$sql = "SELECT * FROM tbl_sanpham WHERE id_sanpham = '$_GET[idsanpham]' LIMIT 1";
		$query = mysqli_query($mysqli,$sql);
		while($row = mysqli_fetch_array($query)){
			unlink('uploads/'.$row['hinhanh']);
		}

	}else{
		$sql_update = "UPDATE tbl_sanpham SET tensanpham='".$tensanpham."',masp='".$masp."',giasp='".$giasp."',phaply='".$phaply."',noidung='".$noidung."', diachi_map='".$diachi_map."',loinhuankyvong='".$loinhuankyvong."',daban =  '".$daban." ,dientich='".$dientich."',tinhtrang='".$tinhtrang."',id_danhmuc='".$danhmuc."' 
		WHERE id_sanpham='$_GET[idsanpham]'";
	}
	mysqli_query($mysqli,$sql_update);
		header('Location:../../index.php?action=quanlybds&query=them');
}else{
	$id=$_GET['id_sanpham'];
	$sql = "SELECT * FROM tbl_sanpham WHERE id_sanpham = '$id' LIMIT 1";
	$query = mysqli_query($mysqli,$sql);
	while($row = mysqli_fetch_array($query)){
		unlink('uploads/'.$row['hinhanh']);
	}
	$sql_xoa = "DELETE FROM tbl_sanpham WHERE id_sanpham='".$id."'";
	mysqli_query($mysqli,$sql_xoa);
	header('Location:../../index.php?action=quanlybds&query=them');
}
?>