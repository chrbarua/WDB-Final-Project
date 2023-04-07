<?php
        $servername = "localhost";
        $username = "alheslin";
        $password = "dumpling slumped stockpiled";
        $dbname = "alheslin_db";
    $con = mysqli_connect($servername,$username,$password,$dbname);

    if (mysqli_connect_errno()){
        echo "Failed to connect to the database: " . mysqli_connect_error();
    }
?>
