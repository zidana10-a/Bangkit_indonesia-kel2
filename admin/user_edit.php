<?php 
include '_config.php';
session_start();

include '_header.php'; 
?>
<!-- content -->
<div class="container mt-5">
    <div class="card im-box">
        <h5 class="card-header">Ubah Data User</h5>
        <div class="card-body">
            <h5 class="card-title">Form Edit User</h5>

            <?php
            $id_user = $_GET['id'];
            $nama_user = isset($_GET['nama_user']);
            $data = mysqli_query($con, "SELECT * FROM user WHERE id_user='".$id_user."'");

            while ($row = mysqli_fetch_array($data)) {
            ?>
            <form action="proses_user_edit.php" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="id_user" class="form-control" value="<?= $row["id_user"]; ?>">

                <div class="form-group">
                    <label for="">Nama Lengkap</label>
                        <input type="text" name="nama_user" class="form-control" value="<?= $row['nama_user'] ?>">
                    <label for="">Username</label>
                        <input type="text" name="username" class="form-control" value="<?= $row['username'] ?>">
                    <label for="">Password</label>
                        <input type="password" name="password" class="form-control" value="<?= $row['password'] ?>">
                </div>

                <div class="form-group">
                    <button type="button" class="btn btn-danger " onclick="history.go(-1)">Close</button>
                    <button type="submit" name="submit" class="btn btn-primary ">Update</button>
                </div>
            </form>
            <?php } ?>
        </div>
    </div>
</div>
<!-- ./content -->
<?php include '_footer.php'; ?>