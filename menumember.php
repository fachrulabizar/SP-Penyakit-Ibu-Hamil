
  <ul class="nav nav-stacked nav-pills " id="navpo">
    <li class="nav-item <?php echo  $_GET['r'] == 'homemember' ? 'active' : '' ?>">
     <a class="nav-link" href="?r=homemember"><i class="glyphicon glyphicon-home"></i>  Home</a> </li>

    <li class="nav-item <?php echo $_GET['r'] == 'jenispenyakit' ? 'active' : '' ?>">
      <a  class="nav-link " href="?r=jenispenyakit" ><i class="glyphicon glyphicon-list"></i>   Jenis Penyakit Bumil </a></li>

    <li class="nav-item <?php echo $_GET['r'] == 'diagnosa' ? 'active' : '' ?>">
     <a class="nav-link" href="?r=diagnosa"><i class="glyphicon glyphicon-list"></i>  Diagnosa</a></li>

      <li class="nav-item <?php echo $_GET['r'] == 'bantuan' ? 'active' : '' ?>">
       <a class="nav-link" href="?r=bantuan"><i class="glyphicon glyphicon-info-sign"></i>   Bantuan Penggunaan</a></li>

      <li class="nav-item <?php echo $_GET['r'] == 'kirimpesan' ? 'active' : '' ?>">
       <a  class="nav-link " href="?r=kirimpesan" ><i class="glyphicon glyphicon-envelope"></i>   Kirim Pesan</a></li>




 </ul>
 </div>

<div class="dh9">
 <div id="isiadmin">

  	<?php
  if(@$_GET["r"] == "homemember"){
    include "modules/member/homemember.php";

  }else  if(@$_GET["r"] == "jenispenyakit"){
      include "modules/member/jenispenyakit.php";

    }else  if(@$_GET["r"] == "bantuan"){
        include "modules/member/bantuan.php";

  }else if(@$_GET["r"] == "diagnosa"){
    include "modules/konsul/diagnosa.php";
  }else if(@$_GET["r"] == "rule"){
    include "modules/konsul/rule.php";
  }else if(@$_GET["r"] == "cetak"){
    include "modules/konsul/cetak.php";


  }else if(@$_GET["r"] == "kirimpesan"){
    include "modules/pesan/kirimpesan.php";
  }else if(@$_GET["r"] == "hapuspesan"){
    include "modules/pesan/hapuspesan.php";

  }else if(@$_GET["r"] == "kotakmasuk"){
    include "modules/menuplus/kotakmasuk.php";
  }else if(@$_GET["r"] == "hasilkonsul"){
    include "modules/menuplus/hasilkonsul.php";
  }else if(@$_GET["r"] == "editprofil"){
    include "modules/menuplus/editprofil.php";

  }else if(@$_GET["r"] == "logout"){
    include "logout.php";

	}else{
	include "home.php";}
	?>
 </div>
