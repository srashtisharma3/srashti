<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Testing...</title>
</head>
<body>
    <?php
    echo "<b>Srashti "."-". " sharma<b> <br>";
    echo "<b>Srashti ", " sharma<b>"; 
    // print "<b><i>Srashti<i> ", " sharma<b>"; ----//print cant work for multiple argument
    $name = "Srashti!";
    echo"<br>".$name."<br>";
    echo "My name is ".$name."<br>";
    define("num", 4048);
    echo num;
    $x = num + 1000;
    echo $x;
    echo "<br>";
    $a = 10;
    $b = 18;
    if($a < $b){
        echo "True";
    }
    elseif($a == $b){
        echo "Equal";
    }
    else{
        echo "False";
    }
    $day = 3;
    Switch($day){
        case 1: echo "mon";
        break;
        case 2: echo "tues";
        break;
        case 3: echo "wed";
        break;
        case 4: echo "thur";
        break;
        case 5: echo "fri";
        break;
        default;
    }
    echo "<br>";
    $z = 40;
    $a = $z > 20 ? "true" : "false";
    echo $a;
    echo "<br>";
    $b = 10;
    echo "<ul>";
    do{
        echo "<li>" .$b. " Hii!</li>";
        $b = $b+5;
    }while($b < 30);
    echo "</ul>";
    for($i = 1; $i <= 100; $i=$i+10){
        for($j = $i; $j<$i+10; $j++){
        echo $j." ";
        }
        echo "<br>";
    }
    for($i = 1; $i <= 10; $i++){
        if($i==5){
            // continue;
            break;
        }
        echo $i;
    }
    echo "<br>";
    function myName($fname, $lname){
        echo "My name is $fname $lname";
    }
    myName("srashti", "sharma");
    echo "<br>";
    function sum($a, $b){
        echo $a+$b;
        echo $a-$b;
        echo $a*$b;
        echo $a/$b;
    }
    sum(50, 20);
    echo "<br>";
    function hello($fn, $ln){
        $x = "$fn $ln";
        return $x;
    }
    $y = hello("srashti", "sharma");
    echo "Hello! " .$y; 
    echo "<br>";
    function fun(&$a){
        $a= "hey";
    }
    $str = "hello";
    fun($str);
    echo $str;
    echo "<br>";
    // $arr = array("blue", "black", "pink", "grey");
    $arr = ["blue", "black", "pink", "grey"];
    // echo count($arr);
    // print_r($arr);
    for($i=0; $i<=count($arr); $i++){
        echo $arr[$i];
    }
    $arr1 = array("blue"=>1, "black"=>2, "pink"=>3, "grey"=>4);
    // print_r($arr1);
    foreach($arr1 as $k => $v){
       echo $k . " = " .$v ."<br>";
    }
    $arr2 = [
        [1,"hy", 3475],
        [2,"bye", 7675],
        [3,"hi", 545],
    ];
    // print_r($arr2);
    for($i=0; $i<3; $i++){
        for($j=0; $j<3; $j++){
            echo $arr2[$i][$j]."  ";
        }
        echo "<br>";
    }
    echo "<table border='2px' cellpadding='5px' cellspacing='2px'> ";
    echo "<tr>
    <th>s no</th>
    <th>name</th>
    <th>code</th>
    </tr>";
    foreach($arr2 as $v1){
        echo "<tr>";
        foreach($v1 as $v2){
            echo "<td>" .$v2."</td>";
        }
        echo "</tr>";
    }
    echo "</table>";

    for ($i=0; $i < 5; $i++) { 
        for ($j=0; $j <= $i; $j++) { 
            echo " * ";
        }
        echo "<br>";
    }
    for ($i=5; $i >= 0; $i--) { 
        for ($j=$i; $j >= 0; $j--) { 
            echo " * ";
        }
        echo "<br>";
    }
    $n = 5;
    for ($i=0; $i < $n; $i++) { 
        for ($j=0; $j <= (2*$n)-1; $j++) {
            if(($j>=$n-($i-1)) && ($j<=$n+($i-1))) {
                echo " * ";
            }else{
                echo "&nbsp&nbsp&nbsp";
            }
        }
        echo "<br>";
    }
    echo "<br>";
    echo "<br>";
    echo "<br>";
$a = array(
    array(1,1,1),
    array(2,2,2),
    array(3,3,3)
    );
$b = array(
    array(1,1,1),
    array(2,2,2),
    array(3,3,3)
    );
// print_r($b);

for($i=0; $i<3; $i++){
    for($j=0; $j<3; $j++){
        $x[$i][$j] = 0;
        for($k=0; $k<3; $k++){
            $x[$i][$j] += $a[$i][$k] * $b[$k][$j];
        }
        echo ($x[$i][$j]);
        echo " ";
    }
        echo "<br>";
}

    echo "<br>";
    echo "<br>";
    $a = [1,2,3,4];
$b = [10,20,30,40];
echo count($a);
// $k=[];
for($i=0; $i<4; $i++){
    for($j=3; $j>=0; $j--){
    //  for($j=0; $j<4; $j++){
      $k[]=$a[$i] * $b[$j];
      $i++;
    }
}
      print_r($k);

    echo "<br>";
    echo "<br>";

    ?>
</body>
</html>