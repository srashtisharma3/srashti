<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mydb";
$conn = mysqli_connect($servername, $username, $password, $dbname);

?>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  </head>
  <body>
    <!-- <h1>Hello, world!</h1> -->
    <div class="container">
        <div class="row">
            <div class="col">
                <head>
                    <h1>Form <a href="register.php" class="form"> (Register here) </a></h1>
                </head>
                <div class="card">         
                    <?php
                    $sql="SELECT * FROM `form_data`";
                    $row=mysqli_query($conn, $sql);

                    if(mysqli_num_rows($row)>0){
                    
                    ?>           
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>City</th>
                                <th>pincode</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            while($row_data = mysqli_fetch_array($row)){
                            ?>
                            <tr>
                            <td> <?php echo $row_data['no']; ?> </td>
                            <td> <?php echo $row_data['email']; ?> </td>
                            <td> <?php echo $row_data['password']; ?> </td>
                            <td> <?php echo $row_data['city']; ?> </td>
                                <td class="btn-green"><a href="reg_edit.php?id=<?php echo $row_data['no']; ?>">Edit</a></td>
                                <td class="btn-red"><a href="reg_delete.php">Delete</a></td>
                            </tr>
                            <!-- <tr>
                                <td>Sem</td>
                                <td>Jaipur</td>
                                <td>302022</td>
                                <td class="btn-green"><a href="reg_edit.php">Edit</a></td>
                                <td class="btn-red"><a href="reg_delete.php">Delete</a></td>
                            </tr> -->
                            <?php
                            }
                            ?>                            
                        </tbody>
                    </table>
                    <?php
                    }
                    else{
                        echo "No record found!";
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  </body>
</html>