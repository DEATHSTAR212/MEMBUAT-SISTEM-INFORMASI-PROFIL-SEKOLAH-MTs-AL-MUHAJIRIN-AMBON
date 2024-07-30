<?php include 'header.php'; ?> 

<div class="section">
    <div class="container">

        <?php
            $guru = mysqli_query($conn, "SELECT * FROM guru WHERE id = '".$_GET['id']."'");

            if(mysqli_num_rows($guru) == 0){
                echo "<script>window.location='index.php'</script>";
            }
            $p        = mysqli_fetch_object($guru);
        ?>
        <h3 class="text-center"><?= $p->nama ?></h3>
        <div class="image-container">
        <img src="uploads/guru/<?= $p->gambar ?>" width="50%" class="image">
        </div>
       <p style="margin-bottom: 10px;" class="text-center"><br><?= $p->keterangan ?></p>
    </div>

</div>

 <?php include 'footer.php'; ?> 
        