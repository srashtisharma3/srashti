<?php
// print_r($_POST);

// if(isset($_POST['submit'])){
//     $name = $_post['name'];
//     $email = $_post['email'];
//     $password = $_post['password'];
//     $city = $_post['city'];
// }


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mydb";
$con = mysqli_connect($servername, $username, $password, $dbname);
if(!$con){
    die ("Connection failed!");
}
echo "Connection successful!";
echo "<br><br>";

// $sql = "CREATE DATABASE mydb"; 

// $sql = "CREATE TABLE details(
//     id INT(30) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
//     name VARCHAR(50) NOT NULL,
//     email VARCHAR(255) NOT NULL,
//     password VARCHAR(20) NOT NULL,
//     city VARCHAR(100) NOT NULL
//     )";

$sql = "INSERT INTO details(
     name, email, password, city) 
    VALUES( '$name', '$email', '$password', '$city'
)";

if(mysqli_query($con, $sql)){
    echo ("Successful!");
}
else
{
echo ("Failed!");
}


// $con->close();
mysqli_close($con);

?>