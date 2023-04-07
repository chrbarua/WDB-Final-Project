<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
require('db.php');
$error = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['submit'])) {
        $USER_PASS = mysqli_real_escape_string($con, $_POST['USER_PASS']);
        $USER_USERNAME = mysqli_real_escape_string($con, $_POST['USER_USERNAME']);
        $USER_FNAME = mysqli_real_escape_string($con, $_POST['USER_FNAME']);
        $USER_LNAME = mysqli_real_escape_string($con, $_POST['USER_LNAME']);
        $USER_EMAIL = mysqli_real_escape_string($con, $_POST['USER_EMAIL']);
        $USER_PHONE = mysqli_real_escape_string($con, $_POST['USER_PHONE']);

        // Check if email already exists
        if (!empty($USER_EMAIL)) {
            $check_email_query = "SELECT * FROM `USER` WHERE USER_EMAIL = '$USER_EMAIL'";
           $check_email_result = mysqli_query($con, $check_email_query);

if ($check_email_result) {
  $count = mysqli_num_rows($check_email_result);
} else {
  $count = 0;
}


            if ($count == 1) {
                $error = 'Email already exists.';
            }
        }

        if (empty($error)) {
            $sql1 = "INSERT INTO `USERS` (USER_FNAME, USER_LNAME, USER_PHONE, USER_EMAIL, USER_USERNAME, USER_PASS) 
                 VALUES ('$USER_FNAME', '$USER_LNAME', '$USER_PHONE', '$USER_EMAIL', '$USER_USERNAME', '$USER_PASS')";
            $result = mysqli_query($con, $sql1);
if ($result) {
    echo "<div class='form'>
          <h3>Congrats, you have registered successfully.</h3><br/>
          <p class='link'>Click here to <a href='login.php'>Login</a></p>
          </div>";
} else {
    $error = 'Registration failed. ' . mysqli_error($con);
    echo $error; // debug line
}

        }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
</head>
<body>
    <form class="form" action="" method="post">
        <h1 class="login-title">Registration</h1>
        <?php if ($error != '') { ?>
            <div class="error"><?php echo $error; ?></div>
        <?php } ?>
        <p>
            <label for="USER_FNAME">First Name:</label>
            <input type="text" name="USER_FNAME" required>
        </p>
        <p>
            <label for="USER_LNAME">Last Name:</label>
            <input type="text" name="USER_LNAME" required>
        </p>
        <p>
            <label for="USER_EMAIL">Email:</label>
            <input type="email" class="login-input" name="USER_EMAIL" placeholder="Email Address" required>
        </p>
                <p>
            <label for="USER_USERNAME">Username:</label>
            <input type="text" name="USER_USERNAME" required>
        </p>
        <p>
            <label for="USER_PASS">Password:</label>
            <input type="password" class="login-input" name="USER_PASS" placeholder="Password" required>
        </p>
        <p>
            <label for="USER_PHONE">Phone Number:</label>
            <input type="text" name="USER_PHONE" required>
        </p>
        <br>
        <input type="submit" name="submit" value="Register" class="login-button">
        <p class="link">Already have an account? <a href="login.php">Login</a></p>
    </form>
</body>
</html>
