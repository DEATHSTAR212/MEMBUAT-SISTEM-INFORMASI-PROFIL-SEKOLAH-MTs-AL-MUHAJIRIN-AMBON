<?php include 'header.php'; ?> 

<div class="section">
    <div class="container">

        <h3 class="text-center">Tentang Sekolah</h3>
        <img src="uploads/identitas/<?= $d->foto_sekolah ?>" width="100%%" class="image">
        <p class="text-center"><br><?= $d->tentang_sekolah ?></p>
        <h4 class="text-center"><br>VISI<p class="text-center"><br><?= $d->visi ?></p></h4>
        <h4 class="text-center"><br>MISI<p class="text-center"><br><?= $d->misi ?></p></h4>
       
    </div>

</div>

 <?php include 'footer.php'; ?> 
        