<?php
$host = 'localhost';
$user = 'root';
$pass = ''; 
$db   = 'e_shop';

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Chyba připojení: " . $conn->connect_error);
}
?>