<?php

include("auth_session.php");
?>
<!DOCTYPE html>
      <html>
        <head>
          <title>Sasha's Library</title>
        </head>
    <body>
    <center>
   	 <h1>Welcome to Sasha’s Library</h1>
   	 <h1>please choose an option below:</h1>
   	 <br><br>
<form action="avail_books.php" method="post">
        <button type="submit">
            See available books
        </button>
    </form>
    <br>
       <form action="formatting.php" method="post">
        <button type="submit">
            Submit a book
        </button>
        </form>
        <br><br><br>
    	<form action="logout.php" method="post">
        <button type="submit">
            Log Out
        </button>
        
    </form>
          </body>
      </html>