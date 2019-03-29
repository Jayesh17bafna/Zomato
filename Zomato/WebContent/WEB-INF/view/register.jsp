<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="UTF-8">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
.background_form {
	background: -webkit-linear-gradient(top, #7579ff, #b224ef);
}

.card-header-text {
	text-align: center;
}
</style>
</head>
<body
	style="background-image: url(http://blog.hostbaby.com/wp-content/uploads/2013/07/scuffedstatic_red_1920x1234.jpg)">


	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header card-header-text">REGISTRATION</div>
					<div class="card-body background_form">

						<form class="form-horizontal" method="post" action="saveUser"
							modelAttribute="user" name="myform"
							onsubmit="return validateform()">

							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label">User
									Id</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="uid" id="uid"
											placeholder="Enter your Id" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label">Your
									fname</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="fname" id="fname"
											placeholder="Enter your fname" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label">Your
									lname</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="lname" id="lname"
											placeholder="Enter your lname" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="email" class="cols-sm-2 control-label">Your
									Email</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="email" id="email"
											placeholder="Enter your Email" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="username" class="cols-sm-2 control-label">Username</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-users fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="username"
											id="username" placeholder="Enter your Username" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="cols-sm-2 control-label">Password</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
											type="password" class="form-control" name="password"
											id="password" placeholder="Enter your Password" />
									</div>
								</div>
							</div>

							<div class="form-group ">
								<button type="submit"
									class="btn btn-primary btn-lg btn-block login-button">Register</button>
							</div>
							<div class="login-register">
								<a href="login">Login</a>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script>
		function validateform() {
			var fame = document.myform.fname.value;
			var password = document.myform.password.value;
			var lname = document.myform.lname.value;
			var uid = document.myform.uid.value;
			var username = document.myform.username.value;
			var email = document.myform.email.value;
			var decimal = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;

			if (fname == "" || lname == "" || email == "" || password == ""
					|| uid == "" || username == "") {
				alert("Any field cannot be left blank!!!");
				return false;
			} else if (!(password.match(decimal))) {
				alert("Password must contain 1 uppercase , lowercase , number and specialcharacter");
				return false;
			}
		}
	</script>


</body>
</html>