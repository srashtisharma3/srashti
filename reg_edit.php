<?php
$conn = mysqli_connect("localhost", "root", "", "mydb");

$id = $_GET['id'];
$sql = "SELECT * FROM `form_data` WHERE no ='$id'";
$res = mysqli_query($conn, $sql);

if(mysqli_num_rows($res)>0){
    while($row = mysqli_fetch_array($res)){
        // echo $row['email']; 

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
                <div class="card">
                    <h1> Registeration Form</h1>
                </div>
                <br>
                <div class="card-body">
                    <form action="formdb.php" method="POST">
                        <div class="form-group">
                            <label for="">Email:   </label>
                            <input type="email" name="email" value="<?php echo $row['email']; ?>">
                            <br><br>
                            <label for="">Password:   </label>
                            <input type="password" name="password" value="<?php echo $row['password']?>">
                            <br><br>
                            <label for="">City:   </label>
                            <input type="text" name="city" value="<?php echo $row['city'] ?>">
                            <br><br>
                            <button class="btn btn-primary" type="submit" name="reg-btn">Submit</button>
                            <a href="form.php" class="btn btn-cancel">Cancel</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  </body>
</html>

<?php
    }
}
else{
    echo "Empty!";
}

?>