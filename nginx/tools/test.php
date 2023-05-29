<?php
$servername = "mariadb";
$username = "root";
$password = "mypassword";
$dbname = "mydatabase";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Execute query
$sql = "SELECT * FROM mytable";
$result = $conn->query($sql);

// Display results
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo "Name: " . $row["name"] . "<br>";
  }
} else {
  echo "0 results";
}

$conn->close();
?>
