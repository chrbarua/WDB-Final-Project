<form method="post" action="add_comment.php">
  <input type="hidden" name="event_id" value="<?php echo $event['id']; ?>">
  <label for="name">Name:</label>
  <input type="text" name="author" id="name">
  <label for="comment">Comment:</label>
  <textarea name="comment" id="comment"></textarea>
  <button type="submit">Submit</button>
</form>
