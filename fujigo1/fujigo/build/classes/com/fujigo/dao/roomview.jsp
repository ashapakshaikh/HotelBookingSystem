<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Room View</title>
</head>
<body>

	<table>
		<tr>
			<th>RoomId</th>
			<th>Roomtype</th>
			<th>Roomprice</th>
			<th>Availability</th>
			<th>Hotelid</th>
		</tr>
		<p:forEach var="rl" items="${sessionScope.roomList}">
			<tr>
				<td> ${rl.roomId} </td>
				<td> ${rl.roomType} </td>
				<td> ${rl.roomprice} </td>
				<td> ${rl.availability} </td>
				<td> ${rl.hotel} </td>
				
				<td><a
					href="edit?roomId=${rl.roomId}
					&roomtype=${rl.roomType}
					&roomprice=${rl.roomprice}
					&availability=${rl.availability}
					&hotelid=${rl.hotel}">Edit</a></td>
					
				<td><a href="delete?roomId=${rl.roomId}
				&roomtype=${rl.roomType}
				&roomprice=${rl.roomprice}
				&availability=${rl.availability}
				&hotelid=${rl.hotel}">Delete</a></td>

			</tr>
		</p:forEach>

	</table>






</body>
</html>






</body>
</html>