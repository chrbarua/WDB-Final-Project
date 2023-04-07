<?php
include("user_session.php");
?>
<html>
<head>
    <title>Search an Experience to rate</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#search-experiences').on('input', function() {
                var searchValue = $(this).val().toLowerCase();
                $('.experience-item').each(function() {
                    var text = $(this).text().toLowerCase();
                    if (text.indexOf(searchValue) !== -1 || searchValue === '') {
                        $(this).show();
                    } else {
                        $(this).hide();
                    }
                });
            });
$('.experience-item').on('click', function() {
    var experienceName = $(this).text();
    console.log('Selected experience name:', experienceName);
    $('#selected-experience').text(experienceName);
    var expName = encodeURIComponent($('#selected-experience').text());
    console.log('Encoded experience name:', expName);

    // check if review exists for this experience by the current user
    $.ajax({
        type: 'POST',
        url: 'check_review.php',
        data: { expName: expName },
        success: function(result) {
            console.log('Response from check_review.php:', result);
            if (result === 'exists') {
                $('#rate-experience-btn').hide();
                $('#already-rated-msg').show();
            } else {
                $('#rate-experience-btn').show();
                $('#already-rated-msg').hide();
            }
        }
    });
});
        });
    </script>
</head>
<body>
    <h1>Search Experiences</h1>
    <input type="text" id="search-experiences" placeholder="Search for an experience">
    <div>
        <p>Select an experience:</p>
        <ul>
            <?php
                require('db.php');
                $sql = "SELECT EXP_NAME FROM EXPERIENCES";
                $result = $con->query($sql);
                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        echo "<li class='experience-item'>" . $row["EXP_NAME"] . "</li>";
                    }
                } else {
                    echo "No experiences found.";
                }
                $con->close();
            ?>
        </ul>
    </div>
    <p>Selected experience: <span id="selected-experience"></span></p>
    <button id="rate-experience-btn" style="display:none;" onclick="location.href='rate_events.php?expName=' + encodeURIComponent($('#selected-experience').text());">Rate this Experience</button>
    <p id="already-rated-msg" style="display:none;">You have already rated this experience.</p>
</body>
</html>
