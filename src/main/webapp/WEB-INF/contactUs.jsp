<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us Page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.2/css/fontawesome.min.css"
	integrity="sha384-BY+fdrpOd3gfeRvTSMT+VUZmA728cfF9Z2G42xpaRkUGu2i3DyzpTURDo5A6CaLK"
	crossorigin="anonymous">

<style type="text/css">
body {
	background-color: black;
	color: white;
	margin: 0px;
}

.abc {
	font-family: "Times New Roman", Times, serif;
	color: white;
}

.contactInfo {
	width: 75%;
	display: flex;
	flex-direction: column;
}

.box {
	position: relative;
	padding: 5px 0;
	display: flex;
}

.icon {
	min-width: 40px;
	height: 40px;
	margin-left: 120px;
	background: #FDBF60;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 50%;
	font-size: 20px
}

.text {
	display: flex;
	margin-left: 20px;
	font-size: 14px;
	color: #fff;
	flex-direction: column;
	font-weight: 300;
}

h3 {
	font-weight: 500;
	font-size: 18px;
}

button {
	height: 2em;
	width: 9em;
	border: none;
	border-radius: 10em;
	font-size: 17px;
	color: #ffffff;
	font-family: inherit;
	font-weight: 500;
}

.bg {
	background: black;
	color: white;
}
</style>

</head>
<body>

	<div class="container mb-5 abc">
		<h5 class="mt-5">CONTACT</h5>
		<h2 style="color: #FDBF60">CONTACT US</h2>
	</div>

	<iframe
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3024.3404958029055!2d-74.00797822860012!3d40.71052027566105!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a22a3bda30d%3A0xb89d1fe6bc499443!2sDowntown%20Conference%20Center!5e0!3m2!1sen!2s!4v1710534918540!5m2!1sen!2s"
		width="100%" height="350" style="border: 0;" allowfullscreen=""
		loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>


	<div class="container mt-5">
		<div class="row">
			<div class="col-sm-5 col-md-6">
				<div class="contactInfo">
					<div class="box">
						<div class="icon"></div>
						<div class="text">
							<h3>Address:</h3>
							<p>157 William St, New York, NY 10038, United States</p>
						</div>
					</div>
					<div class="box">
						<div class="icon"></div>
						<div class="text">
							<h3>Open Hours</h3>
							<p class="mb-0">Monday-Sunday:</p>
							<p>08:00-23:00</p>
						</div>
					</div>
					<div class="box">
						<div class="icon"></div>
						<div class="text">
							<h3>Email:</h3>
							<p>Shepherdchikomana@outlook.com</p>
						</div>
					</div>
					<div class="box">
						<div class="icon"></div>
						<div class="text">
							<h3>Call:</h3>
							<p>+8613062825180</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-5 offset-sm-2 col-md-6 offset-md-0">
				<form action="notification" method="post">
					<div class="mb-3 d-flex gap-3">
						<input type="text" class="form-control w-50 bg" name="name"
							placeholder="Your Name" required> 
						<input type="email"
							class="form-control w-50 bg" name="email" placeholder="Your Email" required>
					</div>
					<div class="mb-3">
						<input type="text" class="form-control bg" name="subject"
							placeholder="Subject" required>
					</div>
					<div class="mb-3">
						<textarea class="form-control bg" name="message" rows="7"
							placeholder="Message" required></textarea>
					</div>
					<div class="text-center">
						<button type="submit" style="background-color: #FDBF60">Send
							Message</button>
					</div>
				</form>
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