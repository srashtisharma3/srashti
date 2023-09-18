<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mydb";
$conn = mysqli_connect($servername, $username, $password, $dbname);

if(isset($_POST['reg-btn'])){
$email = $_POST['email'];
$password = $_POST['password'];
$city = $_POST['city'];

// echo $email;

$sql = "INSERT INTO `form_data`(`email`, `password`, `city`) VALUES ('$email','$password','$city')";
$result = mysqli_query($conn, $sql);

if ($result) {
    echo "Saved!";
    header('location: form.php');
} else {
    echo "Error!";
    header('location: register.php');
}
mysqli_close($conn);
}
?>
