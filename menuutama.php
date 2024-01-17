
  <ul class="nav nav-stacked nav-pills " id="navpo">
    <li class="nav-item <?php echo  $_GET['r'] == 'home' ? 'active' : '' ?>">
     <a class="nav-link" href="?r=home"><i class="glyphicon glyphicon-home"></i>  Home</a> </li>

     <li class="nav-item <?php echo $_GET['r'] == 'jenispenyakit' ? 'active' : '' ?>">
      <a  class="nav-link " href="?r=jenispenyakit" ><i class="glyphicon glyphicon-list"></i>   Jenis Penyakit Bumil</a></li>

      <li class="nav-item <?php echo $_GET['r'] == 'registeruser' ? 'active' : '' ?>">
       <a  class="nav-link "   href="?r=registeruser" ><i class="glyphicon glyphicon-pencil"></i>   Register</a></li>

    <li class="nav-item <?php echo $_GET['r'] == 'loginuser' ? 'active' : '' ?>">
     <a class="nav-link" href="?r=loginuser"><i class="glyphicon glyphicon-log-in"></i>  Login</a></li>


      <li class="nav-item <?php echo $_GET['r'] == 'bantuan' ? 'active' : '' ?>">
       <a class="nav-link" href="?r=bantuan"><i class="glyphicon glyphicon-info-sign"></i>   Petunjuk Penggunaan</a></li>



 </ul>
 </div>

<div class="dh9">
 <div id="isiadmin">

  	<?php
  if(@$_GET["r"] == "home"){
    include "home.php";


  } else if(@$_GET["r"] == "jenispenyakit"){
    include "modules/member/jenispenyakit.php";

  } else if(@$_GET["r"] == "bantuan"){
    include "modules/member/bantuan.php";

  }else if(@$_GET["r"] == "registeruser"){
    include "modules/member/registeruser.php";

	}else if(@$_GET["r"] == "loginuser"){
    include "modules/member/loginuser.php";


	}else{
	include "home.php";}
	?>
 </div>
