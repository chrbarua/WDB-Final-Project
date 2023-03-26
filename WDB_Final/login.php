

<!DOCTYPE html>
<html>
<head>
<html>
<head>
    <title>Login</title>
    <style>
        .form {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #B0C4DE;
            background-color: #f0f8ff;
        }
        .login-title {
            color: #4B0082;
            margin-bottom: 15px;
            text-align: center;
        }
        .login-input {
            display: block;
            margin: 0 auto 15px;
            padding: 10px;
            width: 80%;
            border-radius: 5px;
            border: 1px solid #ccc;
            background-color: #fff;
            font-size: 16px;
            font-family: sans-serif;
        }
        .login-button {
            display: block;
            margin: 0 auto;
            padding: 10px;
            width: 80%;
            border-radius: 5px;
            border: none;
            background-color: #4B0082;
            color: #fff;
            font-size: 16px;
            font-family: sans-serif;
            cursor: pointer;
        }
        .login-button:hover {
            background-color: #800080;
        }
        .link {
            text-align: center;
        }
        </style>
</head>
<body>
    <div class="form">
        <h1 class="login-title">Welcome to Sasha's Library - Login here:</h1>
        <form method="post" name="user_login">
            <input type="text" class="login-input" name="USER_EMAIL" placeholder="Email"/>
            <input type="password" class="login-input" name="USER_PASS" placeholder="Password"/>
            <input type="submit" value="Login" name="submit" class="login-button"/>
            <p class="link">Don't have an account? <a href="regist_hub.php">Register Now</a></p>
        </form>
        <hr>
        <h1 class="login-title">Organization Login:</h1>
        <form method="post" name="org_login">
            <input type="text" class="login-input" name="ORG_USER" placeholder="Organization Username"/>
            <input type="password" class="login-input" name="ORG_PASS" placeholder="Organization Password"/>
<input type="submit" value="Login" name="submit" class="login-button"/>
</form>
</div>
<?php
#error_reporting(E_ALL);
#ini_set('display_errors', 1);

require('db.php');

session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['USER_EMAIL']) && isset($_POST['USER_PASS'])) {
    $USER_EMAIL = mysqli_real_escape_string($con, $_POST['USER_EMAIL']); 
    $USER_PASS = mysqli_real_escape_string($con, $_POST['USER_PASS']);
    $query    = "SELECT * FROM `USER` WHERE USER_EMAIL='$USER_EMAIL'
                 AND USER_PASS='$USER_PASS'";
    $result = mysqli_query($con, $query);
    
    if (!$result) {
        $error_msg = mysqli_error($con);
        echo "<div class='form'>
            <h3>Error: $error_msg</h3><br/>
            <p class='link'>Please register</p>
            </div>";
    } else {
        $rows = mysqli_num_rows($result);
    }
    
    if ($rows == 1) {
        $_SESSION['USER_EMAIL'] = $USER_EMAIL;
        
        header("Location: logged_in.php");
        exit;
        
    } else {
        echo "<div class='form'>
              <h3>Incorrect Username/password.</h3><br/>
              <p class='link'>Click here to <a href='login.php'>Login</a> again.</p>
              </div>";
    }
} else {
?>

<?php
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['ORG_USER']) && isset($_POST['ORG_PASS'])) {
    $ORG_USER = mysqli_real_escape_string($con, $_POST['ORG_USER']); 
    $ORG_PASS = mysqli_real_escape_string($con, $_POST['ORG_PASS']);
    $query    = "SELECT * FROM `ORGANIZATION` WHERE ORG_USER='$ORG_USER'
                 AND ORG_PASS='$ORG_PASS'";
    $result = mysqli_query($con, $query);
    
    if (!$result) {
        $error_msg = mysqli_error($con);
        echo "<div class='form'>
            <h3>Error: $error_msg</h3><br/>
            <p class='link'>Please register</p>
            </div>";
    } else {
        $rows = mysqli_num_rows($result);
    }
    
    if ($rows == 1) {
        $_SESSION['ORG_USER'] = $ORG_USER;
        
        header("Location: logged_in.php");
        exit;
        
    } else {
        echo "<div class='form'>
              <h3>Incorrect Organization username/password.</h3><br/>
              <p class='link'>Click here to <a href='login.php'>Login</a> again.</p>
              </div>";
    }
}
?>
</body>
