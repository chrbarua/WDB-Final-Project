<?php
	// connect to the database
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "experiences_db";

	$conn = mysqli_connect($servername, $username, $password, $dbname);
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}

	// get the search parameters from the form submission
	$name = $_POST['exp_name'];
	$date = $_POST['exp_date'];
	$time = $_POST['exp_time'];
	$loc = $_POST['exp_loc'];
	$out_in = $_POST['exp_out_in'];
	$day_nt = $_POST['exp_day_nt'];
	$fd_nfd = $_POST['exp_fd_nfd'];
	$fam_adt = $_POST['exp_fam_adt'];
	$price = $_POST['exp_price'];

	// build the query string based on the search parameters
	$query = "SELECT * FROM experiences WHERE 1=1";
	if (!empty($name)) {
		$query .= " AND name LIKE '%$name%'";
	}
	if (!empty($date)) {
		$query .= " AND date = '$date'";
	}
	if (!empty($time)) {
		$query .= " AND time = '$time'";
	}
	if (!empty($loc)) {
		$query .= " AND location LIKE '%$loc%'";
	}
	if (!empty($out_in)) {
		$query .= " AND in_out = '$out_in'";
	}
	if (!empty($day_nt)) {
		$query .= " AND day_night = '$day_nt'";
	}
	if (!empty($fd_nfd)) {
		$query .= " AND paid_free = '$fd_nfd'";
	}
	if (!empty($fam_adt)) {
		$query .= " AND fam_adult = '$fam_adt'";
	}
	if (!empty($price)) {
		$query .= " AND price <= $price";
	}

	// execute the query and display the results
	$result = mysqli_query($conn, $query);
	if (mysqli_num_rows($result) > 0) {
		echo "<table>";
		echo "<tr><th>Name</th><th>Date</th><th>Time</th><th>Location</th><th>Inside/Outside</th><th>Day/Night</th><th>Free/Paid</th><th>Family/Adult</th><th>Price</th></tr>";
		while ($row = mysqli_fetch_assoc($result)) {
			echo "<tr>";
			echo "<td>" . $row['name'] . "</td>";
			echo "<td>" . $row['date'] . "</td>";
			echo "<td>" . $row['time'] . "</td>";
			echo "<td>" . $row['location'] . "</td>";
			echo "<td>" . $row['in_out'] . "</td>";
			echo "<td>" . $row['day_night'] . "</td>";
			echo "<td>" . $row['paid_free'] . "</td>";
			echo "<td>" . $row['fam_adult'] . "</td>";
			echo "<td>" . $row['price'] . "</td>";
			echo "</tr>";
		}
		echo "</table>";
	} else {
		echo "<p>Sorry, we couldn't find any experiences matching your search criteria. Please try again or <a href='add_experience.php'>add a new experience</a>.</p>";
	}

	// close the database connection
	mysqli_close($conn);
?>