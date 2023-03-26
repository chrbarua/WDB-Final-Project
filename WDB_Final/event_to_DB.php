<?php
// Connect to database
$host = 'localhost';
$user = 'username';
$password = 'password';
$database = 'database_name';

$conn = mysqli_connect($host, $user, $password, $database);
if (!$conn) {
    die('Connection failed: ' . mysqli_connect_error());
}

// Get form data
$name = mysqli_real_escape_string($conn, $_POST['event_name']);
$date = mysqli_real_escape_string($conn, $_POST['event_date']);
$time = mysqli_real_escape_string($conn, $_POST['event_time']);
$location = mysqli_real_escape_string($conn, $_POST['event_location']);
$description = mysqli_real_escape_string($conn, $_POST['event_description']);

// Insert data into database
$sql = "INSERT INTO events (name, date, time, location, description) VALUES ('$name', '$date', '$time', '$location', '$description')";
if (mysqli_query($conn, $sql)) {
    echo 'Event added successfully';
} else {
    echo 'Error adding event: ' . mysqli_error($conn);
}

mysqli_close($conn);
?>
