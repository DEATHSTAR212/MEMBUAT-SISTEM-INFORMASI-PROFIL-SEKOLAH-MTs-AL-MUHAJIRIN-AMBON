<?php include 'header.php' ?>

        <!-- content -->
        <div class="content">

            <div class="container">

                <div class="box">

                    <div class="box-header">
                    Daftar guru atau staf
                    </div>

                        <div class="box-body">

                        <form action="" method="POST" enctype="multipart/form-data">

                            <div class="form-group">
                                <label>Nama Guru Atau Staff</label>
                                <input type="text" name="nama" placeholder="Nama Guru Staff" class="input-control" required>
                            </div>

                            <div class="form-group">
                                <label>Keterangan</label>
                                <textarea name="keterangan" id="editor" class="input-control" placeholder="keterangan"></textarea>
                            </div>


                            <div class="form-group">
                                <label>Gambar</label>
                                <input type="file" name="gambar" class="input-comtrol" required>
                            </div>

                            <button type="button" class="btn" onclick="window.location = 'guru.php'">Kembali</button>
                            <input type="submit" name="submit" value="Simpan" class="btn btn-green">

                        </form>

                        <?php 
                            if(isset($_POST['submit'])){

                                //print_r($_FILES['gambar']);

                                $nama = addslashes(ucwords($_POST['nama'])) ;
                                $ket = addslashes($_POST['keterangan']) ;

                                $filename = $_FILES['gambar']['name'];
                                $tmpname = $_FILES['gambar']['tmp_name'];
                                $filesize = $_FILES['gambar']['size'];

                                $formatfile = pathinfo($filename, PATHINFO_EXTENSION);
                                $rename     = 'guru'.time().'.'.$formatfile;

                                $allowedtype = array('png','jpg', 'jepg', 'png');

                                if(!in_array($formatfile, $allowedtype)){
                                    
                                    echo '<div class="alert alert-error">format file tidak sesuai</div>';
                                }elseif($filesize > 1000000){

                                    echo '<div class="alert alert-error">ukuran file tidak terkonfirmasi</div>';

                                }else{
                                    move_uploaded_file($tmpname, "../uploads/guru/".$rename);

                                    $simpan = mysqli_query($conn, "INSERT INTO guru VALUES (
                                        null,
                                        '".$nama."',
                                        '".$ket."',
                                        '".$rename."',
                                        null,
                                        null
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