<?php
include '_config.php';

$id_user = $_GET['id'];
$delete = mysqli_query($con, "DELETE FROM user WHERE id_user = '".$id_user."'");

if ($delete) { ?>
    <script> alert('Data berhasil dihapus!');window.location.href = 'page_user.php'</script>
<?php } else { ?>
    <script>alert('Data Gagal dihapus!');window.location.href = 'page_user.php'</script>
<?php } ?>