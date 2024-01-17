<html>
  <center  style="font-family:GreyscaleBasic;font-weight:bold;"> <h3> <b>PENYAKIT PADA IBU HAMIL</b> <h3> </center>

    <p align="justify">Terdapat Beberapa jenis penyakit pada ibu hamil, di antaranya adalah Torch, Hepatitis B, Anemia, dan Perdarahan.
    </p>
    <p align="justify">Dibawah ini merupakan sedikit penjelasan tentang penyakit pada ibu hamil beserta gejalanya:</p>

    <p align="left" width="100%"> <a class="btn btn-info" data-toggle="collapse" href="#p1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">1.TORCH</a></p>
    <div class="collapse multi-collapse" id="p1">
      <div class="card card-body">
        <?php
        include "koneksi.php";
        $sqlp=mysql_query("select * from penyakit where kd_penyakit='P01'");
        $rp=mysql_fetch_array($sqlp);
        ?>
        <p align='justify'><?php echo" $rp[keterangan]";  ?></p>
        <p align ='justify'>Penanggulangan yang dapat dilakukan jika terkena penyakit ini adalah : <?php echo"$rp[penanggulangan]"; ?>  </p>
        <p align='justify'>Berikut adalah daftar gejala penyakit ini:<br>
          <table class="table table-hover table-sm table-bordered">
            <thead>
              <tr id="thpo">
              <th> No </th>
              <th>Kode Gejala</th>
              <th>Nama gejala </th>
            </tr>
          </thead>
          <tbody>
          <?php
          include "koneksi.php";
          $sqlg=mysql_query("select * from gejala where kd_penyakit='P01'");
          $no=1;
          while($rg=mysql_fetch_array($sqlg)){
            echo "<tr>
              <td >$no</td>
              <td >$rg[kd_gejala]</td>
              <td>$rg[nama_gejala]</td>


            </tr>";

            $no++;
          }
          ?>
          </tbody>
        </table>
          </p>


            </p>
        </div>
      </div>

      <p align="left" > <a class="btn btn-info" data-toggle="collapse" href="#p2" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">2.HEPATITIS B</a></p>
      <div class="collapse multi-collapse" id="p2">
        <div class="card card-body">
          <?php
          include "koneksi.php";
          $sqlp=mysql_query("select * from penyakit where kd_penyakit='P02'");
          $rp=mysql_fetch_array($sqlp);
          ?>
          <p align='justify'><?php echo" $rp[keterangan]";  ?></p>
          <p align ='justify'>Penanggulangan yang dapat dilakukan jika terkena penyakit ini adalah : <?php echo"$rp[penanggulangan]"; ?>  </p>
          <p align='justify'>Berikut adalah daftar gejala penyakit ini:<br>
            <table class="table table-hover table-sm table-bordered">
              <thead>
                <tr id="thpo">
                <th> No </th>
                <th>Kode Gejala</th>
                <th>Nama gejala </th>
              </tr>
            </thead>
            <tbody>
            <?php
            include "koneksi.php";
            $sqlg=mysql_query("select * from gejala where kd_penyakit='P02'");
            $no=1;
            while($rg=mysql_fetch_array($sqlg)){
              echo "<tr>
                <td >$no</td>
                <td >$rg[kd_gejala]</td>
                <td>$rg[nama_gejala]</td>


              </tr>";

              $no++;
            }
            ?>
            </tbody>
          </table>
            </p>

          </div>
        </div>
        <p align="left"> <a class="btn btn-info" data-toggle="collapse" href="#p3" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">3.ANEMIA</a></p>
        <div class="collapse multi-collapse" id="p3">
          <div class="card card-body">
            <?php
            include "koneksi.php";
            $sqlp=mysql_query("select * from penyakit where kd_penyakit='P03'");
            $rp=mysql_fetch_array($sqlp);
            ?>
            <p align='justify' ><?php echo" $rp[keterangan]";  ?></p>
            <p align ='justify'>Penanggulangan yang dapat dilakukan jika terkena penyakit ini adalah : <?php echo"$rp[penanggulangan]"; ?>  </p>
            <p align='justify'>Berikut adalah daftar gejala penyakit ini:<br>
              <table class="table table-hover table-sm table-bordered">
                <thead>
                  <tr id="thpo">
                  <th> No </th>
                  <th>Kode Gejala</th>
                  <th>Nama gejala </th>
                </tr>
              </thead>
              <tbody>
              <?php
              include "koneksi.php";
              $sqlg=mysql_query("select * from gejala where kd_penyakit='P03'");
              $no=1;
              while($rg=mysql_fetch_array($sqlg)){
                echo "<tr>
                  <td >$no</td>
                  <td >$rg[kd_gejala]</td>
                  <td>$rg[nama_gejala]</td>


                </tr>";

                $no++;
              }
              ?>
              </tbody>
            </table>
              </p>


            </div>
          </div>
          <p align="left"> <a class="btn btn-info" data-toggle="collapse" href="#p4" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">4.KEPUTIHAN </a></p>
          <div class="collapse multi-collapse" id="p4">
            <div class="card card-body">
              <?php
              include "koneksi.php";
              $sqlp=mysql_query("select * from penyakit where kd_penyakit='P04'");
              $rp=mysql_fetch_array($sqlp);
              ?>
              <p align='justify'><?php echo" $rp[keterangan]";  ?></p>
              <p align ='justify'>Penanggulangan yang dapat dilakukan jika terkena penyakit ini adalah : <?php echo"$rp[penanggulangan]"; ?>  </p>
              <p align='justify'>Berikut adalah daftar gejala penyakit ini:<br>
                <table class="table table-hover table-sm table-bordered">
                  <thead>
                    <tr id="thpo">
                    <th> No </th>
                    <th>Kode Gejala</th>
                    <th>Nama gejala </th>
                  </tr>
                </thead>
                <tbody>
                <?php
                include "koneksi.php";
                $sqlg=mysql_query("select * from gejala where kd_penyakit='P04'");
                $no=1;
                while($rg=mysql_fetch_array($sqlg)){
                  echo "<tr>
                    <td >$no</td>
                    <td >$rg[kd_gejala]</td>
                    <td>$rg[nama_gejala]</td>


                  </tr>";

                  $no++;
                }
                ?>
                </tbody>
              </table>
                </p>


              </div>
            </div>



    </html>
