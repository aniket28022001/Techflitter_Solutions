<?php
$servername = "mysql";
$username = "root";
$password = "rootpassword";
$dbname = "testdb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Hello, World! Your MySQL connection is successful.";
?>
