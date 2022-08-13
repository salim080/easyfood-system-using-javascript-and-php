<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/login.css">

	  <style type="text/css">
	  #buttn{
		  color:#fff;
		  background-color: #ff3300;
	  }
	  </style>
  
</head>

<body>
<?php
include("connection/connect.php"); //INCLUDE CONNECTION
error_reporting(0); // hide undefine index errors
session_start(); // temp sessions



// $msg = "";

// $update = "UPDATE users SET is_verified = '1' where email = '$_GET[email]'";
// $result = mysqli_query($db,$update);
// if($result){
//     $msg = "<div class='alert alert-success' id='msg'>Successfully verified</div>";
//     header('verify.php');
// } else{
// 	$msg = "<div class='alert alert-danger' id='msg'>verification failed</div>";
//     // $_SESSION['status'] = " verification failed";
//     // header('registration.php');
// }


if(isset($_POST['submit']))   // if button is submit
{
	$username = $_POST['username'];  //fetch records from login form
	$password = $_POST['password'];

  $sql ="SELECT * FROM users WHERE username='$username' AND password='".md5($password)."'";
//   $result=mysqli_query($db, $loginquery);
//   $check = mysqli_num_rows($result);
// 	if($check>0){
//     $row=mysqli_fetch_array($result);
//     $verification = $row['is_verified'];
// 		if($verification == 0){
//       $msg = "You didn't verified yet.Please check your email and verify.";
//   }else {
//     $_SESSION["user_id"] = $row['u_id']; // put user id into temp session
//     			header("refresh:1;url=index.php");
//   }
// }else{
//   $msg = "Invalid Username or Password!";
// }
if($sql->num_rows >0){
  $results = $sql->fetch_array();
  if($results['is_verified'] == 0){
    $msg = "You didn't verified yet.Please check your email and verify.";
  }else{
    $msg = "You are logged in";
  }
}else{
  $msg = "Invalid Username or Password!";
}
}


// $_SESSION["user_id"] = $row['u_id']; // put user id into temp session
// header("refresh:1;url=index.php");



// if(isset($_POST['submit']))   // if button is submit
// {
// 	$username = $_POST['username'];  //fetch records from login form
// 	$password = $_POST['password'];
	
// 	if(!empty($_POST["submit"]))   // if records were not empty
//      {
// 	$loginquery ="SELECT * FROM users WHERE username='$username' && password='".md5($password)."'"; //selecting matching records
// 	$result=mysqli_query($db, $loginquery); //executing
// 	$row=mysqli_fetch_array($result);
// 	$check = mysqli_num_rows($result);
// 	if($check>0){
// 		$row = mysqli_fetch_assoc($result);
// 		$verification = $row['is_verified'];
// 		if($verification == 0){
// 			$msg = "You didn't verified yet.Please check your email and verify.";
// 		}else{
// 			$_SESSION["user_id"] = $row['u_id']; // put user id into temp session
// 			header("refresh:1;url=index.php");
// 		}
// 	}else{
// 		$message = "Invalid Username or Password!";
// 	}
	
	                      
// 	 }
	
	
// }
?>
  
<!-- Form Mixin-->
<!-- Input Mixin-->
<!-- Button Mixin-->
<!-- Pen Title-->
<div class="pen-title">
  <h1>Login Page</h1>
</div>
<!-- Form Module-->
<div class="module form-module">
  <div class="toggle">
  
  </div>
  
  <div class="form">
 
  
    <h2>Login to your account</h2>
    <?php
    if($msg != ""){
      echo '<div class="alert alert-success">'.$msg.'</div>';
    } 
    ?>
	
	  
   
    <form action="" method="post">
      <input type="text" placeholder="Username"  name="username"/>
      <input type="password" placeholder="Password" name="password"/>
      <input type="submit" id="buttn" name="submit" value="Login" />
    </form>
  </div>
  
  <div class="cta">Not registered?<a href="registration.php" style="color:#f30;"> Create an account</a></div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

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

   



</body>

</html>






















<?php


	// if(!empty($_POST["submit"]))   // if records were not empty
  //    {
	// $loginquery ="SELECT * FROM users WHERE username='$username' && password='".md5($password)."'"; //selecting matching records
	// $result=mysqli_query($db, $loginquery); //executing
	// $row=mysqli_fetch_array($result);

	// $data = mysqli_fetch_assoc($result);

	// $info = mysqli_num_rows($result);







  // if($info != 0){
	// 	$verified = $data['is_verified'];
	// 	$uname = $data['username'];
	// 	$pass = $data['password'];
	// 	if($verified == 1){
	// 		$veri1 = "verified";
  //     // header("refresh:1;url=index.php");
	// 	}else{
	// 		$veri = "You didn't verified yet.Please check your email and verify.";
	// 	}
	// }else{
	// 	$message = "Invalid Username or Password!"; // throw error
	// }



  
//   if(is_array($row))  // if matching records in the array & if everything is right
//   {
//     if($data['is_verified'] === 1)
//     {

//       $_SESSION["user_id"] = $row['u_id']; // put user id into temp session
//        header("refresh:1;url=index.php"); // redirect to index.php page
//     }else{
      
//         $veri = "You didn't verified yet.Please check your email and verify.";
      
//     }
                        
//                 } 
// else
//     {
//                           $message = "Invalid Username or Password!"; // throw error
//                   }







	
	            //             if(is_array($row))  // if matching records in the array & if everything is right
							// 	{
              //                       	$_SESSION["user_id"] = $row['u_id']; // put user id into temp session
							// 			 header("refresh:1;url=index.php"); // redirect to index.php page
	            //                 } 
							// else
							//     {
              //                         	$message = "Invalid Username or Password!"; // throw error
//               //                   }
// 	 }
	
	
// }






































<?php


// use PHPMailer\PHPMailer\PHPMailer;
// use PHPMailer\PHPMailer\SMTP;
// use PHPMailer\PHPMailer\Exception;

// function sendMail($email,$v_code){
//     require ("PHPMailer/PHPMailer.php");
//     require ("PHPMailer/SMTP.php");
//     require ("PHPMailer/Exception.php");


//     $mail = new PHPMailer(true);

//     try {
//         //Server settings
//         $mail->isSMTP();                                            //Send using SMTP
//         $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
//         $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
//         $mail->Username   = 'salim173016@gmail.com';                     //SMTP username
//         $mail->Password   = 'S@lim123';                               //SMTP password
//         $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
//         $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
    
//         //Recipients
//         $mail->setFrom('salim173016@gmail.com', 'Salim');
//         $mail->addAddress($email);     //Add a recipient
        
//         //Content
//         $mail->isHTML(true);                                  //Set email format to HTML
//         $mail->Subject = 'Email Verification from Salim';
//         $mail->Body    = "<b>Thanks for registration!</b> Click the link below to verify the email
//          <a href='http://localhost/tayeb/Foodpicky/verify.php?email=$email&v_code=$v_code'>Verify</a>";
    
//         $mail->send();
//         return true;
//         // echo 'Message has been sent';
//     }
//      catch (Exception $e) {
//        return false;
//         // echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
//     }





// }




// <ul>
//                      <li><a href="#" class="active">
					//   <span style="color:red;"><?php echo $message; ?>
                    <!-- </span> -->
<!-- //                       <span style="color:green;">
<!--                       <?php // echo $success; ?> -->
<!-- // 										</span>
					   
// 					</a></li>
                    
//                   </ul> --> -->








// // include("connection/connect.php"); // connection