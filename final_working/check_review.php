<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
include("user_session.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    require('db.php');

    $expName = $_POST['expName'];
    $userName = $_SESSION['USER_USERNAME'];

    $sql = "SELECT * FROM REVIEWS WHERE EXP_NAME = '$expName' AND USER_USERNAME = '$userName'";
    $result = $con->query($sql);

    if ($result->num_rows > 0) {
        echo "exists";
    } else {
        echo "not exists";
    }

    $con->close();
}
?>
