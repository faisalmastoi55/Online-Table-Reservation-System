<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">


<style type="text/css">
body {
	font-family: "Times New Roman", Times, serif;
}

.sidenav {
	background: #EBF3E8;
	position: fixed;
	height: 100%;
	width: 20%;
	top: 0;
	left: 0;
	z-index: 1;
	overflow-x: hidden;
	padding-top: 20px;
}

.sidenav a {
	padding: 3px;
	margin-left: 10px;
	font-size: 17px;
	display: block;
}

.sidenav .a:hover {
	background: green;
	color: white;
}

.main {
	margin-left: 20%;
	color: #fff;
}

.profile {
	width: 100%;
	height: 40vh;
	background-color: #35374B;
}

.profile-1 {
	width: 100%;
	height: 25vh;
	margin-top: 50px;
	background-color: #A9A9A9;
}

.img {
	width: 30%;
	height: 80px;
	margin-left: 30px;
	object-fit: cover;
}

.img2 {
	width: 60%;
	height: 75vh;
	margin-left: 10px;
	object-fit: cover;
	border-radius: 2%;
}

.img3 {
	width: 98%;
	height: 75vh;
	margin-left: 10px;
	object-fit: cover;
	border-radius: 2%;
}

/*Making responsive*/
@media screen and (max-width: 600px) {
	.sidenav {
		padding-top: 15px;
		width: 155px;
	}
	.sidenav a {
		padding-left: 20px;
		font-size: 18px;
	}
	.main {
		margin-left: 32%;
		font-size: 15px;
	}
	p {
		display: inline-block;
	}
}
</style>

</head>
<body>

	<div class="sidenav">
		<div class="container">
			<div class="profile">
				<img src="pics/profile.jpg" class="img mt-4" alt="Food 1">
				<h5 class="text-secondary mt-2 ms-4">Admin</h5>
				<h5 class="text-secondary ms-4">Online Service</h5>
			</div>

			<a class="a text-dark mt-3" style="text-decoration: none"
				href="adminHome">Home</a> <a class="a text-dark"
				style="text-decoration: none" href="">News</a> <a
				class="a text-dark" style="text-decoration: none"
				href="notificationInfo">Feedbacks</a> <a class="a text-dark"
				style="text-decoration: none" href="adminSignup">Add New Admin</a> <a
				class="a text-dark" style="text-decoration: none" href="">Share
				Schedule</a>

			<div class="profile-1">
				<a href="bookTable">Book a table</a> <a href="menu">View Menu</a> <a
					href="tableBookingInfo">View Booked Table</a> <a
					href="notificationInfo">Notification</a>
			</div>
		</div>
	</div>

	<div class="main">
		<div class="container">
			<div class="row">
				<div class="col-sm-5 col-md-6">
					<img src="pics/calender.png" class="img2 mt-4" alt="Food 1">
					<img src="pics/calender.png" class="img2 mt-4" alt="Food 1">
				</div>
				<div class="col-sm-5 offset-sm-2 col-md-6 offset-md-0" style="margin-top: 100px">
					<img src="pics/capture.png" class="img3" alt="Food 1">
				</div>
			</div>
		</div>
	</div>

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>