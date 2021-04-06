<?php

$host="localhost";
$username="root";
$password="";
$db_name="flutter_food";


$conn=mysqli_connect($host,$username,$password,$db_name);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";

?>