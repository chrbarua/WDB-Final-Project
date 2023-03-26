<?php
// Connect to the database
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "database_name";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Retrieve the information from the database
$sql = "SELECT * FROM table_name";
$result = $conn->query($sql);

// Display each post in a stylized way
while ($row = $result->fetch_assoc()) {
  echo "<div style='display:flex;align-items:center;'>
          <img src='".$row['image']."' style='width:100px;height:100px;margin-right:10px;'>
          <div style='display:flex;flex-direction:column;'>
            <h2 style='margin:0;'>".$row['title']."</h2>
            <p>".$row['description']."</p>
            <div style='display:flex;align-items:center;'>
              <span style='font-size:24px;color:#f1c40f;'>".str_repeat("&#9733;", $row['stars'])."</span>
              <span style='font-size:16px;color:#bdc3c7;margin-left:10px;'>(".$row['reviews']." reviews)</span>
            </div>
          </div>
        </div>";
}

// Close the database connection
$conn->close();
?>
