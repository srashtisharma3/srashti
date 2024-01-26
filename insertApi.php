<?php

header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Origin, Access-Control-Allow-Methods, Authentication, x-requested-with");

include "config.php";

$data = json_decode(file_get_contents("php://input"), true);

$name = $data['uname'];
$email = $data['uemail'];
$pass = $data['upass'];

$sql = "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$pass')";

if(mysqli_query($conn, $sql)){
    echo json_encode(array("message" => "success", "status" => true));
}
else{
    echo json_encode(array("message" => "error", "status" => false));
}
