<!DOCTYPE html>
<html>

<head>
</head>

<body>
    <center>
        <?php
        
        include("auth_session.php");
        
        if (!isset($_SESSION['USER_EMAIL'])) {header("Location: login.php");exit;}

    	require('db.php');


        $SESSION_EMAIL = $_SESSION['USER_EMAIL'];
        $BOOK_NAME = $_REQUEST['BOOK_NAME'];
        $BOOK_AUTH = $_REQUEST['BOOK_AUTH'];
        $BOOK_COND = $_REQUEST['BOOK_COND'];
        $BOOK_CAT = $_REQUEST['BOOK_CAT'];
        $BOOK_METH = $_REQUEST['BOOK_METH'];
    
        $sql2 = "INSERT INTO `BOOKS` (BOOK_NAME, BOOK_AUTH, BOOK_COND, BOOK_CAT, BOOK_METH, USER_EMAIL) VALUES ('$BOOK_NAME',
                '$BOOK_AUTH','$BOOK_COND','$BOOK_CAT','$BOOK_METH', '$SESSION_EMAIL')";

        if (mysqli_query($con, $sql2)) {
            echo nl2br("Book Successfully uploaded: \n");
            echo nl2br("$BOOK_NAME \n $BOOK_AUTH \n $BOOK_COND \n $BOOK_CAT \n $BOOK_METH");
            echo "<br><br>";
            echo '<button onclick="window.location.href=\'logged_in.php\'">Home</button>';

        } else {
            echo "ERROR:  ". mysqli_error($con);
            
        }

        mysqli_close($con);
        ?>
    </center>
</body>

</html>

