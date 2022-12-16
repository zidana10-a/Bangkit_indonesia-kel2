<?php 

include "_config.php";
session_start();

include '_header.php';

?>
<!-- content -->
<div class="container mt-5">
    <div class="card im-box">
        <h5 class="card-header">Data Kategori</h5>
        <div class="card-body">
            <h5 class="card-title">Lihat Data Kategori</h5>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalAdd">
                Tambah Data Kategori
            </button>
            <table class="table table-bordered mt-3 ">
                <thead>
                    <tr>
                        <th scope="col"><center>ID</center></th>
                        <th scope="col"><center>Kategori</center></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $i = 1;
                    $data = mysqli_query($con, "SELECT * FROM kategori");
                    foreach ($data as $row) : ?>
                        <tr>
                            <td scope="row" class="text-center"><?= $row["id_kategori"] ?></td>
                            <td><?= $row['kategori'] ?></td>
                            <td>
                                <center>
                                <a class="badge badge-success" href="<?= BASE_URL; ?>/admin/page_edit.php?id_kategori=<?= $row['id_kategori'] ?>">Edit</a>
                                <a class="badge badge-danger" href="<?= BASE_URL; ?>/admin/kategori_delete.php?id_kategori=<?= $row['id_kategori'] ?>" onclick="return confirm('Yakin ingin menghapus data ini?')">Delete</a>
                                </center>
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
                <h5 class="modal-title">Tambah Kategori</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="proses_add.php" method="POST">
                    <div class="form-group">
                        <label for="">Kategori</label>
                        <input type="text" name="kategori" class="form-control">
                    </div>
                    <div class="form-group">
                        <button type="reset" class="btn btn-danger " data-dismiss="modal">Close</button>
                        <button type="submit" name="submit" class="btn btn-primary ">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ./Modal add -->


<?php include '_footer.php'; ?>