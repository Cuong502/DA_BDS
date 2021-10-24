<?php
include('../../config/config.php');

$tenbaiviet = $_POST['tenbaiviet'];
$mabaiviet = $_POST['mabaiviet'];
$gia = $_POST['gia'];
//xuly hinh anh
$hinhanh = $_FILES['hinhanh']['name'];
$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
$hinhanh = time().'_'.$hinhanh;

$phaply = $_POST['phaply'];
$noidung = $_POST['noidung'];

$thoigiadautu = $_POST['thoigiandautu'];
$loinhuankyvong = $_POST['loinhuankyvong'];
$sonhadautu = $_POST['sonhadautu'];
$daban = $_POST['daban'];
$diachi = $_POST['diachi'];

$tinhtrang = $_POST['tinhtrang'];
$danhmuc = $_POST['danhmuc'];


if(isset($_POST['thembaiviet'])){
	//them
	$sql_them = "INSERT INTO tbl_baiviet(tenbaiviet,mabaiviet,gia,hinhanh,phaply,noidung,thoigiandautu, loinhuankyvong,sonhadautu,daban,diachi,tinhtrang,id_danhmuc) 
	VALUE('".$tenbaiviet."','".$mabaiviet."','".$gia."', '".$hinhanh."','".$phaply."','".$noidung."',
	  '".$thoigiadautu."','".$loinhuankyvong."','".$sonhadautu."', '".$daban."','".$diachi."',   '".$tinhtrang."','".$danhmuc."')";
	mysqli_query($mysqli,$sql_them);
	move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);
	header('Location:../../index.php?action=quanlybv&query=them');
}elseif(isset($_POST['suabaiviet'])){
	//sua
	if($hinhanh!=''){
		move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);
		
		$sql_update = "UPDATE tbl_baiviet 
		SET tenbaiviet='".$tenbaiviet."',mabaiviet='".$mabaiviet."',gia='".$gia."', hinhanh='".$hinhanh."',phaply='".$phaply."',noidung='".$noidung."',
		thoigiandautu='".$thoigiadautu."',loinhuankyvong='".$loinhuankyvong."',sonhadautu='".$sonhadautu."',daban =  '".$daban." ,diachi='".$diachi."',tinhtrang='".$tinhtrang."',id_danhmuc='".$danhmuc."'
		 WHERE id_baiviet='$_GET[idbaiviet]'";
		//xoa hinh anh cu
		$sql = "SELECT * FROM tbl_baiviet WHERE id_baiviet = '$_GET[idbaiviet]' LIMIT 1";
		$query = mysqli_query($mysqli,$sql);
		while($row = mysqli_fetch_array($query)){
			unlink('uploads/'.$row['hinhanh']);
		}

	}else{
		$sql_update = "UPDATE tbl_baiviet SET tenbaiviet='".$tenbaiviet."',mabaiviet='".$mabaiviet."',gia='".$gia."',phaply='".$phaply."',noidung='".$noidung."', 
		thoigiandautu='".$thoigiadautu."',loinhuankyvong='".$loinhuankyvong."',daban =  '".$daban." ,sonhadautu='".$sonhadautu."',tinhtrang='".$tinhtrang."',id_danhmuc='".$danhmuc."' 
		WHERE id_baiviet='$_GET[idbaiviet]'";
	}
	mysqli_query($mysqli,$sql_update);
		header('Location:../../index.php?action=quanlybv&query=them');
}else{
	$id=$_GET['id_baiviet'];
	$sql = "SELECT * FROM tbl_baiviet WHERE id_baiviet = '$id' LIMIT 1";
	$query = mysqli_query($mysqli,$sql);
	while($row = mysqli_fetch_array($query)){
		unlink('uploads/'.$row['hinhanh']);
	}
	$sql_xoa = "DELETE FROM tbl_baiviet WHERE id_baiviet='".$id."'";
	mysqli_query($mysqli,$sql_xoa);
	header('Location:../../index.php?action=quanlybv&query=them');
}

?>