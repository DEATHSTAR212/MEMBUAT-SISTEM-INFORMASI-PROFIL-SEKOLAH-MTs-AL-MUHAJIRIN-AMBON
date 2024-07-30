<?php include 'header.php' ?>

        <!-- content -->
        <div class="content">

            <div class="container">

                <div class="box">

                    <div class="box-header">
                    Tambah Informasi atau Berita
                    </div>

                        <div class="box-body">

                        <form action="" method="POST" enctype="multipart/form-data">

                            <div class="form-group">
                                <label>Judul</label>
                                <input type="text" name="judul" placeholder="judul" class="input-control" required>
                            </div>

                            <div class="form-group">
                                <label>Keterangan</label>
                                <textarea name="keterangan" class="input-control" placeholder="keterangan" id="editor"></textarea>
                                
                            </div>


                            <div class="form-group">
                                <label>Gambar</label>
                                <input type="file" name="gambar" class="input-comtrol" required>
                            </div>

                            <button type="button" class="btn" onclick="window.location = 'informasi.php'">Kembali</button>
                            <input type="submit" name="submit" value="Simpan" class="btn btn-green">

                        </form>

                        <?php 
                            if(isset($_POST['submit'])){

                                //print_r($_FILES['gambar']);

                                $judul = addslashes(ucwords($_POST['judul'])) ;
                                $ket = addslashes($_POST['keterangan']) ;

                                $filename = $_FILES['gambar']['name'];
                                $tmpname = $_FILES['gambar']['tmp_name'];
                                $filesize = $_FILES['gambar']['size'];

                                $formatfile = pathinfo($filename, PATHINFO_EXTENSION);
                                $rename     = 'informasi'.time().'.'.$formatfile;

                                $allowedtype = array('png','jpg', 'jepg', 'png');

                                if(!in_array($formatfile, $allowedtype)){
                                    
                                    echo '<div class="alert alert-error">format file tidak sesuai</div>';
                                }elseif($filesize > 1000000){

                                    echo '<div class="alert alert-error">ukuran file tidak terkonfirmasi</div>';

                                }else{
                                    move_uploaded_file($tmpname, "../uploads/informasi/".$rename);

                                    $simpan = mysqli_query($conn, "INSERT INTO informasi VALUES (
                                        null,
                                        '".$judul."',
                                        '".$ket."',
                                        '".$rename."',
                                        null,
                                        null,
                                        '".$_SESSION['uid']."'
                                    )");
    
                                        if($simpan){
                                            echo '<div class="alert alert-success">berhasil menyimpan</div>';
                                        }else{
                                           echo 'gagal menyimpan' .mysqli_error($conn);
                                       }
                                }


                                
                            }
                        ?>

                        </div>

                </div>

            </div>
        </div>

<?php include 'footer.php' ?>