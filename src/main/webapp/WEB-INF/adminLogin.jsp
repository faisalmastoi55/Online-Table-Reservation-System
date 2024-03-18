<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login User</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	font-family: "Nunito", sans-serif;
	line-height: 1.6;
	background-color: #fee2b3;
	overflow-x: hidden;
	font-size: 16px;
	color: #333;
}

.registerbtn {
	background-color: #4CAF50;
	color: white;
	padding: 12px 16px;
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
					style="height: 400px">
					<div class="col-md-4 col-sm-4">
						<div class="panel panel-primary">
							<div class="panel-heading" align="center">Admin Login Page</div>
							<div class="panel-body">

								<form action="adminlogin" name="form" method="post">
									<div class="imgcontainer" align="center">
										<img src="pics/aa.png" alt="Avatar" class="avatar"
											style="width: 200px; height: 200px">
									</div>
									<div class="form-group">
										<label>Email</label> <input type="text" name="email"
											placeholder=" Please Enter Your Email " class="form-control"
											required>
									</div>
									<div class="form-group">
										<label>Password</label> <input name="pass" type="text"
											placeholder=" Please Enter Your Password"
											class="form-control" required>
									</div>
									<c:if test="${not empty error }">
										<h5 class="text-danger">${error }</h5>
										<c:remove var="error" />
									</c:if>
									<button type="submit" class="registerbtn">Login</button>
								</form>
								<div>
									<p>
										Don't have an account? <a href="adminSignup"> Sign Up</a>.
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