<form method="post" action="add_event.php">
    <label for="event_name">Event Name:</label>
    <input type="text" name="event_name" id="event_name" required>
    <br>

    <label for="event_date">Event Date:</label>
    <input type="date" name="event_date" id="event_date" required>
    <br>

    <label for="event_time">Event Time:</label>
    <input type="time" name="event_time" id="event_time" required>
    <br>

    <label for="event_location">Event Location:</label>
    <input type="text" name="event_location" id="event_location" required>
    <br>

    <label for="event_description">Event Description:</label>
    <textarea name="event_description" id="event_description" rows="5" cols="40" required></textarea>
    <br>

    <input type="submit" value="Add Event">
</form>
