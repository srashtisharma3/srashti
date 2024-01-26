<?php

header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: DELETE");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Origin, Access-Control-Allow-Methods, Authentication, x-requested-with");

include "config.php";

$data = json_decode(file_get_contents("php://input"), true);

$id = $data['uid'];
$name = $data['uname'];

$sql = "DELETE FROM users WHERE id = $id";

if(mysqli_query($conn, $sql)){
    echo json_encode(array("message" => "success", "status" => true));
}
else{
    echo json_encode(array("message" => "error", "status" => false));
}

