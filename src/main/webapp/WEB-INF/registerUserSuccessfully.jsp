<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Successfully</title>
</head>
<body>

	<h5>You've successfully registered!</h5>

	<table border="1">
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>E-Mail</th>
				<th>Phone Number</th>
				<th>Password</th>
				<th>Confirm_Password</th>

				<!-- Add more table headers as needed -->
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${registerData.fName}</td>
				<td>${registerData.lName}</td>
				<td>${registerData.email}</td>
				<td>${registerData.phone}</td>
				<td>${registerData.pass}</td>
				<td>${registerData.psw}</td>
			</tr>
		</tbody>
	</table>

	<h5>
		Please <a href="loginUser">Login</a> to continue!.
	</h5>


</body>
</html>