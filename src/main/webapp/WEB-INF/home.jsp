<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<style type="text/css">
body, html {
	height: 100%;
}

.bg {
	background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.2)),
		url('pics/background.jpg');
	/* Place your background image here */
	height: 100%;
	background-position: center;
	background-size: cover;
}

.navbar {
	display: flex;
	justify-content: center;
	align-items: center;
}

.abc {
	display: flex;
	justify-content: center;
	align-items: center;
}

.navbar {
	margin: 50px;
	width: 550px;
}

.navbar-nav {
	justify-content: center;
}

.contentInfo {
	width: 77%;
	margin-left: 100px;
}
</style>
<title>Home page</title>
</head>
<body class="bg">

	<div class="abc">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-center"
					id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="#">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#">About</a></li>
						<li class="nav-item"><a class="nav-link" href="contactUs">Contact</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Events</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Gallery</a></li>
						<li class="nav-item"><a class="nav-link" href="menu">Menu</a></li>
						<form class="d-flex">
							<a class="btn btn-outline-success text-primary"
								href="bookTable" type="submit">Book a table</a>
						</form>
					</ul>
				</div>
			</div>
		</nav>
	</div>


	<div class="container text-center text-white">
		<div class="contentInfo">
			<p class="m-0">Offering discount for couples</p>
			<h1>Come Hungry, Leave Happy</h1>
			<p>Althought the skills are not hard to learn, finding the
				satisfaction and finding fulfillment in continuously serving
				somebody else something good to eat, is what makes a really good
				restaurant</p>
			<a class="btn text-white" href="bookTable"
				style="background-color: #FC6736;">Book a table</a> <a
				class="btn text-white" href="menu"
				style="background-color: #FC6736;">View Menu</a>
		</div>
	</div>



	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>


</body>
</html>