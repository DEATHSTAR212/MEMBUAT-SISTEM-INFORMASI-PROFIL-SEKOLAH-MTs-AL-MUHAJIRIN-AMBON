<?php include 'header.php'; ?> 
<!-- bagian baner -->
      <div class="banner" style="background-image: url('uploads/identitas/<?= $d->foto_sekolah ?>');">
            <div class="banner-text">
                <div class="container">
                <h3>Selamat Datang di <?= $d->nama ?></h3>
                <p>Sekolah dimana kamu dapat memperdalam ilmu agama dan ilmu nasional</p>
                </div>
            </div>
      </div>

      <!-- bagian sambutan -->
       <div class="section" id="guru">
            
            <div class="container text-center">
                <h3>Sambutan Kepala Sekolah</h3>
                <img src="uploads/identitas/<?= $d->foto_kepsek ?>" width="100px">
                <h4><?= $d->nama_kepsek ?></h4>
                <p><?= $d->sambutan_kepsek ?></p>
            </div>
       </div>

       <!-- guru dan staf -->
        <div class="section">

            <div class="container text-center">
            <h3>Guru dan Staf</h3>

            <?php
                 $guru = mysqli_query($conn, "SELECT * FROM guru ORDER BY id DESC");
                 if(mysqli_num_rows($guru) > 0){
                    while($g = mysqli_fetch_array($guru)){
                ?>
                <div class="col-4">
                    <a href="detail-guru.php?id=<?= $g['id'] ?>" class="thumbnail-link">
                    <div class="thumbnail-box">
                        <div class="thumbnail-img" style="background-image:url('uploads/guru/<?= $g['gambar'] ?>') ;">

                        </div>

                        <div class="thumbnail-text">
                            <?= $g['nama'] ?>
                        </div>

                    </div>
                    </a>
                </div>

                    <?php }}else{ ?>

                        Tidak Ada Data

                    <?php } ?>

                   
                
            </div>
        </div>

        <!-- bagian informasi -->
         <div class="section">

            <div class="container text-center">
                <h3>Informasi dan Berita Terbaru</h3>

                <?php
                 $informasi = mysqli_query($conn, "SELECT * FROM informasi ORDER BY id DESC LIMIT 8");
                 if(mysqli_num_rows($informasi) > 0){
                     while($p = mysqli_fetch_array($informasi)){
                ?>
                <div class="col-4">
                    <a href="detail-informasi.php?id=<?= $p['id'] ?>" class="thumbnail-link">
                    <div class="thumbnail-box">
                        <div class="thumbnail-img" style="background-image:url('uploads/informasi/<?= $p['gambar'] ?>') ;">

                        </div>

                        <div class="thumbnail-text">
                            <?=substr($p['judul'], 0, 50)  ?>
                        </div>

                    </div>
                    </a>
                </div>

                    <?php }}else{ ?>

                        Tidak Ada Data

                    <?php } ?>
            </div>
         </div>
 <?php include 'footer.php'; ?> 
        