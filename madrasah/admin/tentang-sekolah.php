<?php include 'header.php' ?>

        <!-- content -->
        <div class="content">

            <div class="container">

                <div class="box">

                    <div class="box-header">
                    Tentang Sekolah
                    </div>

                        <div class="box-body">

                        <?php 
                            if(isset($_GET['success'])){
                                echo"<div class= 'alert alert-success'>".$_GET['success']."</div>";
                            }
                        ?>

                        <form action="" method="POST" enctype="multipart/form-data">

                            <div class="form-group">
                                <label>Tentang sekolah</label>
                                <textarea name="tentang" id="editor" class="input-control" placeholder="Tentang Sekolah"><?= $d->tentang_sekolah ?></textarea>
                            </div>

                            <div class="form-group">
                                <label>Visi</label>
                                <textarea name="visi" id="editor" class="input-control" placeholder="visi"><?= $d->visi ?></textarea>
                            </div>

                            <div class="form-group">
                                <label>Misi</label>
                                <textarea name="misi" id="editor" class="input-control" placeholder="Misi"><?= $d->misi ?></textarea>
                            </div>

                            
                            <div class="form-group">
                                <label>Foto Sekolah</label>
                                <img src="../uploads/identitas/<?= $d->foto_sekolah ?>" width="200px" class="image">
                                <input type="hidden" name="foto_lama" value="<?= $d->foto_sekolah ?>">
                                <input type="file" name="foto_baru" class="input-comtrol">
                            </div>


                            <input type="submit" name="submit" value="Simpan Perubahan" class="btn btn-green">

                        </form>

                        
                        <?php 
                            if(isset($_POST['submit'])){

                                
                                $tentang = addslashes($_POST['tentang']) ;
                                $visi = addslashes($_POST['visi']) ;
                                $misi = addslashes($_POST['misi']) ;
                                $currdate = date('y-m-d H:i:s');

                                //menampung dan validasi data foto sekolah

                                if($_FILES['foto_baru']['name'] != ''){


                                    $filename = $_FILES['foto_baru']['name'];
                                    $tmpname = $_FILES['foto_baru']['tmp_name'];
                                    $filesize = $_FILES['foto_baru']['size'];

                                    $formatfile = pathinfo($filename_foto, PATHINFO_EXTENSION);
                                    $rename    = 'sekolah'.time().'.'.$formatfile_foto;

                                    $allowedtype = array('png','jpg', 'jepg');

                                    if(!in_array($formatfile, $allowedtype)){
                                    
                                        echo '<div class="alert alert-error">format file foto sekolah tidak sesuai</div>';

                                        return false;

                                    }elseif($filesize > 100000){
    
                                        echo '<div class="alert alert-error">ukuran file foto tidak terkonfirmasi</div>';

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
                                 tentang_sekolah ='".$tentang."',
                                 visi ='".$visi."',
                                 misi ='".$misi."', 
                                 foto_sekolah ='".$rename."', 
                                 updated_at ='".$currdate."' 
                                 WHERE id= '".$d->id."'");

                                    if($update){
                                        echo "<script>window.location ='tentang-sekolah.php?success=Edit Data Berhasil'</script>";
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