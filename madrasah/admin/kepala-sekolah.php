<?php include 'header.php' ?>

        <!-- content -->
        <div class="content">

            <div class="container">

                <div class="box">

                    <div class="box-header">
                    Kepala Sekolah
                    </div>

                        <div class="box-body">

                        <?php 
                            if(isset($_GET['success'])){
                                echo"<div class= 'alert alert-success'>".$_GET['success']."</div>";
                            }
                        ?>

                        <form action="" method="POST" enctype="multipart/form-data">

                            <div class="form-group">
                                <label>Nama Kepala sekolah</label>
                                <input type="text" name="nama" class="input-control" placeholder="Nama Kepala Sekolah" required value="<?= $d->nama_kepsek ?>">
                            </div>

                            <div class="form-group">
                                <label>Sambutan</label>
                                <textarea name="sambutan" id="editor" class="input-control" placeholder="Sambutan Kepala Sekolah"><?= $d->sambutan_kepsek ?></textarea>
                            </div>


                            
                            <div class="form-group">
                                <label>Foto Kepala Sekolah</label>
                                <img src="../uploads/identitas/<?= $d->foto_kepsek ?>" width="200px" class="image">
                                <input type="hidden" name="foto_lama" value="<?= $d->foto_kepsek ?>">
                                <input type="file" name="foto_baru" class="input-comtrol">
                            </div>


                            <input type="submit" name="submit" value="Simpan Perubahan" class="btn btn-green">

                        </form>

                        
                        <?php 
                            if(isset($_POST['submit'])){

                                
                                $nama = addslashes(ucwords($_POST['nama'])) ;
                                $sambutan = addslashes($_POST['sambutan']) ;
                                $currdate = date('y-m-d H:i:s');

                                //menampung dan validasi data foto sekolah

                                if($_FILES['foto_baru']['name'] != ''){


                                    $filename = $_FILES['foto_baru']['name'];
                                    $tmpname = $_FILES['foto_baru']['tmp_name'];
                                    $filesize = $_FILES['foto_baru']['size'];

                                    $formatfile = pathinfo($filename, PATHINFO_EXTENSION);
                                    $rename    = 'kepsek'.time().'.'.$formatfile;

                                    $allowedtype = array('png','jpg', 'jepg');

                                    if(!in_array($formatfile, $allowedtype)){
                                    
                                        echo '<div class="alert alert-error">format file foto kepala sekolah tidak sesuai</div>';

                                        return false;

                                    }elseif($filesize > 10000000){
    
                                        echo '<div class="alert alert-error">ukuran file foto kepala sekolah tidak terkonfirmasi</div>';

                                        return false;
    
                                    }else{

                                    if(file_exists("../uploads/identitas/".$_POST['foto_lama'])){
                                        unlink("../uploads/identitas/".$_POST['foto_lama']);
                                    }

                                    move_uploaded_file($tmpname, "../uploads/identitas/".$rename);
                                }

                                }else{
                                   // echo 'user tidak mengganti gambar';

                                    $rename = $_POST['foto_lama'];


                                }

                                $update = mysqli_query($conn, "UPDATE pengaturan SET 
                                 nama_kepsek ='".$nama."',
                                 sambutan_kepsek ='".$sambutan."', 
                                 foto_kepsek ='".$rename."', 
                                 updated_at ='".$currdate."' 
                                 WHERE id= '".$d->id."'");

                                    if($update){
                                        echo "<script>window.location ='kepala-sekolah.php?success=Edit Data Berhasil'</script>";
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