<?php include "koneksi.php";

$sqlc=mysql_query("Select * from pesanm where status='notyet'");
$rc = mysql_num_rows($sqlc);

 ?>

  <ul class="nav nav-stacked nav-pills " id="navpo">
    <li class="nav-item <?php echo $_GET['r'] == 'home' ? 'active' : '' ?>">
     <a class="nav-link" href="?r=home"><i class="glyphicon glyphicon-home"></i>  Home</a> </li>

    <li class="nav-item <?php echo $_GET['r'] == 'penyakit' ? 'active' : '' ?>">
     <a class="nav-link" href="?r=penyakit"><i class="glyphicon glyphicon-folder-close"></i>      Daftar penyakit</a></li>

    <li class="nav-item <?php echo $_GET['r'] == 'gejala' ? 'active' : '' ?>">
     <a class="nav-link" href="?r=gejala"><i class="glyphicon glyphicon-folder-close"></i>      Daftar Gejala</a></li>

    <li class="nav-item <?php echo $_GET['r'] == 'daftarmember' ? 'active' : '' ?>">
     <a class="nav-link" href="?r=daftarmember" ><i class="glyphicon glyphicon-user"></i>        Daftar User</a></li>

    <li class="nav-item <?php echo $_GET['r'] == 'hasildiagnosa' ? 'active' : '' ?>">
     <a  class="nav-link"  href="?r=hasildiagnosa"><i class="glyphicon glyphicon-ok"></i>     Hasi diagnosa</a></li>

     <li class="nav-item <?php echo $_GET['r'] == 'pesan' ? 'active' : '' ?>">
      <a  class="nav-link"  href="?r=pesan"><i class="glyphicon glyphicon-inbox"></i>     Pesan        <span class="badge"><?php echo"$rc";?></span></a></li>


 </ul>
 </div>

<div class="dh9">
 <div id="isiadmin">

  	<?php
  if(@$_GET["r"] == "home"){
    include "home.php";

  }else if(@$_GET["r"] == "penyakit"){
    include "modules/penyakit/penyakit.php";
  //}else if($_GET["r"] == "penyakitedit"){
  //  include "modules/penyakit/penyakitedit.php";
}else if(@$_GET["r"] == "penyakitdel"){
    include "modules/penyakit/penyakitdel.php";

	}else if(@$_GET["r"] == "gejala"){
    include "modules/gejala/gejala.php";
///  }else if($_GET["r"] == "gejalaedit"){
//    include "modules/gejala/gejalaedit.php";
}else if(@$_GET["r"] == "gejaladel"){
    include "modules/gejala/gejaladel.php";

  }else if(@$_GET["r"] == "daftarmember"){
    include "modules/member/daftarmember.php";
//  }else if($_GET["r"] == "daftarmemberedit"){
  //  include "modules/member/daftarmemberedit.php";
}else if(@$_GET["r"] == "daftarmemberdel"){
    include "modules/member/daftarmemberdel.php";

	}else if(@$_GET["r"] == "hasildiagnosa"){
    include "modules/hasil/hasildiagnosa.php";
  }else if(@$_GET["r"] == "lihathasil"){
    include "modules/hasil/lihathasil.php";

  }else if(@$_GET["r"] == "pesan"){
    include "modules/pesan/pesan.php";
  }else if(@$_GET["r"] == "lihatpesan"){
    include "modules/pesan/lihatpesan.php";



	}else if(@$_GET["r"] == "logout"){
    include "logout.php";


	}else{
	include "home.php";}
	?>
 </div>
