<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.registerbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.signin {
	background-color: #f1f1f1;
	text-align: center;
}
</style>

</head>
<body>
	<div id="wrapper" class="container">
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row align-items-center justify-content-center"
					style="height: 300px">
					<div class="col-md-5 col-sm-5">
						<div class="panel panel-primary">
							<div class="panel-heading" align="center">Sign Up Please</div>
							<div class="panel-body">
								<form action="reg" name="form" method="post">

									<div class="form-group">
										<label>First Name</label> <input type="text" name="fName"
											placeholder=" Please Enter Your First Name"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Last Name</label> <input type="text" name="lName"
											placeholder=" Please Enter Your Last Name "
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Email</label> <input type="text" name="email"
											placeholder=" Please Enter Your Email " class="form-control"
											required>
									</div>
									<div class="form-group">
										<label>Phone Number</label> <input type="text" name="phone"
											placeholder=" Please Enter Your Phone Number "
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Password</label> <input name="pass" type="text"
											placeholder=" Please Enter Your Password"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Confirm Password</label> <input type="text" name="psw"
											placeholder=" Please Enter Your Confirm Password "
											class="form-control" required>
									</div>
									<c:if test="${not empty failed }">
										<h5 class="text-danger">${failed }</h5>
										<c:remove var="failed" />
									</c:if>
									<hr>
									<p>
										By creating an account you agree to our <a href="#">Terms
											& Privacy</a>.
									</p>

									<button type="submit" class="registerbtn">Register</button>
								</form>
								<div>
									<p>
										Already have an account? <a href="loginUser">Sign In</a>.
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>