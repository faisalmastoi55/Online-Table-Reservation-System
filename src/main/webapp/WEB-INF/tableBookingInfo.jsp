<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation List</title>
<style type="text/css">
.custom-button {
	display: inline-block;
	padding: 2px 2px;
	background-color: #DCF2F1;
	color: black;
	text-decoration: none;
	border-radius: 5px;
	border: 2px solid #DCF2F1;
	transition: background-color 0.3s;
	cursor: pointer;
}
</style>

<script>
        function confirmDelete(id) {
            if (confirm("Are you sure you want to delete this reservation?")) {
                window.location.href = "/deleteReservation/" + id;
            }
        }
        
     // Function to display success message pop-up
        function showSuccessMessage(message) {
            alert(message);
        }
    </script>

</head>
<body>

	<h2>Reservation List</h2>
	
	<!-- Check for success message and display pop-up if present -->
    <c:if test="${not empty successMessage}">
        <script>
            showSuccessMessage("${successMessage}");
        </script>
    </c:if>

	<table border="1">
		<thead>
			<tr>
				<th>Title</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Nationality</th>
				<th>Phone Number</th>
				<th>Type Of Table</th>
				<th>Purpose</th>
				<th>Meal Plan</th>
				<th>Time</th>
				<th>Date</th>
				<th>Operations</th>

				<!-- Add more table headers as needed -->
			</tr>
		</thead>
		<tbody>
			<c:forEach var="reservation" items="${reservations}">
				<tr>
					<td>${reservation.title}</td>
					<td>${reservation.fname}</td>
					<td>${reservation.lname}</td>
					<td>${reservation.email}</td>
					<td>${reservation.nation}</td>
					<td>${reservation.phone}</td>
					<td>${reservation.table}</td>
					<td>${reservation.purpose}</td>
					<td>${reservation.meal}</td>
					<td>${reservation.tme}</td>
					<td>${reservation.dte}</td>
					<td><a class="custom-button"
						href="updateReservationTable/${reservation.id }">Update</a> <a
						class="custom-button" onclick="confirmDelete(${reservation.id})">Delete</a>
					</td>
					<!-- Add more table cells for other fields -->
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>