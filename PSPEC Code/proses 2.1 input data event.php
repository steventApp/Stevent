<?php 
session start();
include 'koneksi.php';
$judul = $_POST['judul'];
$jadwal = $_POST['jadwal'];
$tempat = $_POST['tempat'];
$deskripsi = $_POST['deskripsi'];
$kategori = $_POST['kategori'];
$id_user = $_SESSION['id_user'];

mysql_query("INSERT INTO user VALUES('$judul','$jadwal','$tempat','$deskripsi','$kategori','$id_user')");

header("location:index.php?pesan=input");
?>