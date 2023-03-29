<!-- search_form.php -->
<!DOCTYPE html>
<html>
<head>
	<title>Search Experiences</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="container">
		<h1>Search Experiences</h1>
		<form action="search_results.php" method="post">
			<label for="exp_name">Event Name:</label>
			<input type="text" name="exp_name">

			<label for="exp_date">Date:</label>
			<input type="date" name="exp_date">

			<label for="exp_time">Time:</label>
			<input type="time" name="exp_time">

			<label for="exp_loc">Location:</label>
			<input type="text" name="exp_loc">

			<label for="exp_out_in">Inside/Outside:</label>
			<select name="exp_out_in">
				<option value="">Any</option>
				<option value="inside">Inside</option>
				<option value="outside">Outside</option>
			</select>

			<label for="exp_day_nt">Day/Night:</label>
			<select name="exp_day_nt">
				<option value="">Any</option>
				<option value="day">Day</option>
				<option value="night">Night</option>
			</select>

			<label for="exp_fd_nfd">Free/Paid:</label>
			<select name="exp_fd_nfd">
				<option value="">Any</option>
				<option value="free">Free</option>
				<option value="paid">Paid</option>
			</select>

			<label for="exp_fam_adt">Family/Adult:</label>
			<select name="exp_fam_adt">
				<option value="">Any</option>
				<option value="family">Family</option>
				<option value="adult">Adult</option>
			</select>

			<label for="exp_price">Price:</label>
			<input type="number" name="exp_price" step="0.01" min="0">

			<input type="submit" value="Search">
		</form>
	</div>
</body>
</html>