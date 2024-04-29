<!-- CREATE TABLE tbl_categories (
    cat_id INT AUTO_INCREMENT PRIMARY KEY,
    cat_name VARCHAR(50),
    parent_catid INT
); -->


<!-- INSERT INTO tbl_categories (cat_name, parent_catid)
VALUES 
    ('clothes', 0),
    ('shirts', 1),
    ('pants', 1),
    ('saree', 1),
    ('food', 0),
    ('junk', 5),
    ('healthy', 5),
    ('electronics', 0),
    ('mobile', 8),
    ('laptop', 8); -->



<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "test";

$con = mysqli_connect($servername, $username, $password, $dbname);
if(!$con){
    die ("Connection failed!");
}
echo "Connection successful!";
echo "<br><br>";


function getAllCategory($con) {
    $categories = array();

    $sql = "SELECT * FROM `tbl_categories` WHERE parent_catid = 0";
    
    $result = mysqli_query($con, $sql);

    if ($result && mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $cat_id = $row['id'];

            $sql1 = "SELECT * FROM `tbl_categories` WHERE parent_catid = $cat_id and parent_catid != '' ";
            $result1 = mysqli_query($con, $sql1);

            // echo $sql1 ;

            if ($result1 && mysqli_num_rows($result1) > 0) {
                while ($row1 = mysqli_fetch_assoc($result1)) {
                    $categories[$cat_id][] = $row1['cat_name'];

                    // print_r($categories);
                    // die();
                }
            }
        }
    }

    return $categories;
}

$categories = getAllCategory($con);

// print_r($categories) ;

$cat = json_encode($categories, true);
echo $cat;


// output ===>>> {"1":["shirts","pants","saree"],"5":["junk","healthy"],"8":["mobile","laptop"]}



mysqli_close($con);
?>

