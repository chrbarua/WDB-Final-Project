<!DOCTYPE html>
<?php

include("org_session.php");
if (isset($_GET['msg']) && $_GET['msg'] == 'experience_successfully_submitted') {
  echo '<div class="success-message">Experience successfully submitted!</div>';
}
?>
<html>
  <head>
    <title>Organizer Home Page</title>
  </head>
  <body>
    <h1>Welcome Organizer!</h1>
    <p>What would you like to do?</p>
    <button onclick="location.href='search_form.php'">Search Experiences</button>
    <button onclick="location.href='manage_events.php'">Upload & Manage Experiences</button>
    <button onclick="location.href='logout.php'">Log Out</button>
  </body>
</html>
