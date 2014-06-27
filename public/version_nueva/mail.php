<?php
if(isset($_POST['submit'])) {
$to = "hola@theinfluence.co";
$subject = "Form theinfluence.co";
$firstName_field = $_POST['firstName'];
$email_field = $_POST['email'];
$business_field  = $_POST['business'];
$type_field = $_POST['type'];
$lastName_field = $_POST['lastName'];
$phone_field = $_POST['phone'];
$job_field = $_POST['job'];
$country_field = $_POST['country'];
$comments_field = $_POST['comments'];
 
$body = "From: $firstName_field\n $lastName_field\n E-Mail: $email_field\n Comments: $comments_field\n Business: $business_field\n Type: $type_field\n Phone: $phone_field\n Jobs: $job_field\n Country: $country_field\n";
 
// create email headers
$headers = 'From: '.$email_field."\r\n".
'Reply-To: '.$email_field."\r\n" .
'X-Mailer: PHP/' . phpversion();
mail($to, $subject, $body, $headers);
header('Location: success.html');
}

?>





