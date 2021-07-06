<?php
session_start();
include('includes/config.php');
if (isset($_POST['login'])) {
    $username=$_POST['username'];
    $password=$_POST['password'];
    $stmt=$mysqli->prepare("SELECT username,email,password,id FROM manager WHERE (userName=?|| email=?) and password=? ");
    $stmt->bind_param('sss', $username, $username, $password);
    $stmt->execute();
    $stmt -> bind_result($username, $username, $password, $id);
    $rs=$stmt->fetch();
    $_SESSION['id']=$id;
    $uip=$_SERVER['REMOTE_ADDR'];
    $ldate=date('d/m/Y h:i:s', time());
    if ($rs) {
        //  $insert="INSERT into admin(adminid,ip)VALUES(?,?)";
        // $stmtins = $mysqli->prepare($insert);
        // $stmtins->bind_param('sH',$id,$uip);
        //$res=$stmtins->execute();
        header("location:dashboard.php");
    } else {
        echo "<script>alert('Invalid Username/Email or password');</script>";
    }
}
                ?>

<!doctype html>
<html lang="en" class="no-js">

<head>
    <title>Manager login</title>
    <link rel="stylesheet" type="text/css" href="../customLogin/CSS/style.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta name="author" content="Bayes Ahmed Shoharto">
</head>

<body>
    <img class="wave" src="../customLogin/img/wave.png">
    <div class="container">
        <div class="img">
            <img src="../customLogin/img/school.svg">
        </div>
        <div class="login-content">
            <form action="" method="post" >
                <!-- <img src="../customLogin/img/avater.svg"> -->
                <img src="../customLogin/img/utm_logo.png">
                <h2 class="title">Welcome <span>eHostel</span></h2>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="div">
                        <h5>Email</h5>
                        <input type="text" class="input" name="username" >
                    </div>
                </div>
                <div class="input-div pass">
                    <div class="i">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="div">
                        <h5>Password</h5>
                        <input type="password" class="input" name="password" >
                    </div>
                </div>
                <!-- <a href="#">Forgot Password?</a> -->
                <input type="submit" class="btn" name="login"  value="login">
            </form>
        </div>
    </div>
    <script type="text/javascript" src="../customLogin/JS/main.js"></script>
</body>

</html>