<?php
include 'admin/_config.php'; 
session_start();

include "admin/_header.php";

if (isset($_SESSION["id"])) {
  header("location: ".BASE_URL."/admin/page_user.php");
}

if (isset($_POST["login"])) {
  $username = $_POST['username'];
  $password = $_POST['password'];

  $data = mysqli_query($con, "SELECT * FROM user WHERE username ='".$username."' AND password = '".$password."'");

  if (mysqli_num_rows($data) > 0) {
    $row = mysqli_fetch_assoc($data);
    
    $_SESSION["user"] = $row["nama_user"];
    $_SESSION["id"] = $row["id_user"];
    $_SESSION["username"] = $row["username"];
  
    header("location: ".BASE_URL."/admin/index.php");
  } else {
     echo "<script>alert('Username atau password Anda salah. Silahkan coba lagi!')</script>";
  }
}

?>

<div class="d-flex align-items-center justify-content-end" style="height: 100vh; margin-right: 15%;">
  <form name="login" action="" method="POST">
    <div class="form-group">
      <label for="username">Username</label>
      <input type="text" class="form-control" id="username" name="username">
    </div>

    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" class="form-control" name="password" id="password">
    </div>

    <button type="submit" name="login" class="btn btn-primary w-100">Login</button>
  </form>
</div>

<?php include "admin/_footer.php"; ?>