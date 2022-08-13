<?php
include("connection/connect.php"); //connection to db
error_reporting(0);
session_start();


// sending query
// mysqli_query($db,"DELETE FROM users_orders WHERE o_id = '".$_GET['order_del']."'"); // deletig records on the bases of ID
// header("location:your_orders.php");  //once deleted success redireted back to current page


$delete = mysqli_query($db,"DELETE FROM users_orders WHERE o_id = '".$_GET['order_del']."'");
if($delete){
    echo "<div style='display:none'>";
    //Create an instance; passing `true` enables exceptions
     $mail = new PHPMailer(true);

     try {
     //Server settings
    $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
    $mail->isSMTP();                                            //Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
    $mail->Username   = 'thcoln.tayeb@gmail.com';                     //SMTP username
    $mail->Password   = 'idbvooechiqvpdcj';                               //SMTP password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
    $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

    //Recipients
    $mail->setFrom('thcoln.tayeb@gmail.com', 'Tayeb');
    $email = $_SESSION['email'];
    $mail->addAddress($email);     //Add a recipient   

    //Content
    $mail->isHTML(true);                                  //Set email format to HTML
    $mail->Subject = 'Delete Order';
    $mail->Body    =  "<b>Your Order has been delete successfully!</b>
    ";
    

    $mail->send();
        echo 'Message has been sent';
    } catch (Exception $e) {
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }
    echo "</div>";
// $success = "Thank you! Your Order Placed Successfully!";
header("location:your_orders.php"); 

} else {
    $danger = "Sorry! Your Order is not Placed Successfully!";
}


?>
