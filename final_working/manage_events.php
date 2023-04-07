<?php
include("org_session.php");
require('db.php');
error_reporting(E_ALL);
ini_set('display_errors', 1);

$org_email = $_SESSION['ORG_EMAIL'];


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $exp_name = $_POST['exp_name'];
  $exp_web = $_POST['exp_web'];
  $exp_date = $_POST['exp_date'];
  $exp_time = $_POST['exp_time'];
  $exp_loc = $_POST['exp_loc'];
  $exp_desc = $_POST['exp_desc'];
  $exp_out_in = $_POST['exp_out_in'];
  $exp_day_nt = $_POST['exp_day_nt'];
  $exp_fd_nfd = $_POST['exp_fd_nfd'];
  $exp_fam_adt = $_POST['exp_fam_adt'];
  $exp_price = $_POST['exp_price'];
  $exp_tix = $_POST['exp_tix'];

  $sql = "INSERT INTO EXPERIENCES (EXP_NAME, EXP_DATE, EXP_TIME, ORG_EMAIL, EXP_LOC, EXP_DESC, EXP_OUT_IN, EXP_DAY_NT, EXP_FD_NFD, EXP_FAM_ADT, EXP_PRICE, EXP_TIX, EXP_WEB) VALUES ('$exp_name', '$exp_date', '$exp_time', '$org_email', '$exp_loc', '$exp_desc', '$exp_out_in', '$exp_day_nt', '$exp_fd_nfd', '$exp_fam_adt', '$exp_price', '$exp_tix', '$exp_web')";
  if ($con->query($sql) === TRUE) {
    header("Location: org_home.php?msg=experience_successfully_submitted");
    exit;
  } else {
    echo "Error: " . $sql . "<br>" . $con->error;
  }

  $con->close();
}
?>

<form method="POST">
  <label for="exp_name">Your experience's name:</label><br>
  <input type="text" name="exp_name" required><br><br>

  <label for="exp_date">Your website for the experience:</label><br>
  <input type="text" name="exp_web" required><br><br>

  <label for="exp_date">The date the experience starts:</label><br>
  <input type="date" name="exp_date" required><br><br>

  <label for="exp_time">The time the experience starts:</label><br>
  <input type="time" name="exp_time" required><br><br>

  <label for="exp_loc">Type the address of the experience (incl. city, state, zip):</label><br>
  <input type="text" name="exp_loc" required><br><br>

  <label for="exp_desc">Write a full description of the experience! Please remember to elaborate on your answers to other fields, as they will only be used for filtering by users:</label><br>
  <textarea name="exp_desc" rows="10" required></textarea><br><br>

  <label for="exp_out_in">Is the event generally indoor or outdoor?</label><br>
  <input type="radio" name="exp_out_in" value="OUT" required>Outdoor<br>
  <input type="radio" name="exp_out_in" value="IN" required>Indoor<br><br>

  <label for="exp_day_nt">Is the event generally during the day or at night?</label><br>
  <input type="radio" name="exp_day_nt" value="DAY" required>Day<br>
<input type="radio" name="exp_day_nt" value="NT" required>Night<br><br>

<label for="exp_fd_nfd">Will food be provided?</label><br>
<input type="radio" name="exp_fd_nfd" value="FD" required>Food<br>
<input type="radio" name="exp_fd_nfd" value="NFD" required>No Food<br><br>

<label for="exp_fam_adt">Is your experience family friendly?:</label><br>
<input type="radio" name="exp_fam_adt" value="FAM" required>Family friendly<br>
<input type="radio" name="exp_fam_adt" value="ADT" required>Adults Only<br><br>

<label for="exp_price">Price:</label><br>
<input type="number" name="exp_price" step="any" min="0" required><br><br>

<label for="exp_tix">Does your experience require ticket purchase?:</label><br>
<input type="radio" name="exp_tix" value="Y" required>Yes, it requires general admin Tickets<br>
<input type="radio" name="exp_tix" value="N" required>It is generally open to the public<br><br>

  <input type="submit" name="submit" value="Submit">
</form>
