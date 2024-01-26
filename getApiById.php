<?php

header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

include "config.php";

$data = json_decode(file_get_contents("php://input"), true);

$id = $data['uid'];

$sql = "SELECT * FROM users where id = ".$id;

$res = mysqli_query($conn, $sql) or die("error");

if(mysqli_num_rows($res) > 0){
    $op = mysqli_fetch_all($res, MYSQLI_ASSOC);
    echo json_encode($op);
}
else{
    echo json_encode(array("message" => "error", "status" => false));
}
