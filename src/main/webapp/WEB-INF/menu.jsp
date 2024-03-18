<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu Page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">


<style type="text/css">
body {
	font-family: "Times New Roman", Times, serif;
	margin: 0px;
}

.background-1 {
	background-color: #fee2b3;
	height: 132vh;
}

.background-2 {
	background-color: #A4907C;
	height: 125vh;
}

.background-3 {
	background-color: #BB7D19;
	height: 125vh;
}

.food-card {
	max-width: 300px;
	margin: 20px;
}

.food-card img {
	width: 100%;
	height: 200px;
	object-fit: cover;
	border: 2px solid #fff;
	border-radius: 10px;
}
</style>

</head>
<body>

	<div class="background-1">
		<div class="container">
			<div class="text-center">
				<h1 class="">
					Popular <span style="color: #FF8911">Food</span>
				</h1>
			</div>
			<h1 style="color: #FF8911; margin-left: 30px">BREAKFAST</h1>
			<p class="fw-bolder font-monospace fs-6"
				style="color: gray; margin-left: 30px">SELECT YOUR FAVOURTE MEAL</p>
			<div class="d-flex align-items-center justify-content-center gap-5">
				<div class="food-card">
					<img src="pics/friedEgg.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Fried Egg</div>
						<div style="color: #FF8911">$3.50</div>
					</div>
				</div>
				<div class="food-card">
					<img src="pics/honey.jpeg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Honey & Bans</div>
						<div style="color: #FF8911">$2.50</div>
					</div>
				</div>
				<div class="food-card">
					<img src="pics/chicken.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Chicken Sushi</div>
						<div style="color: #FF8911">$1.00</div>
					</div>
				</div>
			</div>
			<div class="d-flex align-items-center justify-content-center gap-5">
				<div class="food-card">
					<img src="pics/oatmeal.jpeg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Oatmeal</div>
						<div style="color: #FF8911">$2.50</div>
					</div>
				</div>
				<div class="food-card">
					<img src="pics/toast.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Toast</div>
						<div style="color: #FF8911">$1.00</div>
					</div>
				</div>
				<div class="food-card">
					<img src="pics/englishbreakfast.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>English Breakfast</div>
						<div style="color: #FF8911">$3.50</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="background-2">
		<div class="container">
			<h1 style="color: #FF8911; margin-left: 30px">LUNCH</h1>
			<p class="fw-bolder font-monospace fs-6"
				style="color: #8C6A5D; margin-left: 30px">SELECT YOUR FAVOURTE
				LUNCH MEAL</p>
			<div class="d-flex align-items-center justify-content-center gap-5">
				<div class="food-card">
					<img src="pics/firedPotatoes.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Fried Potatoes</div>
						<div style="color: #FF8911">$3.60</div>
					</div>
				</div>
				<div class="food-card">
					<img src="pics/chickenPasta.png" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Chicken & Macaroni</div>
						<div style="color: #FF8911">$2.50</div>
					</div>
				</div>
				<div class="food-card">
					<img src="pics/roastedChicken.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Roasted Chicken</div>
						<div style="color: #FF8911">$9.00</div>
					</div>
				</div>
			</div>
			<div class="d-flex align-items-center justify-content-center gap-5">
				<div class="food-card">
					<img src="pics/spaghetti.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Spaghetti</div>
						<div style="color: #FF8911">$2.50</div>
					</div>
				</div>
				<div class="food-card">
					<img src="pics/salad.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Salad</div>
						<div style="color: #FF8911">$1.00</div>
					</div>
				</div>
				<div class="food-card">
					<img src="pics/noodles.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Noodles</div>
						<div style="color: #FF8911">$2.50</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="background-3">
		<div class="container">
			<h1 style="color: #FF8911; margin-left: 30px">DRINKS</h1>
			<p class="fw-bolder font-monospace fs-6"
				style="color: #8C6A5D; margin-left: 30px">SELECT YOUR FAVOURTE JUICE</p>
			<div class="d-flex align-items-center justify-content-center gap-5">
				<div class="food-card">
					<img src="pics/mango.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Mango Juice</div>
						<div style="color: #FF8911">$2.50</div>
					</div>
				</div>
				<div class="food-card">
					<img src="pics/orangeGrape.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Orange & Grape Juice</div>
						<div style="color: #FF8911">$2.50</div>
					</div>
				</div>
				<div class="food-card">
					<img src="pics/strawberryjuice.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Strawberry Juice</div>
						<div style="color: #FF8911">$9.00</div>
					</div>
				</div>
			</div>
			<div class="d-flex align-items-center justify-content-center gap-5">
				<div class="food-card">
					<img src="pics/beer.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Beer</div>
						<div style="color: #FF8911">$9.50</div>
					</div>
				</div>
				<div class="food-card">
					<img src="pics/chocolatemilk.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Chocolate Milk</div>
						<div style="color: #FF8911">$8.00</div>
					</div>
				</div>
				<div class="food-card">
					<img src="pics/apple.jpg" alt="Food 1">
					<div class="text-center" style="padding: 16px;">
						<div>Apple Juice</div>
						<div style="color: #FF8911">$3.50</div>
					</div>
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