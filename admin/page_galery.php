<?php

include '_config.php';
session_start();

include '_header.php';

?>

<!-- content -->
<div class="container mt-5">
    <div class="card im-box">
        <h5 class="card-header">Data Galeri</h5>
        <div class="card-body">
            <h5 class="card-title">Lihat Data Galeri</h5>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalAdd">
                Tambah Data Galeri
            </button>
             <table class="table table-bordered mt-3 text-center">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col"><center>Gambar</center></th>
                        <th scope="col">ID User</th>
                        <th scope="col">Keterangan</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    $data = mysqli_query($con, "SELECT * FROM gallery");
                    foreach ($data as $row) : ?>
                        <tr>
                            <th scope="row"><?= $row['id']; ?></th>
                            <td>
                              <img src="<?= BASE_URL."/admin/img_galery/".$row['gambar']; ?>" width="150" height="150" style="background-size: cover;" />
                            </td>
                            <td><?= $row['id_user'] ?></td>
                            <td><?= $row['keterangan'] ?></td>
                            <td>
                                <a class="badge badge-success" href="galery_edit.php?id=<?= $row['id'] ?>">Edit</a>
                                <a class="badge badge-danger" href="galery_delete.php?id=<?= $row['id'] ?>" onclick="return confirm('Yakin ingin menghapus data ini?')">Delete</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>          
        </div>
    </div>
</div>
<!-- ./content -->

<!-- Modal Add -->
<div class="modal fade" id="modalAdd" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Tambah Galeri</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
               <form action="galery_add.php" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="">Gambar</label>
                        <input type="file" name="gambar" class="form-control mb-2" required>

                        <label for="">ID User</label>
                        <input type="text" name="id_user" class="form-control mb-2" value="<?= $_SESSION["id"]; ?>" readonly required>

                        <label for="">Keterangan</label>
                        <textarea rows="15" cols="100" name="keterangan" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-danger " data-dismiss="modal">Close</button>
                        <button type="submit" name="upload" class="btn btn-primary ">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ./Modal add -->



<?php
include '_footer.php';
?>