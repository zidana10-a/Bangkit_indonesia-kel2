<?php

include 'admin/_config.php';

session_start();
session_destroy();

header("location: ".BASE_URL."/login.php");

?>