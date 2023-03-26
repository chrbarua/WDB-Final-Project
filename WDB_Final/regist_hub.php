<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['register_user'])) {
        header("Location: register_user.php");
        exit;
    } else if (isset($_POST['register_org'])) {
        header("Location: register_org.php");
        exit;
    } else {
        echo "<div class='form'>
              <h3>Invalid request</h3><br/>
              <p class='link'>Click here to <a href='registration.php'>register</a> again.</p>
              </div>";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
</head>
<body>
    <center>
        <h1>Please choose an option below:</h1>
        <br><br>
        <form method="post">
            <button type="submit" name="register_user">Register as User</button>
        </form>
        <br>
        <form method="post">
            <button type="submit" name="register_org">Register as Organization</button>
        </form>
    </center>
</body>
</html>

