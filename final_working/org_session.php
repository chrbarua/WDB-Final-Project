<?php
    session_start();
    if(!isset($_SESSION["ORG_EMAIL"])) {
        header("Location: login.php");
        exit();
    }
?>
