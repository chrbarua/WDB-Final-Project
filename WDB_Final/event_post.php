<!DOCTYPE html>
<html>
<head>
    <title>Event List</title>
    <style>
        .event {
            border: 1px solid black;
            padding: 10px;
            margin-bottom: 20px;
        }
        .event h2 {
            font-size: 24px;
            margin-top: 0;
        }
        .event p {
            margin: 0;
        }
    </style>
</head>
<body>
    <?php
    // PHP code to retrieve and display event information goes here
    ?>
</body>
</html>
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
	
	// Retrieve data from database
	$sql = 'SELECT * FROM events';
	$result = mysqli_query($conn, $sql);
	
	// Display data in stylized format
	while ($row = mysqli_fetch_assoc($result)) {
	    echo '<div class="event">';
	    echo '<h2>' . $row['name'] . '</h2>';
	    echo '<p>Date: ' . $row['date'] . '</p>';
	    echo '<p>Time: ' . $row['time'] . '</p>';
	    echo '<p>Location: ' . $row['location'] . '</p>';
	    echo '<p>Description: ' . $row['description'] . '</p>';
	    echo '</div>';
	}
	
	mysqli_close($conn);
	?>
</body>
</html>
