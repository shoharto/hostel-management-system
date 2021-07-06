<?php
session_start();
include('includes/config.php');
if (isset($_POST['login'])) {
    $email=$_POST['email'];
    $contact=$_POST['contact'];
    $stmt=$mysqli->prepare("SELECT email,contactNo,password FROM userregistration WHERE (email=? && contactNo=?) ");
    $stmt->bind_param('ss', $email, $contact);
    $stmt->execute();
    $stmt -> bind_result($username, $email, $password);
    $rs=$stmt->fetch();
    if ($rs) {
        $pwd=$password;
    } else {
        echo "<script>alert('Invalid Email/Contact no or password');</script>";
    }
}
                ?>


<!doctype html>
<html lang="en" class="no-js">

<head>
    <title>User Forgot Password</title>
    <link rel="stylesheet" type="text/css" href="customLogin/CSS/style.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta name="author" content="Bayes Ahmed Shoharto">
</head>

<body>
    <img class="wave" src="customLogin/img/wave.png">
    <div class="container">
        <div class="img">
            <img src="customLogin/img/school.svg">
        </div>
        <div class="login-content">
            <form action="" method="post" >
                <!-- <img src="customLogin/img/avater.svg"> -->
                <img src="customLogin/img/utm_logo.png">
                <h2 class="title">Forgot <span>Password</span></h2>

                <?php if (isset($_POST['login'])) { ?>
					<p>Your Password is <span style="color:red"><?php echo $pwd;?></span><br> Change the Password After login</p>
                    <?php }  ?>
                
                    
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="div">
                        <h5>Email</h5>
                        <input type="text" class="input" name="email" >
                    </div>
                </div>
                <div class="input-div pass">
                    <div class="i">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="div">
                        <h5>Contact No</h5>
                        <input type="password" class="input" name="contact" >
                    </div>
                </div>
                <a href="index.php">Sign in?</a>
                <input type="submit" class="btn" name="login"  value="login">
            </form>
        </div>
    </div>
    <script type="text/javascript" src="customLogin/JS/main.js"></script>
</body>

</html>