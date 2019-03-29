<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

.column {
	float: left;
	width: 25%;
	padding: 0 5px;
}

.row {
	margin: 5px -5px;
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

@media screen and (max-width: 600px) {
	.column {
		width: 100%;
		display: block;
		margin-bottom: 10px;
	}
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	padding: 16px;
	text-align: center;
	background-color: #44444426;
	color: white;
}

.fa {
	font-size: 50px;
}

.p-item {
	margin-top: 0;
	margin-bottom: 1rem;
	color: black;
	font-weight: 500 !important;
	font-size: 43px;
	line-height: 1.3em;
	padding: 116px 15px 25px;
	text-align: center;
}

.bg-dark {
	background-color: #00000059 !important;
}

.card_background {
	background-color: #000;
}

.header {
	padding: 4px;
	text-align: center;
	color: white;
	font-size: 13px;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 357px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.price {
	color: grey;
	font-size: 22px;
}

 .button {
	border: none;
	outline: 0;
	padding: 12px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

 .button:hover {
	opacity: 0.7;
}
</style>

</head>
<body>
	<div
		style="background-image: url(resources/images/assets/display.jpg); margin: -3px; background-repeat: no-repeat; background-size: 100% 100%; height: 428px;">



		<nav class="navbar navbar-expand-sm bg-dark navbar-dark"
			style="padding: 1.0rem .5rem; margin-bottom: 30px;">

		<h2 style="margin: auto; color: #fff;">Welcome Fodoholic's</h2>
		<ul class="navbar-nav">
			<li class="nav-item"><input type="button"
				class="login100-form-btn"
				style="border-radius: 25px; background-color: #FFFFFF; border: none;"
				value="Logout" onclick="location.href='login';"></li>
		</ul>
		</nav>


		<div>
			<p class="p-item">Find the best restaurants, cafés, and bars in
				Bengaluru</p>
		</div>

	</div>

	<div class="row">
		<div class="column">
			<div class="card" style="height: 255px">
				<div>
					<img src="resources/images/assets/north.jpg"
						style="max-width: 100%; height: 222px" />	 
				</div>
			</div>
			 <div class="button" onclick="location.href='north';">
			<p style="font-style:oblique">North Indian</p>
			</div> 
		</div>

		<div class="column">
			<div class="card">
				<div>
					<img src="resources/images/assets/chinese.jpg"
						style="max-width: 100%" />
				</div>
			</div>
			 <div class="button" onclick="location.href='chinese';">
			<p style="font-style:oblique">Chinese</p>
			</div> 
		</div>

		<div class="column">
			<div class="card">
				<div>
					<img src="resources/images/assets/snacks.jpg"
						style="max-width: 100%; height: 223px" />
				</div>
			</div>
			 <div class="button" onclick="location.href='snacks';">
			<p style="font-style:oblique">Snacks</p>
			</div> 
		</div>

		<div class="column">
			<div class="card">
				<div>
					<img src="resources/images/assets/bevarage.jpg"
						style="max-width: 100%; height: 223px" />
				</div>
			</div>
			 <div class="button" onclick="location.href='bevarages';">
			<p style="font-style:oblique">Bevarages</p>
			</div> 
		</div>
		</div>
</body>
</html>