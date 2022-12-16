<?php
$con = mysqli_connect('localhost', 'root', '', 'bangkit_indonesia');

if (!$con) {
    echo 'Gagal terhubung ke database';
    die;
}

define("BASE_URL", "/bangkit_indonesia-kel2");
