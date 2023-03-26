<?php
    session_start();
    if(!isset($_SESSION["USER_EMAIL"])) {
        header("Location: login.php");
        exit();
    }
?>
