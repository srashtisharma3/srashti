<?php

$yr=1900;
if (($yr % 4 == 0 && $yr % 100 != 0) || ($yr % 400 == 0)){
    echo $yr. " is leap year.";
}
    else{
    echo $yr. " is not leap year.";
}
echo "<br>";
echo "<br>";
echo "<br>";

$n = 96;
$k= 0;
for ($i=2; $i < $n; $i++) { 
    if ($n % $i == 0) 
    {
        $k = 1;
    }
}
if ($k == 0) {
    echo $n. " is prime no.";
}
else{
    echo $n. " is not prime no.";
}

echo "<br>";
echo "<br>";

$n = 1221;
$t = $n;
$x = 0;
while(floor($n)){
    $x =  ($x * 10) + ($n % 10) ;
    $n = $n / 10;
}
// echo $x;
if($t == $x){
    echo "Yes!";
}
else{
    echo "No!";
}
echo "<br>";
echo "<br>";

?>