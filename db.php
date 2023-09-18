<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
</head>
<body>
<!-- 
<?php
if(isset($_POST['submit'])){
    $name = $_post['name'];
    $email = $_post['email'];
    $password = $_post['password'];
    $city = $_post['city'];
}
?> -->

    <form action = "act.php" method = "POST" >
        Name :  <input type="text" name="name" placeholder="Enter your name" required></input> 
        <br><br>
        Email :  <input type="text" name="email" placeholder="Enter your email" required></input>
        <br><br>
        Password :  <input type="password" name="password" placeholder="Enter password" required></input>
        <br><br>
        City :  <input type="text" name="city" placeholder="Enter your city" required></input>
        <br><br>
        <button type = "submit" name="submit"> Submit </button>
    </form>
</body>
</html>