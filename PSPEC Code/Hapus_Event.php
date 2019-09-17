<?php
session start();
include 'koneksi.php';
$event_id = $_GET['event_id'];

mysql_query("DELETE FROM event WHERE event_id='$event_id')or die(mysql_error());

header("location:index.php?pesan=hapus");
?>