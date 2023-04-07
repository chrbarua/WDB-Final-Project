<?php
    session_start();
    if(!isset($_SESSION["USER_USERNAME"])) {
        header("Location: login.php");
        exit();
    }
?>
