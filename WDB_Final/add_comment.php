<?php
// Connect to the database
$host = "localhost";
$username = "yourusername";
$password = "yourpassword";
$dbname = "yourdatabase";

$conn = mysqli_connect($host, $username, $password, $dbname);
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

// Get the form data
$event_id = $_POST['event_id'];
$author = $_POST['author'];
$comment = $_POST['comment'];

// Insert the comment into the database
$sql = "INSERT INTO comments (event_id, author, comment, created_at) VALUES ('$event_id', '$author', '$comment', NOW())";
if (mysqli_query($conn, $sql)) {
  // Redirect back to the event page
  header("Location: event.php?id=$event_id");
  exit;
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>
