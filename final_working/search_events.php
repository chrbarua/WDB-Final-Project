<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include("user_session.php");
require('db.php');


// Initialize the filters to their default values
$location_filter = '';
$time_filter = '';
$audience_filter = '';
$price_filter = '';
$entry_filter = '';
$fooddrink_filter = '';

// Check if the search form has been submitted
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
  // Get the filter values from the form
  $search = isset($_GET['search']);
  $location_filter = isset($_GET['location']) ? $_GET['location'] : '';
  $time_filter = isset($_GET['time']) ? $_GET['time'] : '';
  $audience_filter = isset($_GET['audience']) ? $_GET['audience'] : '';
  $price_filter = isset($_GET['price']) ? $_GET['price'] : '';
  $entry_filter = isset($_GET['entry']) ? $_GET['entry'] : '';
  $fooddrink_filter = isset($_GET['fooddrink']) ? $_GET['fooddrink'] : '';
}

// Construct the SQL query based on the filter values
$sql = "SELECT * FROM EXPERIENCES WHERE 1=1";
if (!empty($search)) {
    $sql .= " AND `EXP_NAME` LIKE '%$search%'";
}
if ($location_filter != '') {
  $sql .= " AND `EXP_LOC` = '$location_filter'";
}
if ($time_filter != '') {
  $sql .= " AND `EXP_TIME` = '$time_filter'";
}
if ($audience_filter != '') {
  $sql .= " AND `EXP_FAM_ADT` = '$audience_filter'";
}
if ($price_filter != '') {
  $price_range = explode('-', $price_filter);
  $sql .= " AND `EXP_PRICE` >= $price_range[0] AND EXP_PRICE <= $price_range[1]";
}
if ($entry_filter != '') {
  $sql .= " AND `EXP_TIX` = '$entry_filter'";
}
if ($fooddrink_filter != '') {
$sql .= " AND `EXP_FD_NFD` = '$fooddrink_filter'";

}
// Query the database for events that match the filters
$result = $con->query($sql);

// Execute the query
$result = $con->query($sql);

// Check if any rows were returned
if ($result->num_rows > 0) {
  // Loop through the rows and echo each column
  while ($row = $result->fetch_assoc()) {
    echo "Column 1: " . $row["column1"] . "<br>";
    echo "Column 2: " . $row["column2"] . "<br>";
    // Add more columns as needed
  }
} else {
  echo "No results found.";
}


// Create an array of filtered events
$filtered_events = array();
if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
    $filtered_events[] = $row;
  }
}
$con->close();
?>
