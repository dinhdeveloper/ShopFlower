<?php
if(isset($_GET["id"])){
    $maLoaiSanPham = $_GET["id"];

    $sql = "UPDATE LoaiSanPham SET BiXoa = 1- BiXoa WHERE MaLoaiSanPham = $maLoaiSanPham";

    DataProvider::ExecuteQuery($sql);
    DataProvider::ChangeURL("index.php?c=3");
} else {
    DataProvider::ChangeURL("index.php?c=404");
}
?>