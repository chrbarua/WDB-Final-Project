<!DOCTYPE html>
<?php
error_reporting(E_ALL); 
ini_set('display_errors', '1');
include("user_session.php");

$expName = "";
if (isset($_GET['expName'])) {
    $expName = urldecode($_GET['expName']);
}

$userName = "";
if (isset($_SESSION['USER_USERNAME'])) {
    $userName = $_SESSION['USER_USERNAME'];
}

$revStars = "";
$revText = "";
$revPic = "";

if (isset($_POST['submit'])) {
    require('db.php');

    $expName = $_POST['expName'];
    $userName = $_SESSION['USER_USERNAME'];
    $revStars = $_POST['revStars'];
    $revText = $_POST['revText'];

    // upload photo if provided
    if ($_FILES['revPic']['error'] == 0) {
        $revPic = basename($_FILES['revPic']['name']);
        move_uploaded_file($_FILES['revPic']['tmp_name'], 'uploads/' . $revPic);
    }

    // check if user has already reviewed this experience
    $sql = "SELECT * FROM REVIEWS WHERE EXP_NAME='$expName' AND USER_USERNAME='$userName'";
    $result = $con->query($sql);
    if ($result->num_rows > 0) {
        echo "<p>You have already reviewed this experience.</p>";
    } else {
        // insert data into database
        $sql = "INSERT INTO REVIEWS (EXP_NAME, USER_USERNAME, REV_STARS, REV_TEXT, REV_PIC)
                VALUES ('$expName', '$userName', '$revStars', '$revText', '$revPic')";
        if ($con->query($sql) === TRUE) {
            $expName = "";
            $revStars = "";
            $revText = "";
            $revPic = "";
            echo "<p>Review added successfully.</p>";
            echo "<button onclick=\"window.location.href='search_rate_events.php'\">Submit Another Review</button>";
        } else {
            echo "Error: " . $sql . "<br>" . $con->error;
        }
    }

    $con->close();
}
?>

<html>
<head>
    <title>Rate Event</title>
</head>
<body>
    <?php if ($expName != "") : ?>
        <h2><?php echo $userName; ?>'s rating of <?php echo $expName; ?></h2>
        <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data">
            <input type="hidden" name="expName" value="<?php echo $expName; ?>">
            <label for="revStars">Number of stars (1-5):</label>
            <input type="number" id="revStars" name="revStars" min="1" max="5" value="<?php echo $revStars; ?>"><br>
            <label for="revText">Review text:</label>
            <textarea id="revText" name="revText" rows="4" cols="50"><?php echo $revText; ?></textarea><br>
            <label for="revPic">Upload a photo:</label>
            <input type="file" id="revPic" name="revPic"><br>
            <button type="submit" name="submit">Submit Review</button>
        </form>
    <?php else : ?>
    <?php endif; ?>
</body>
</html>

<?php

$userName = "";
if (isset($_SESSION['USER_USERNAME'])) {
    $userName = $_SESSION['USER_USERNAME'];
}

require('db.php');

// fetch all reviews made by the user
$sql = "SELECT * FROM REVIEWS WHERE USER_USERNAME='$userName'";
$result = $con->query($sql);
?>

<html>
<head>
    <title>My Reviews</title>
    <style>
        .review-block {
            background-color: #f2f2f2;
            border: 1px solid #ddd;
            padding: 10px;
            margin-bottom: 10px;
        }
        .review-header {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .review-username {
            font-size: 18px;
            font-weight: bold;
        }
.review-stars {
    font-size: 18px;
    margin-top: 10px;
    margin-bottom: 10px;
    padding-left: 20px;
}
.review-text {
    font-size: 14px;
    margin-bottom: 10px;
    padding-left: 20px;
}
.review-img {
    max-width: 100%;
    height: auto;
    margin-bottom: 10px;
    padding-left: 20px;
}

    </style>
</head>
<body>
    <?php while ($row = $result->fetch_assoc()) : ?>
        <div class="review-block">
            <div class="review-header"><?php echo $row['EXP_NAME']; ?></div>
            <div class="review-username"><?php echo $row['USER_USERNAME']; ?></div>
            <div class="review-stars"><?php 
                for ($i=0; $i<$row['REV_STARS']; $i++) {
                    echo "&#9733;";
                }
            ?></div>
            <div class="review-text"><?php echo $row['REV_TEXT']; ?></div>
            <?php if (!empty($row['REV_PIC'])) : ?>
                <img class="review-img" src="uploads/<?php echo $row['REV_PIC']; ?>" alt="Review image">
            <?php endif; ?>
        </div>
    <?php endwhile; ?>

    <?php $con->close(); ?>
</body>
</html>


