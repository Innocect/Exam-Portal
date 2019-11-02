<?php
/*
This file contains database configuration asuuming u are running 
mysql using user:"root" and password:""
*/
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'loginsys');

// for connecting to mysql
$conn = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_NAME);

if($conn == false){
    die("Cannot connect"); //equivalent to exit
}

date_default_timezone_set('Asia/Kolkata');




?>