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
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connection successful!";
echo "<br><br>";

function getAllCategory($con)
{
    $categories = array();

    $sql = "SELECT * FROM `tbl_categories` WHERE parent_catid = 0";

    $result = mysqli_query($con, $sql);

    if (mysqli_num_rows($result) > 0) {
        
        while ($row = mysqli_fetch_assoc($result)) {

            $cat_id = $row['id'];

            $parent_name = $row['cat_name'];
            echo $parent_name;

            $categories[$parent_name] = array();


            $sql1 = "SELECT * FROM `tbl_categories` WHERE parent_catid = $cat_id and parent_catid != '' ";
            $result1 = mysqli_query($con, $sql1);

            if (mysqli_num_rows($result1) > 0) {

                while ($row1 = mysqli_fetch_assoc($result1)) {

                    $categories[$parent_name][] = $row1['cat_name'];

                    // print_r($categories);
                    // die();
                   
                }
            }
        }
    }

    return $categories;
}

$categories = getAllCategory($con);


foreach ($categories as $parentCat => $childCats) {
    echo "<b>$parentCat</b>: ";

    echo "<ul>";

    foreach ($childCats as $childCat) {
        echo "<li>$childCat</li>";
    }

    echo "</ul>";
}


// output >>>

    // clothes:
        // shirts
        // pants
        // saree
    // food:
        // junk
        // healthy
    // electronics:
        // mobile
        // laptop


mysqli_close($con);
?>


