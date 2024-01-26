<?php

header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");

include "config.php";

// $data = json_decode(file_get_contents("php://input"), true);

// $search = mysqli_real_escape_string($conn, $data['search']); 

$search = isset($_GET['search']) ? $_GET['search'] : die();

$sql = "SELECT * FROM users WHERE name LIKE '%$search%'";

$res = mysqli_query($conn, $sql) or die("error");

if(mysqli_num_rows($res) > 0){
    $op = mysqli_fetch_all($res, MYSQLI_ASSOC);
    echo json_encode($op);
}
else{
    echo json_encode(array("message" => "error", "status" => false));
}
