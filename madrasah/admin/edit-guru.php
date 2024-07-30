<?php include 'header.php' ?>

<?php
    $guru = mysqli_query($conn, "SELECT * FROM guru WHERE id = '".$_GET['id']."'");

    if(mysqli_num_rows($guru) == 0){
        echo "<script>window.location='guru.php'</script>";
    }
    $p        = mysqli_fetch_object($guru);
?>

        <!-- content -->
        <div class="content">

            <div class="container">

                <div class="box">

                    <div class="box-header">
                    Edit guru dan staff
                    </div>

                        <div class="box-body">

                        <form action="" method="POST" enctype="multipart/form-data">

                            <div class="form-group">
                                <label>Nama Guru Atau Staff</label>
                                <input type="text" name="nama" placeholder="Nama Guru Staff" value="<?= $p->nama ?>" class="input-control" required>
                            </div>

                            <div class="form-group">
                                <label>Keterangan</label>
                                <textarea name="keterangan" id="editor" class="input-control" placeholder="keterangan"><?= $p->keterangan ?></textarea>
                            </div>


                            <div class="form-group">
                                <label>Gambar</label>
                                <img src="../uploads/guru/<?= $p->gambar ?>" width="200px" class="image">
                                <input type="hidden" name="gambar2" value="<?= $p->gambar ?>">
                                <input type="file" name="gambar" class="input-comtrol">
                            </div>

                            <button type="button" class="btn" onclick="window.location = 'guru.php'">Kembali</button>
                            <input type="submit" name="submit" value="Simpan" class="btn btn-green">

                        </form>

                        
                        <?php 
                            if(isset($_POST['submit'])){

                                $nama = addslashes(ucwords($_POST['nama'])) ;
                                $ket = addslashes($_POST['keterangan']) ;
                                $currdate = date('y-m-d H:i:s');

                                if($_FILES['gambar']['name'] != ''){

                                    //echo 'user mengganti gambar';

                                    $filename = $_FILES['gambar']['name'];
                                    $tmpname = $_FILES['gambar']['tmp_name'];
                                    $filesize = $_FILES['gambar']['size'];

                                    $formatfile = pathinfo($filename, PATHINFO_EXTENSION);
                                    $rename     = 'guru'.time().'.'.$formatfile;

                                    $allowedtype = array('png','jpg', 'jepg');

                                    if(!in_array($formatfile, $allowedtype)){
                                    
                                        echo '<div class="alert alert-error">format file tidak sesuai</div>';

                                        return false;

                                    }elseif($filesize > 1000000){
    
                                        echo '<div class="alert alert-error">ukuran file tidak terkonfirmasi</div>';

                                        return false;
    
                                    }else{

                                    if(file_exists("../uploads/guru/".$_POST['gambar2'])){
                                        unlink("../uploads/guru/".$_POST['gambar2']);
                                    }

                                    move_uploaded_file($tmpname, "../uploads/guru/".$rename);
                                }

                                }else{
                                   // echo 'user tidak mengganti gambar';

                                    $rename = $_POST['gambar2'];


                                }

                                $update = mysqli_query($conn, "UPDATE guru SET nama ='".$nama."',
                                 keterangan ='".$ket."', 
                                 gambar ='".$rename."', 
                                 update_at ='".$currdate."' 
                                 WHERE id= '".$_GET['id']."'");

                                    if($update){
                                        echo "<script>window.location ='guru.php?berhasil=Edit Data Berhasil'</script>";
                                    }else{
                                        echo 'gagal mengedit' .mysqli_error($conn);
                                    }
                            }
                        ?>

                        </div>

                </div>

            </div>
        </div>

<?php include 'footer.php' ?>