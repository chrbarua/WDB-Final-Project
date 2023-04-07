<?php
include ('user_session.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Search Experiences</title>
		<style>
		.container {
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
			align-items: center;
			text-align: center;
		}

		form {
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
			align-items: center;
			margin: 20px;
			padding: 20px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
			background-color: #fff;
		}

		h1 {
			font-size: 36px;
			font-weight: bold;
			margin: 20px;
			text-align: center;
		}

		label {
			display: block;
			margin: 10px;
			font-size: 18px;
			font-weight: bold;
		}

		input[type="text"],
		input[type="date"],
		input[type="time"],
		input[type="number"] {
			display: block;
			margin: 10px;
			padding: 10px;
			font-size: 16px;
			width: 300px;
			border-radius: 5px;
			border: 1px solid #ccc;
			background-color: #fff;
		}

		select {
			display: block;
			margin: 10px;
			padding: 10px;
			font-size: 16px;
			width: 150px;
			border-radius: 5px;
			border: 1px solid #ccc;
			background-color: #fff;
		}

		input[type="submit"] {
			display: block;
			margin: 20px auto;
			padding: 10px 20px;
			font-size: 18px;
			font-weight: bold;
			border-radius: 5px;
			border: none;
			background-color: #008CBA;
			color: #fff;
			cursor: pointer;
			transition: background-color 0.3s ease;
		}

		input[type="submit"]:hover {
			background-color: #005F6B;
		}

		@media screen and (min-width: 768px) {
			form {
				width: 50%;
			}

			input[type="text"],
			input[type="date"],
			input[type="time"],
			input[type="number"],
			select {
				width: 200px;
			}
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>Search Experiences</h1>
		<form action="search_results.php" method="post">
			<label for="EXP_NAME">Event Name:</label>
			<input type="text" name="EXP_NAME">

			<label for="EXP_DATE">Date:</label>
			<input type="date" name="EXP_DATE">

			<label for="EXP_TIME">Time:</label>
			<input type="time" name="EXP_TIME">

			<label for="EXP_LOC">Location:</label>
			<input type="text" name="EXP_LOC">

			<label for="EXP_OUT_IN">Inside/Outside:</label>
			<select name="EXP_OUT_IN">
				<option value="">Any</option>
				<option value="IN">Inside</option>
				<option value="OUT">Outside</option>
			</select>

			<label for="EXP_DAY_NT">Day/Night:</label>
			<select name="EXP_DAY_NT">
				<option value="">Any</option>
				<option value="DAY">Day</option>
				<option value="NT">Night</option>
			</select>

			<label for="EXP_FD_NFD">Free/Paid:</label>
			<select name="EXP_FD_NFD">
				<option value="">Any</option>
				<option value="FD">Food</option>
				<option value="NFD">No Food</option>
			</select>

			<label for="EXP_FAM_ADT">Family/Adult:</label>
			<select name="EXP_FAM_ADT">
				<option value="">Any</option>
				<option value="FAM">Family</option>
				<option value="ADT">Adult</option>
			</select>

			<label for="EXP_PRICE">Price:</label>
			<input type="number" name="EXP_PRICE" step="0.01" min="0">

			<input type="submit" value="Search">
		</form>
	</div>
</body>
</html>