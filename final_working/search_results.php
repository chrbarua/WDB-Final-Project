<?php
include ('user_session.php');
require('db.php');
error_reporting(E_ALL);
ini_set('display_errors', 1);

	// get the search parameters from the form submission
	$name = $_POST['EXP_NAME'];
	$date = $_POST['EXP_DATE'];
	$time = $_POST['EXP_TIME'];
	$loc = $_POST['EXP_LOC'];
	$out_in = $_POST['EXP_OUT_IN'];
	$day_nt = $_POST['EXP_DAY_NT'];
	$fd_nfd = $_POST['EXP_FD_NFD'];
	$fam_adt = $_POST['EXP_FAM_ADT'];
	$price = $_POST['EXP_PRICE'];

	// build the query string based on the search parameters
	$query = "SELECT * FROM EXPERIENCES WHERE 1=1";
	if (!empty($name)) {
		$query .= " AND EXP_NAME LIKE '%$name%'";
	}
	if (!empty($date)) {
		$query .= " AND EXP_DATE = '$date'";
	}
	if (!empty($time)) {
		$query .= " AND EXP_TIME = '$time'";
	}
	if (!empty($loc)) {
		$query .= " AND EXP_LOC LIKE '%$loc%'";
	}
	if (!empty($out_in)) {
		$query .= " AND EXP_OUT_IN = '$out_in'";
	}
	if (!empty($day_nt)) {
		$query .= " AND EXP_DAY_NT = '$day_nt'";
	}
	if (!empty($fd_nfd)) {
		$query .= " AND EXP_FD_NFD = '$fd_nfd'";
	}
	if (!empty($fam_adt)) {
		$query .= " AND EXP_FAM_ADT = '$fam_adt'";
	}
	if (!empty($price)) {
		$query .= " AND EXP_PRICE <= $price";
	}

echo "<p>You searched for:</p>";
echo "<ul>";
echo "<li>Name: " . $name . "</li>";
echo "<li>Date: " . $date . "</li>";
echo "<li>Time: " . $time . "</li>";
echo "<li>Location: " . $loc . "</li>";
echo "<li>Inside/Outside: " . $out_in . "</li>";
echo "<li>Day/Night: " . $day_nt . "</li>";
echo "<li>Free/Paid: " . $fd_nfd . "</li>";
echo "<li>Family/Adult: " . $fam_adt . "</li>";
echo "<li>Price: " . $price . "</li>";
echo "</ul>";
	// execute the query and display the results
	$result = mysqli_query($con, $query);
	if (mysqli_num_rows($result) > 0) {
		echo "<table>";
		echo "<tr><th>Name</th><th>Date</th><th>Time</th><th>Location</th><th>Inside/Outside</th><th>Day/Night</th><th>Free/Paid</th><th>Family/Adult</th><th>Price</th></tr>";
		while ($row = mysqli_fetch_assoc($result)) {
			echo "<tr>";
			echo "<td>" . $row['EXP_NAME'] . "</td>";
			echo "<td>" . $row['EXP_DATE'] . "</td>";
			echo "<td>" . $row['EXP_TIME'] . "</td>";
			echo "<td>" . $row['EXP_LOC'] . "</td>";
			echo "<td>" . $row['EXP_OUT_IN'] . "</td>";
			echo "<td>" . $row['EXP_DAY_NT'] . "</td>";
			echo "<td>" . $row['EXP_FD_NFD'] . "</td>";
			echo "<td>" . $row['EXP_FAM_ADT'] . "</td>";
			echo "<td>" . $row['EXP_PRICE'] . "</td>";
			echo "</tr>";
		}
		echo "</table>";
	} else {
		echo "<p>Sorry, we couldn't find any experiences matching your search criteria. Please try again or <a href='add_experience.php'>add a new experience</a>.</p>";
	}

	// close the database connection
	mysqli_close($con);
?>
