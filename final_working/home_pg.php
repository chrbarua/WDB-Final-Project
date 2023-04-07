<!DOCTYPE html>
<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include("user_session.php");
require('db.php');

// Query the database for events
$sql = "SELECT * FROM `EXPERIENCES` WHERE `EXP_LIVE` = 'Y'";
$result = $con->query($sql);

// Create an array of events
$events = array();
if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
    $events[] = $row;
  }
}
?>
<html>
<head>
  <title>Indianapolis Events</title>
  <style>
    #map {
      height: 400px;
      width: 66.66%;
      float: left;
    }
    
    #box {
      height: 400px;
      width: 33.33%;
      float: right;
      background-color: #f2f2f2;
      padding: 20px;
    }
    
    @media screen and (max-width: 768px) {
      #map, #box {
        width: 100%;
        float: none;
      }
    }
  </style>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC7nHDJEvP42l2VjAfHP4hsUTkxd9g1bI4"></script>
  <script>
    // Initialize the map
    var map;
    function initMap() {
      map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 39.7684, lng: -86.1581},
        zoom: 12
      });
      
      // Loop through the events and add markers to the map
      <?php foreach ($events as $event): ?>
        geocodeAddress("<?php echo $event['EXP_LOC']; ?>", "<?php echo $event['EXP_NAME']; ?>");
      <?php endforeach; ?>
    }

    // Geocode an address and add a marker to the map
function geocodeAddress(address, name) {
  var geocoder = new google.maps.Geocoder();
  geocoder.geocode({'address': address}, function(results, status) {
    if (status === 'OK') {
      var marker = new google.maps.Marker({
        map: map,
        position: results[0].geometry.location,
        title: name
      });
      
      // Add an info window to the marker to show the event name when hovering over it
      var infowindow = new google.maps.InfoWindow({
        content: name
      });
      
      // Show the info window when the marker is hovered over
      marker.addListener('mouseover', function() {
        infowindow.open(map, marker);
      });
      
      // Hide the info window when the marker is no longer being hovered over
      marker.addListener('mouseout', function() {
        infowindow.close();
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}
  </script>
</head>
<body onload="initMap()">
  <h1>Indianapolis Events</h1>
  <form action="search_events.php" method="get">
    <label for="search">Search:</label>
    <input type="text" name="search" id="search">

    <fieldset>
      <legend>Filters:</legend>

      <label for="location">Location:</label>
      <select name="location" id="location">
        <option value="">Select an option</option>
        <option value="IN">Inside</option>
        <option value="OUT">Outside</option>
      </select><br>

      <label for="time">Time of Day:</label>
      <select name="time" id="time">
        <option value="">Select an option</option>
        <option value="DAY">Day</option>
        <option value="NT">Night</option>
      </select><br>

      <label for="audience">Audience:</label>
      <select name="audience" id="audience">
        <option value="">Select an option</option>
        <option value="FAM">Family</option>
        <option value="ADT">Adult</option>
      </select><br>

      <label for="price">Price:</label>
      <select name="price[]" id="price" multiple>
        <option value="0-20">$0-$20</option>
        <option value="20-40">$20-$40</option>
        <option value="40-60">$40-$60</option>
        <option value="60-80">$60-$80</option>
        <option value="80-100">$80-$100</option>
        <option value="100+">$100+</option>
      </select><br>

      <label for="entry">Entry:</label>
      <select name="entry" id="entry">
        <option value="">Select an option</option>
        <option value="N">No Advance Tickets</option>
        <option value="Y">Ticketed</option>
      </select><br>

      <label for="fooddrink">Food/Drink:</label>
      <select name="fooddrink" id="fooddrink">
        <option value="">Select an option</option>
        <option value="FD">Yes</option>
        <option value="NFD">No</option>
      </select><br>

    </fieldset>

    <input type="submit" value="Search">
  </form>
  <div id="map"></div>
  <a href="req_event.php">Don't see your event? Request to add a New Event</a>
  <a href="index.php">Back to Home</a>

</body>


