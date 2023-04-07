<!DOCTYPE html>
<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);
require('db.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['USER_USERNAME']) && isset($_POST['USER_PASS'])) {
    $USER_USERNAME = mysqli_real_escape_string($con, $_POST['USER_USERNAME']); 
    $USER_PASS = mysqli_real_escape_string($con, $_POST['USER_PASS']);
    $uquery    = "SELECT * FROM `USERS` WHERE USER_USERNAME='$USER_USERNAME' AND USER_PASS='$USER_PASS'";
    $userresult = mysqli_query($con, $uquery);
    
    if (!$userresult) {
        $error_msg = mysqli_error($con);
        echo "<div class='form'>
            <h3 class='error-message'>Error: $error_msg</h3><br/>
            <p class='link'>Please register</p>
            </div>";
    } else {
        $userrows = mysqli_num_rows($userresult);
        
if ($userrows == 1) {
    echo "\n\nValid credentials. Redirecting to user home page...";#here
    $_SESSION['USER_USERNAME'] = $USER_USERNAME;
    
    mysqli_free_result($userresult);
    mysqli_close($con);
    
    header("Location: user_home.php");
    exit;
} 
 else {
            echo "<div class='form'>
                  <h3 class='error-message'>Incorrect Username/password.</h3><br/>
                  </div>";
        }
    }
}


if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['ORG_EMAIL']) && isset($_POST['ORG_PASS'])) {
    $ORG_EMAIL = mysqli_real_escape_string($con, $_POST['ORG_EMAIL']); 
    $ORG_PASS = mysqli_real_escape_string($con, $_POST['ORG_PASS']);
    $oquery    = "SELECT * FROM `ORGANIZER` WHERE ORG_EMAIL='$ORG_EMAIL' AND ORG_PASS='$ORG_PASS' AND ORG_ACTIVE = 'Y'";
    $orgresult = mysqli_query($con, $oquery);
    
    if (!$orgresult) {
        $error_msg = mysqli_error($con);
        echo "<div class='form'>
            <h3 class='error-message'>Error: $error_msg</h3><br/>
            <h3 class='error-message'>Please note that if you have submitted a registration form, our Admins take up to 2 weeks to grant Organization access status</h3><br/>
            <p class='link'>register here</p>
            </div>";
    } else {
        $orgrows = mysqli_num_rows($orgresult);
        
        if ($orgrows == 1) {
            $_SESSION['ORG_EMAIL'] = $ORG_EMAIL;
            
            mysqli_free_result($orgresult);
            mysqli_close($con);
            
            header("Location: org_home.php");
            exit;
            
        } else {
            echo "<div class='form'>
                  <h3 class='error-message'>Incorrect Organization username/password.</h3><br/>
                  </div>";
        }
    }
}

?>

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
        header {
			display: flex;
			align-items: right;
			justify-content: space-between;
			padding: 10px;
			background-color: #ccc;
			color: #000;
			font-size: 18px;
			font-weight: bold;
		}
		.header-link {
			color: #000;
			text-decoration: none;
		}
		h3.error-message {
  position: fixed;
  bottom: 0;
  left: 0;
  width: 100%;
  background-color: #ffcccc;
  color: #ff0000;
  padding: 10px;
  text-align: center;
}
        </style>
</head>
<body>
	<header>
		<a href="regist_hub.php" class="header-link">Don't have an account? Click Here to Register now</a>
	</header>
    <div class="form">
        <h1 class="login-title">Welcome to Bored in Indy! - Login here:</h1>
        <form method="post" name="user_login">
            <input type="text" class="login-input" name="USER_USERNAME" placeholder="Username"/>
            <input type="password" class="login-input" name="USER_PASS" placeholder="Password"/>
            <input type="submit" value="Login" name="user_submit" class="login-button"/>
        </form>
        <hr>
        <h1 class="login-title">Organization Login:</h1>
        <form method="post" name="org_login">
            <input type="text" class="login-input" name="ORG_EMAIL" placeholder="Organization Email"/>
            <input type="password" class="login-input" name="ORG_PASS" placeholder="Password"/>
<input type="submit" value="Login" name="org_submit" class="login-button"/>
</form>
</div>
</body>