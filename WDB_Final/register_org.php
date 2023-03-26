<?php
    require('db.php');
    error_reporting(E_ALL);
ini_set('display_errors', 1);

    if (isset($_POST['submit'])) {
        $ORG_NAME = isset($_POST['ORG_NAME']) ? mysqli_real_escape_string($con, trim($_POST['ORG_NAME'])) : '';
        $ORG_CONTACT = isset($_POST['ORG_CONTACT']) ? mysqli_real_escape_string($con, trim($_POST['ORG_CONTACT'])) : '';
        $ORG_PASS = isset($_POST['ORG_PASS']) ? mysqli_real_escape_string($con, trim($_POST['ORG_PASS'])) : '';
        $ORG_EMAIL = isset($_POST['ORG_EMAIL']) ? mysqli_real_escape_string($con, trim($_POST['ORG_EMAIL'])) : '';
        $ORG_PHONE = isset($_POST['ORG_PHONE']) ? mysqli_real_escape_string($con, trim($_POST['ORG_PHONE'])) : '';
        $ORG_LOCATION = isset($_POST['ORG_LOC']) ? mysqli_real_escape_string($con, trim($_POST['ORG_LOC'])) : '';
        
        if (empty($ORG_NAME) || empty($ORG_CONTACT) || empty($ORG_PASS) || empty($ORG_EMAIL)) {
            echo "<div class='form'>
                  <h3>Please fill all required fields.</h3><br/>
                  <p class='link'>Click <a href='register_org.php'>here to register</a> again.</p>
                  </div>";
        } else {
            $ORG_REGTIME = date("Y-m-d H:i:s");
            $sql = "SELECT * FROM `ORGANIZATION` WHERE `ORG_EMAIL`='$ORG_EMAIL' OR `ORG_NAME`='$ORG_NAME'";
            $result = mysqli_query($con, $sql);
            $count = mysqli_num_rows($result);
    
            if ($count == 0) {
                $sql1 = "INSERT INTO `ORGANIZATION` (ORG_NAME, ORG_CONTACT, ORG_PASS, ORG_EMAIL, ORG_PHONE, ORG_LOC, ORG_REGTIME) VALUES ('$ORG_NAME',
                        '$ORG_CONTACT','$ORG_PASS', '$ORG_EMAIL', '$ORG_PHONE', '$ORG_LOC', '$ORG_REGTIME')";
                $result1 = mysqli_query($con, $sql1);
                
                if ($result1) {
                    echo "<div class='form'>
                          <h3>Congrats, you have successfully submitted a request for registration.</h3><br/>
                          <p class='link'>Click here to <a href='login.php'>Login</a></p>
                          </div>";
                } else {
                    echo "<div class='form'>
                          <h3>Failed to submit regrestration.</h3><br/>
                          <p class='link'>Click <a href='register_org.php'>here to register</a> again.</p>
                          </div>";
                }
            } else {
                echo "<div class='form'>
                      <h3>Organization (in email or name) already exists.</h3><br/>
                      <p class='link'>Click <a href='register_org.php'>here to register</a> again.</p>
                      </div>";
            }
        }
    } else { $error = 'Registration failed.';}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Organizations: Submit Registration</title>
</head>
<body>
<form class="form" action="" method="post">
    <h1 class="login-title">Registration</h1>
    
    <p>
        <label for="ORG_NAME">Organization Name:</label>
        <input type="text" name="ORG_NAME">
    </p>
    
    <p>
        <label for="ORG_CONTACT">Organization Point of Contact: Individual's Name:</label>
        <input type="text" name="ORG_CONTACT">
    </p>
    
    <p>
        <label for="ORG_PASS">Password:</label>
        <input type="password" name="ORG_PASS">
    </p>
    
    <p>
        <label for="ORG_EMAIL">Email:</label>
        <input type="email" name="ORG_EMAIL">
    </p>
    
    <p>
        <label for="ORG_PHONE">Phone Number:</label>
        <input type="tel" name="ORG_PHONE">
    </p>
    
    <p>
        <label for="ORG_LOC">Location:</label>
        <input type="text" name="ORG_LOC">
    </p>
    
    <button type="submit" name="submit">Submit</button>
</form>
</body>
</html>




