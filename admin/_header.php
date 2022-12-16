
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ADMIN ACCESS  || Bangkitkan Semangat Indonesia</title>
    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="<?= BASE_URL; ?>/admin/assets/style.css">
</head>

<body>
    <?php
    if (isset($_SESSION['id'])) {
    ?>
    <!-- navbar -->   
    <nav class="navbar mx-auto navbar-expand-xl navbar-light bg-light">
        <div class="d-flex flex-wrap flex-column flex-lg-row justify-content-between" style="width: 100% !important;">
            <a class="navbar-brand" href="<?= BASE_URL; ?>">Bangkitkan Semangat Indonesia</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="w-100 w-lg-50 mr-lg-1">
                <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link text-danger" href="<?= BASE_URL; ?>/admin">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-danger" href="<?= BASE_URL; ?>/admin/page_kategori.php">Kategori</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-danger" href="<?= BASE_URL ?>/admin/page_artikel.php">Artikel</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-danger" href="<?= BASE_URL ?>/admin/page_galery.php">Galeri</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-danger" href="<?= BASE_URL ?>/admin/page_user.php">User</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-danger" href="<?= BASE_URL; ?>/logout.php">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
        
    </nav>
    <!-- ./navbar -->
    <?php } ?>