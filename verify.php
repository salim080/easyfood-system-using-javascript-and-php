


<!DOCTYPE html>
<html lang="en">

<?php
// echo "<div class='alert alert-success'>Email Successfully verified</div>";
    // header("login.php");

    // echo "<div style='display:none'>";
    
    // $msg = "<div class='alert alert-success'>Email Successfully verified</div>";

$servername = "localhost"; //server
$username = "root"; //username
$password = "root"; //password
$dbname = "easyfood_db";  //database

// Create connection
$db = mysqli_connect($servername, $username, $password, $dbname);

session_start();
// error_reporting(0);
$msg = "";

$update = "UPDATE users SET is_verified = '1' where email = '$_GET[email]'";
$result = mysqli_query($db,$update);
if($result){
    $msg = "Successfully verified";
    header('url:login.php');
} else{
    $_SESSION['status'] = " verification failed";
    header('registration.php');
}

?>








<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verification</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet"> </head>
</head>
<body>
    <center>
    <h1>Verification</h1>
    <div class="container">
    <div class='alert alert-success' id="msg"> <?php echo $msg; ?></div>
    <script>
        function showdiv(){
            document.getElementById('msg').style.visibility="visible";
        }
        setTimeout("showdiv()",3000);
        function hidediv(){
            document.getElementById('msg').style.visibility="hidden";
        }
        setTimeout("hidediv()", 7000);
        
        </script>
        <div><button class="success" id="redirect">Login</button>
    <script>
        document.querySelector('#redirect').addEventListener('click', ()=>{
            window.location.href="login.php";
        }
        );
    </script>
    </div>
</div>
</center>
</body>
</html>







