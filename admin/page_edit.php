<?php 
include '_config.php';
session_start();

include '_header.php';
 ?>
<!-- content -->
<div class="container mt-5">
    <div class="card im-box">
        <h5 class="card-header">Ubah Data kategori</h5>
        <div class="card-body">
            <h5 class="card-title">Form Edit Kategori</h5>

            <?php
            $id_kategori = $_GET['id_kategori'];
            $kategori = isset($_GET['kategori']);
            $data = mysqli_query($con, "SELECT * FROM kategori WHERE id_kategori = '$id_kategori'");
            $row = mysqli_fetch_array($data); 
            ?>

            <form action="proses_edit.php" method="POST">
                <input type="hidden" name="id_kategori" class="form-control" value="<?= $row['id_kategori'] ?>">
                <div class="form-group">
                    <label for="">Kategori</label>
                    <input type="text" name="kategori" class="form-control" id="kategori" value="<?= $row['kategori'] ?>">
                </div>
                <div class="form-group">
                    <button type="submit" name="submit" class="btn btn-primary ">Submit</button>
                    <button type="button" class="btn btn-danger " onclick="history.go(-1)">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- ./content -->
<?php include '_footer.php';
