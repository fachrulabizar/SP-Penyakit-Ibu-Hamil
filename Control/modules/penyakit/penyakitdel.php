<?php
include "koneksi.php";
$sqlp = mysql_query("delete from penyakit where id_penyakit='$_GET[idp]'");
if($sqlp){
  echo "<div align='center'class='alert alert-success'>
              <strong>Data Berhasil Dihapus!
                </div>";
  }else{
    echo "<div align='center'class='alert alert-success'>
                <strong>Data Gagal Dihapus!
                  </div>";
  }
echo "<META HTTP-EQUIV='Refresh' Content='1; url=?r=penyakit'>";
?>
