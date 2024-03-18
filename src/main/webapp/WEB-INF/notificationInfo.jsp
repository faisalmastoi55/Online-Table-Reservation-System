<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>Notification List</h2>

	<table border="1">
		<thead>
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Subject</th>
				<th>Message</th>

				<!-- Add more table headers as needed -->
			</tr>
		</thead>
		<tbody>
			<c:forEach var="notification" items="${notifications}">
				<tr>
					<td>${notification.name}</td>
					<td>${notification.email}</td>
					<td>${notification.subject}</td>
					<td>${notification.message}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>