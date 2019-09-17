<?php
    include 'koneksi.php';
    $id_events = $_GET['id'];
    mysql_query("UPDATE events SET status='validate' where event_id='$id'");
    header("location:index.php?pesan=input");
?>